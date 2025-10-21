import "dart:async";
import "dart:developer";

import "package:android_id/android_id.dart";
import "package:flutter_appauth/flutter_appauth.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
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
    log(tokenParsed.toString());
    state = AsyncData(tokenParsed);
    return tokenParsed;
  }
}
