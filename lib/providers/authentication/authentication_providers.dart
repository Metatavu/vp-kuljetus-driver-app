import "dart:async";
import "dart:developer";

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
    postLogoutRedirectUri:
        Uri.parse("fi.metatavu.vp.kuljetus.driver.app:/vehicle"),
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

    final logoutViaCardRemovalInterval = Timer.periodic(
      const Duration(seconds: 10),
      _handleLogoutIfCardIsRemoved,
    );

    ref.onDispose(apiAuthSubscription.cancel);
    ref.onDispose(logoutViaCardRemovalInterval.cancel);

    return userChangesStream;
  }

  Future<void> login(final PublicTruck? truck) async {
    if (truck != null) {
      await _login(truck);
    } else {
      await _loginEmployee();
    }

    final sessionStartedAt = DateTime.now().millisecondsSinceEpoch;
    await store.setInt(sessionStartedTimestampStoreKey, sessionStartedAt);
  }

  Future<void> _login(final PublicTruck truck) async {
    try {
      await authManager.loginAuthorizationCodeFlow(loginHint: "truck-id:${truck.id}");
    } catch (error) {
      log("Failed to login to truck ${truck.name} (ID ${truck.id}, VIN ${truck.vin})", error: error);
    }
  }

  Future<void> _loginEmployee() async {
    try {
      // TODO: Implement PIN-code login flow.
      await authManager.loginPassword(username: Env.overrideLoginUsername, password: Env.overrideLoginPassword);
    } catch (error) {
      log("Failed to login as employee", error: error);
    }
  }

  Future<void> logout() async => authManager.logout();

  Future<void> _handleLogoutIfCardIsRemoved(final Timer timer) async {
    final truckId = store.getString(lastSelectedTruckIdStoreKey);

    if (truckId == null || state.value?.userInfo == null) return;

    final driverCardsResponse =
        await tmsApi.getTrucksApi().listTruckDriverCards(truckId: truckId);

    if (driverCardsResponse.statusCode != 200) {
      log("Failed to list driver cards: ${driverCardsResponse.statusCode}");
      return;
    }

    if (driverCardsResponse.data!.isEmpty) await logout();
  }
}

@riverpod
String? accessToken(final AccessTokenRef ref) =>
    ref.watch(authNotifierProvider).valueOrNull?.token.accessToken;

@riverpod
UserInfo? userInfo(final UserInfoRef ref) {
  final userInfo = ref.watch(authNotifierProvider).valueOrNull?.userInfo;
  return userInfo != null ? UserInfo.fromJson(userInfo) : null;
}
