import "dart:async";
import "dart:developer";

import "package:android_id/android_id.dart";
import "package:flutter_appauth/flutter_appauth.dart";
import "package:flutter_secure_storage/flutter_secure_storage.dart";
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
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  Timer? _refreshTimer;

  @override
  Stream<AuthenticationState?> build() {
    _controller = StreamController<AuthenticationState?>();
    state = const AsyncData(null);
    ref.onDispose(() {
      _controller.close();
      _refreshTimer?.cancel();
    });
    return _controller.stream;
  }

  void _stopRefreshTimer() {
    _refreshTimer?.cancel();
    _refreshTimer = null;
  }

  Future<AuthenticationState> _doCommonLoginActions(
    final AuthorizationTokenResponse result,
  ) async {
    tmsApi.setBearerAuth("BearerAuth", result.accessToken ?? "");

    final tokenParsed = AuthenticationState.fromTokenResponse(result);
    final shiftStartedAt =
        (await tmsApi.getEmployeeWorkShiftsApi().listEmployeeWorkShifts(
          employeeId: tokenParsed.accessToken.sub,
          first: 0,
          max: 1,
        )).data?.firstOrNull?.startedAt?.toUtc().millisecondsSinceEpoch;
    final sessionStartedAt = DateTime.now().millisecondsSinceEpoch;

    await store.setInt(
      sessionStartedTimestampStoreKey,
      shiftStartedAt ?? sessionStartedAt,
    );
    await store.setInt(sessionStartedTimestampStoreKey, sessionStartedAt);
    await _storeRefreshToken(result.refreshToken!);
    await _storeRefreshTokenStoringTime();
    _startRefreshTimer();
    state = AsyncData(tokenParsed);
    return tokenParsed;
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
    await _storeLastSessionType(SessionType.terminal);

    final tokenParsed = await _doCommonLoginActions(result);

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
    await _storeLastSessionType(SessionType.driver);

    final tokenParsed = await _doCommonLoginActions(result);
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
      await _clearRefreshTokenStoringTime();
      await _clearStoredRefreshToken();
      _stopRefreshTimer();
      state = const AsyncData(null);
    }
  }

  Future<void> refreshToken(final String refreshToken) async {
    try {
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

      final tokenParsed = AuthenticationState.fromTokenResponse(result);
      tmsApi.setBearerAuth("BearerAuth", result.accessToken ?? "");
      await _storeRefreshToken(result.refreshToken!);
      await _storeRefreshTokenStoringTime();
      state = AsyncData(tokenParsed);
    } catch (e) {
      await logout();
    }
  }

  Future<void> _checkAndUpdateToken() async {
    final authValue = state.valueOrNull;

    if (authValue == null) {
      log("_checkAndUpdateToken: No auth state, stopping refresh timer");
      _stopRefreshTimer();
      return;
    }

    final isCurrentTokenAboutToExpire = state.requireValue!.expiresIn(
      const Duration(minutes: 1),
    );
    final refreshTokenStoredAt = await readRefreshTokenStoringTime();
    if (refreshTokenStoredAt != null) {
      final refreshTokenAgeMilliseconds =
          DateTime.now().millisecondsSinceEpoch - refreshTokenStoredAt;
      final refreshTokenAgeMinutes = Duration(
        milliseconds: refreshTokenAgeMilliseconds,
      ).inMinutes;
      if (!isCurrentTokenAboutToExpire && refreshTokenAgeMinutes < 239) {
        return;
      }
    }

    final storedRefreshToken = await readRefreshToken();

    if (storedRefreshToken == null || state.requireValue!.isExpired) {
      log(
        "_checkAndUpdateToken: No refresh token found in storage or token already expired, clearing auth state",
      );
      state = const AsyncData(null);
      tmsApi.setBearerAuth("BearerAuth", "");

      _stopRefreshTimer();
      return;
    }

    await refreshToken(storedRefreshToken);
  }

  void _startRefreshTimer() {
    _stopRefreshTimer();
    _refreshTimer = Timer.periodic(
      const Duration(seconds: 10),
      (_) => _checkAndUpdateToken(),
    );
  }

  Future<void> _clearStoredRefreshToken() async {
    await _secureStorage.delete(key: "auth_refresh_token");
  }

  Future<void> _storeRefreshToken(final String refreshToken) async {
    await _secureStorage.write(key: "auth_refresh_token", value: refreshToken);
  }

  Future<String?> readRefreshToken() =>
      _secureStorage.read(key: "auth_refresh_token");

  Future<void> _storeLastSessionType(final SessionType sessionType) async {
    await store.setString("last_session_type", sessionType.name);
  }

  Future<SessionType?> readLastSessionType() async {
    final sessionTypeString = store.getString("last_session_type");
    if (sessionTypeString == null) return null;
    return SessionType.values.firstWhere(
      (final e) => e.name == sessionTypeString,
    );
  }

  Future<void> _storeRefreshTokenStoringTime() async {
    await store.setInt(
      "refresh_token_stored_at",
      DateTime.now().millisecondsSinceEpoch,
    );
  }

  Future<void> _clearRefreshTokenStoringTime() async {
    await store.remove("refresh_token_stored_at");
  }

  Future<int?> readRefreshTokenStoringTime() async =>
      store.getInt("refresh_token_stored_at");
}
