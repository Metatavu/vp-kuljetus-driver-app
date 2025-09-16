import "dart:async";
import "dart:developer";

import "package:android_id/android_id.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:oidc/oidc.dart";
import "package:oidc_default_store/oidc_default_store.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/app/env.gen.dart";
import "package:vp_kuljetus_driver_app/models/authentication/authentication.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";

part "authentication_providers.g.dart";

final authManager = OidcUserManager.lazy(
  discoveryDocumentUri: OidcUtils.getOpenIdConfigWellKnownUri(
    Uri.parse("${Env.keycloakUrl}/realms/${Env.keycloakRealm}"),
  ),
  clientCredentials: const OidcClientAuthentication.clientSecretPost(
    clientId: Env.keycloakClientId,
    clientSecret: Env.keycloakClientSecret,
  ),
  store: OidcDefaultStore(),
  settings: OidcUserManagerSettings(
    display: "touch",
    scope: [
      OidcConstants_Scopes.openid,
      OidcConstants_Scopes.profile,
      OidcConstants_Scopes.email,
    ],
    redirectUri: Uri.parse("fi.metatavu.vp.kuljetus.driver.app:/vehicle"),
    postLogoutRedirectUri: Uri.parse(
      "fi.metatavu.vp.kuljetus.driver.app:/login",
    ),
    prompt: [OidcConstants_AuthorizeRequest_Prompt.login],
  ),
);

Future<void> initAuthProvider() async {
  await authManager.init();
}

@Riverpod(keepAlive: true)
class AuthNotifier extends _$AuthNotifier {
  @override
  Stream<OidcUser?> build() {
    final userChangesStream = authManager.userChanges();

    final apiAuthSubscription = userChangesStream.listen((final user) {
      tmsApi.setBearerAuth("BearerAuth", user?.token.accessToken ?? "");
    });

    ref.onDispose(apiAuthSubscription.cancel);

    return userChangesStream;
  }

  Future<OidcUser?> login(final PublicTruck? truck) async {
    OidcUser? oidcUser;
    if (truck != null) {
      oidcUser = await _loginTruck(truck);
    } else {
      oidcUser = await _loginEmployee();
    }

    final sessionStartedAt = DateTime.now().millisecondsSinceEpoch;
    final shiftStartedAt =
        (await tmsApi.getEmployeeWorkShiftsApi().listEmployeeWorkShifts(
          employeeId: oidcUser?.userInfo["sub"] as String,
          first: 0,
          max: 1,
        )).data?.firstOrNull?.startedAt?.toUtc().millisecondsSinceEpoch;

    await store.setInt(
      sessionStartedTimestampStoreKey,
      shiftStartedAt ?? sessionStartedAt,
    );
    return oidcUser;
  }

  Future<OidcUser?> _loginTruck(final PublicTruck truck) async {
    try {
      final oidcUser = await authManager.loginAuthorizationCodeFlow(
        extraParameters: {"kc_idp_hint": "driver-card-authentication"},
        loginHint: "truck-id:${truck.id}",
        redirectUriOverride: Uri.parse(
          "fi.metatavu.vp.kuljetus.driver.app:/vehicle",
        ),
      );

      final logoutViaCardRemovalInterval = Timer.periodic(
        const Duration(seconds: 10),
        _handleLogoutIfCardIsRemoved,
      );
      ref.onDispose(logoutViaCardRemovalInterval.cancel);
      await setLastStartedSessionType(SessionType.driver);

      return oidcUser;
    } catch (error) {
      inspect(error);
      log(
        "Failed to login to truck ${truck.name} (ID ${truck.id}, VIN ${truck.vin})",
        error: error,
      );
    }
    return null;
  }

  Future<OidcUser?> _loginEmployee() async {
    try {
      final deviceId = await const AndroidId().getId();
      final oidcUser = await authManager.loginAuthorizationCodeFlow(
        extraParameters: {"kc_idp_hint": "pin-code-authentication"},
        loginHint: "device-id:$deviceId",
        redirectUriOverride: Uri.parse(
          "fi.metatavu.vp.kuljetus.driver.app:/employee",
        ),
      );

      await setLastStartedSessionType(SessionType.terminal);

      return oidcUser;
    } catch (error) {
      log("Failed to login as employee with deviceId: ", error: error);
    }
    return null;
  }

  Future<void> logout() async {
    try {
      await authManager.logout();
    } catch (error) {
      log("Failed to logout", error: error);
    }
  }

  Future<void> _handleLogoutIfCardIsRemoved(final Timer timer) async {
    final truckId = store.getString(lastSelectedTruckIdStoreKey);

    if (truckId == null || state.value?.userInfo == null) return;

    final driverCardsResponse = await tmsApi
        .getTrucksApi()
        .listTruckDriverCards(truckId: truckId);

    if (driverCardsResponse.statusCode != 200) {
      log("Failed to list driver cards: ${driverCardsResponse.statusCode}");
      return;
    }

    if (driverCardsResponse.data!.isEmpty) await logout();
  }
}

@riverpod
String? accessToken(final Ref ref) =>
    ref.watch(authNotifierProvider).valueOrNull?.token.accessToken;

@riverpod
UserInfo? userInfo(final Ref ref) {
  final userInfo = ref.watch(authNotifierProvider).valueOrNull?.userInfo;
  return userInfo != null ? UserInfo.fromJson(userInfo) : null;
}
