import "package:freezed_annotation/freezed_annotation.dart";

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
