import "package:oidc/oidc.dart";
import "package:oidc_default_store/oidc_default_store.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:vp_kuljetus_driver_app/app/env.gen.dart";
import "package:vp_kuljetus_driver_app/models/authentication/authentication.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";

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
      if (user?.token.accessToken != null) {
        tmsApi.setBearerAuth("BearerAuth", user!.token.accessToken!);
      }
    });

    ref.onDispose(apiAuthSubscription.cancel);

    return userChangesStream;
  }

  Future<void> login(final String truckId) =>
      authManager.loginAuthorizationCodeFlow(loginHint: "truck-id:$truckId");

  Future<void> logout() async => authManager.logout();
}

@riverpod
String? accessToken(final AccessTokenRef ref) =>
    ref.watch(authNotifierProvider).valueOrNull?.token.accessToken;

@riverpod
UserInfo? userInfo(final UserInfoRef ref) {
  final userInfo = ref.watch(authNotifierProvider).valueOrNull?.userInfo;
  return userInfo != null ? UserInfo.fromJson(userInfo) : null;
}
