import "dart:async";
import "dart:developer";

import "package:android_id/android_id.dart";
import "package:flutter_appauth/flutter_appauth.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:vp_kuljetus_driver_app/app/env.gen.dart";
import "package:vp_kuljetus_driver_app/models/authentication/authentication.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";

part "app_authentication_providers.g.dart";

const serviceConfiguration = AuthorizationServiceConfiguration(
  authorizationEndpoint:
      "${Env.keycloakUrl}/realms/${Env.keycloakRealm}/protocol/openid-connect/auth",
  tokenEndpoint:
      "${Env.keycloakUrl}/realms/${Env.keycloakRealm}/protocol/openid-connect/token",
  endSessionEndpoint:
      "${Env.keycloakUrl}/realms/${Env.keycloakRealm}/protocol/openid-connect/logout",
);

@Riverpod(keepAlive: true)
class AppAuthNotifier extends _$AppAuthNotifier {
  late final StreamController<AuthenticationState?> _controller;
  final FlutterAppAuth _appAuth = const FlutterAppAuth();

  @override
  Stream<AuthenticationState?> build() {
    _controller = StreamController<AuthenticationState?>();
    state = const AsyncData(null);
    ref.onDispose(() {
      _controller.close();
    });
    return _controller.stream;
  }

  Future<AuthenticationState?> loginAsEmployee() async {
    final deviceId = await AndroidId().getId();
    final result = await _appAuth.authorizeAndExchangeCode(
      AuthorizationTokenRequest(
        Env.keycloakClientId,
        "fi.metatavu.vp.kuljetus.driver.app:/employee",
        serviceConfiguration: serviceConfiguration,
        scopes: ["openid", "profile", "email", "offline_access"],
        additionalParameters: {"kc_idp_hint": "pin-code-authentication"},
        loginHint: "device-id:$deviceId",
        clientSecret: Env.keycloakClientSecret,
      ),
    );
    await setLastStartedSessionType(SessionType.terminal);
    tmsApi.setBearerAuth("BearerAuth", result.accessToken ?? "");
    final sessionStartedAt = DateTime.now().millisecondsSinceEpoch;

    final tokenParsed = AuthenticationState.fromTokenResponse(result);
    final shiftStartedAt =
        (await tmsApi.getEmployeeWorkShiftsApi().listEmployeeWorkShifts(
          employeeId: tokenParsed.accessToken.sub,
          first: 0,
          max: 1,
        )).data?.firstOrNull?.startedAt?.toUtc().millisecondsSinceEpoch;

    await store.setInt(
      sessionStartedTimestampStoreKey,
      shiftStartedAt ?? sessionStartedAt,
    );
    state = AsyncData(tokenParsed);
    return tokenParsed;
  }

  Future<AuthenticationState?> loginAsDriver(final String truckId) async {
    final deviceId = await AndroidId().getId();
    final result = await _appAuth.authorizeAndExchangeCode(
      AuthorizationTokenRequest(
        Env.keycloakClientId,
        "fi.metatavu.vp.kuljetus.driver.app:/vehicle",
        serviceConfiguration: serviceConfiguration,
        scopes: ["openid", "profile", "email", "offline_access"],
        additionalParameters: {"kc_idp_hint": "driver-card-authentication"},
        loginHint: "truck-id:$truckId",
        clientSecret: Env.keycloakClientSecret,
      ),
    );
    await setLastStartedSessionType(SessionType.driver);
    tmsApi.setBearerAuth("BearerAuth", result.accessToken ?? "");
    final sessionStartedAt = DateTime.now().millisecondsSinceEpoch;
    await store.setInt(sessionStartedTimestampStoreKey, sessionStartedAt);
    final tokenParsed = AuthenticationState.fromTokenResponse(result);
    state = AsyncData(tokenParsed);

    final logoutViaCardRemovalInterval = Timer.periodic(
      const Duration(seconds: 10),
      _handleLogoutIfCardIsRemoved,
    );
    ref.onDispose(logoutViaCardRemovalInterval.cancel);
    return tokenParsed;
  }

  Future<void> _handleLogoutIfCardIsRemoved(final Timer timer) async {
    final truckId = store.getString(lastSelectedTruckIdStoreKey);
    if (truckId == null || state.value?.accessToken == null) return;
    final driverCardsResponse = await tmsApi
        .getTrucksApi()
        .listTruckDriverCards(truckId: truckId);

    if (driverCardsResponse.statusCode != 200) {
      log("Failed to list driver cards: ${driverCardsResponse.statusCode}");
      return;
    }

    if (driverCardsResponse.data!.isEmpty) await logout();
  }

  Future<void> logout() async {
    final idToken = state.value?.idToken;
    if (idToken == null) {
      log("No idToken found, skipping logout");
      return;
    }

    try {
      await _appAuth.endSession(
        EndSessionRequest(
          idTokenHint: idToken,
          serviceConfiguration: serviceConfiguration,
          postLogoutRedirectUrl: "fi.metatavu.vp.kuljetus.driver.app:/login",
        ),
      );
      log("Logged out successfully");
    } catch (e) {
      log("Failed to logout: $e");
    } finally {
      state = const AsyncData(null);
      tmsApi.setBearerAuth("BearerAuth", "");
    }
  }
}
