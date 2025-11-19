import "package:flutter/foundation.dart";
import "package:flutter_appauth/flutter_appauth.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:jwt_decoder/jwt_decoder.dart";

part "authentication.freezed.dart";
part "authentication.g.dart";

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    required final String sub,
    final String? email,
    final bool? emailVerified,
    final String? name,
    final String? preferredUsername,
    final String? givenName,
    final String? locale,
    final String? familyName,
  }) = _UserInfo;

  factory UserInfo.fromJson(final Map<String, Object?> json) =>
      _$UserInfoFromJson(json);
}

@freezed
class AccessToken with _$AccessToken {
  const factory AccessToken({
    required final int exp,
    required final int iat,
    required final int auth_time,
    required final String jti,
    required final String iss,
    required final String aud,
    required final String sub,
    required final String typ,
    required final String azp,
    required final String sid,
    required final String acr,
    required final RealmAccess realm_access,
    required final Map<String, ResourceAccess> resource_access,
    required final String scope,
    required final bool email_verified,
    final String? name,
    final String? preferred_username,
    final String? given_name,
    final String? family_name,
    final String? email,
  }) = _AccessToken;

  factory AccessToken.fromJson(final Map<String, Object?> json) =>
      _$AccessTokenFromJson(json);
}

@freezed
class RealmAccess with _$RealmAccess {
  const factory RealmAccess({required final List<String> roles}) = _RealmAccess;

  factory RealmAccess.fromJson(final Map<String, Object?> json) =>
      _$RealmAccessFromJson(json);
}

@freezed
class ResourceAccess with _$ResourceAccess {
  const factory ResourceAccess({required final List<String> roles}) =
      _ResourceAccess;

  factory ResourceAccess.fromJson(final Map<String, Object?> json) =>
      _$ResourceAccessFromJson(json);
}

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required final AccessToken accessToken,
    required final String accessTokenRaw,
    required final String refreshToken,
    required final String idToken,
  }) = _AuthenticationState;

  const AuthenticationState._();

  factory AuthenticationState.fromTokenResponse(
    final TokenResponse tokenResponse,
  ) {
    assert(
      tokenResponse.accessToken?.isNotEmpty == true,
      "accessToken cannot be null",
    );
    assert(
      tokenResponse.refreshToken?.isNotEmpty == true,
      "refreshToken cannot be null",
    );

    return AuthenticationState(
      accessToken: AccessToken.fromJson(
        JwtDecoder.decode(tokenResponse.accessToken!),
      ),
      accessTokenRaw: tokenResponse.accessToken!,
      refreshToken: tokenResponse.refreshToken!,
      idToken: tokenResponse.idToken!,
    );
  }

  bool get isExpired => DateTime.fromMillisecondsSinceEpoch(
    accessToken.exp * 1000,
  ).isBefore(DateTime.now());

  bool expiresIn(final Duration duration) =>
      DateTime.fromMillisecondsSinceEpoch(
        accessToken.exp * 1000,
      ).isBefore(DateTime.now().add(duration));
}
