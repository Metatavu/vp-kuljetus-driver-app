// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      sub: json['sub'] as String,
      email: json['email'] as String,
      emailVerified: json['emailVerified'] as bool?,
      name: json['name'] as String?,
      preferredUsername: json['preferredUsername'] as String?,
      givenName: json['givenName'] as String?,
      locale: json['locale'] as String?,
      familyName: json['familyName'] as String?,
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'sub': instance.sub,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'name': instance.name,
      'preferredUsername': instance.preferredUsername,
      'givenName': instance.givenName,
      'locale': instance.locale,
      'familyName': instance.familyName,
    };
