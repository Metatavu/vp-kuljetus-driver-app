import "dart:async";
import "dart:developer";

import "package:android_id/android_id.dart";
import "package:flutter_appauth/flutter_appauth.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/app/env.gen.dart";
import "package:vp_kuljetus_driver_app/models/authentication/authentication.dart";
import "package:vp_kuljetus_driver_app/providers/app_authentication/authentication_store_utilities.dart";
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
  final FlutterAppAuth _appAuth = const FlutterAppAuth();
  Timer? _keepAliveTimer;

  @override
  Future<AuthenticationState?> build() async {
    ref.onDispose(_stopKeepAliveTimer);

    final storedRefreshToken = await readStoredRefreshToken();
    if (storedRefreshToken == null) return null;

    try {
      final authState = await _refreshAuthState(storedRefreshToken);
      tmsApi.setBearerAuth("BearerAuth", authState.accessTokenRaw);
      await putStoredRefreshToken(authState.refreshToken);
      _startKeepAliveTimer();
      return authState;
    } catch (error) {
      log("Failed to refresh token from stored refresh token: $error");
      await clearStoredRefreshToken();
      return null;
    }
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

    await storeLastSessionType(SessionType.terminal);

    final tokenParsed = AuthenticationState.fromTokenResponse(result);
    await _handleSuccessfulLoginResponse(tokenParsed);

    return tokenParsed;
  }

  Future<AuthenticationState?> loginAsDriver(final String truckId) async {
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

    await storeLastSessionType(SessionType.driver);

    final tokenParsed = AuthenticationState.fromTokenResponse(result);
    await _handleSuccessfulLoginResponse(tokenParsed);

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
    try {
      final idToken = state.value?.idToken;
      if (idToken != null) {
        await _appAuth.endSession(
          EndSessionRequest(
            idTokenHint: idToken,
            serviceConfiguration: serviceConfiguration,
            postLogoutRedirectUrl: "fi.metatavu.vp.kuljetus.driver.app:/login",
          ),
        );
      }
      log("Logged out successfully");
    } catch (e) {
      log("Failed to logout: $e");
    } finally {
      tmsApi.setBearerAuth("BearerAuth", "");
      await clearStoredRefreshToken();
      _stopKeepAliveTimer();
      state = const AsyncData(null);
    }
  }

  Future<AuthenticationState> _handleSuccessfulLoginResponse(
    final AuthenticationState tokenParsed,
  ) async {
    final now = DateTime.now();
    tmsApi.setBearerAuth("BearerAuth", tokenParsed.accessTokenRaw);
    await _setSessionStartedAtTimestamp(tokenParsed, fallbackTime: now);
    await putStoredRefreshToken(tokenParsed.refreshToken);
    _startKeepAliveTimer();
    state = AsyncData(tokenParsed);
    return tokenParsed;
  }

  Future<void> _setSessionStartedAtTimestamp(
    final AuthenticationState tokenParsed, {
    required final DateTime fallbackTime,
  }) async {
    final fallbackInMillis = fallbackTime.millisecondsSinceEpoch;

    late final EmployeeWorkShift? lastWorkShift;
    try {
      final response = await tmsApi
          .getEmployeeWorkShiftsApi()
          .listEmployeeWorkShifts(
            employeeId: tokenParsed.accessToken.sub,
            first: 0,
            max: 1,
          );

      lastWorkShift = response.data!.firstOrNull;
    } catch (e) {
      log("Error while fetching last work shift: $e");
      await store.setInt(sessionStartedTimestampStoreKey, fallbackInMillis);
      return;
    }

    final lastWorkShiftStartedAt = lastWorkShift?.startedAt;
    final lastWorkShiftEndedAt = lastWorkShift?.endedAt;

    if (lastWorkShift == null) {
      log(
        "No previous work shifts found for user ${tokenParsed.accessToken.sub}",
      );
      await store.setInt(sessionStartedTimestampStoreKey, fallbackInMillis);
      return;
    }

    if (lastWorkShiftStartedAt == null) {
      log("Last work shift has no startedAt, should not happen");
      await store.setInt(sessionStartedTimestampStoreKey, fallbackInMillis);
      return;
    }

    if (lastWorkShiftEndedAt != null) {
      log("Last work shift already ended at $lastWorkShiftEndedAt");
      await store.setInt(sessionStartedTimestampStoreKey, fallbackInMillis);
      return;
    }

    await store.setInt(
      sessionStartedTimestampStoreKey,
      lastWorkShiftStartedAt.toUtc().millisecondsSinceEpoch,
    );
  }

  Future<AuthenticationState> _refreshAuthState(
    final String refreshToken,
  ) async {
    final result = await _appAuth.token(
      TokenRequest(
        Env.keycloakClientId,
        "fi.metatavu.vp.kuljetus.driver.app:/",
        refreshToken: refreshToken,
        serviceConfiguration: serviceConfiguration,
        clientSecret: Env.keycloakClientSecret,
        grantType: "refresh_token",
      ),
    );

    return AuthenticationState.fromTokenResponse(result);
  }

  Future<void> _keepSessionAlive() async {
    final currentState = state.valueOrNull;

    final sessionStillAlive =
        currentState?.expiresIn(const Duration(minutes: 1)) == false;
    if (sessionStillAlive) return;

    final storedRefreshToken = await readStoredRefreshToken();
    if (currentState == null && storedRefreshToken == null) {
      log(
        "_keepSessionAlive: No previous auth or stored refresh token found, session lost",
      );
      _stopKeepAliveTimer();
      return;
    }

    if (currentState != null) {
      try {
        final newState = await _refreshAuthState(currentState.refreshToken);
        tmsApi.setBearerAuth("BearerAuth", newState.accessTokenRaw);
        await putStoredRefreshToken(newState.refreshToken);
        return;
      } catch (error) {
        log(
          "_keepSessionAlive: Failed to refresh token with current auth state: $error",
        );
      }
    }

    if (storedRefreshToken != null) {
      try {
        final newState = await _refreshAuthState(storedRefreshToken);
        tmsApi.setBearerAuth("BearerAuth", newState.accessTokenRaw);
        await putStoredRefreshToken(newState.refreshToken);
        return;
      } catch (error) {
        log(
          "_keepSessionAlive: Failed to refresh token with stored refresh token: $error",
        );
      }
    }

    if (currentState != null && !currentState.isExpired) {
      log(
        "_keepSessionAlive: Could not refresh session but current auth state is still valid, keeping current state",
      );
      return;
    }

    log(
      "_keepSessionAlive: Could not refresh session and current auth state is already expired, clearing auth state",
    );

    state = const AsyncData(null);
    tmsApi.setBearerAuth("BearerAuth", "");
    await clearStoredRefreshToken();
    _stopKeepAliveTimer();
  }

  void _startKeepAliveTimer() {
    _stopKeepAliveTimer();
    _keepAliveTimer = Timer.periodic(
      const Duration(seconds: 5),
      (_) => _keepSessionAlive(),
    );
  }

  void _stopKeepAliveTimer() {
    _keepAliveTimer?.cancel();
    _keepAliveTimer = null;
  }
}
