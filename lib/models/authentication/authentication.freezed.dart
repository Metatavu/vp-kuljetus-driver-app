// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {

 String get sub => throw _privateConstructorUsedError; String get email => throw _privateConstructorUsedError; bool? get emailVerified => throw _privateConstructorUsedError; String? get name => throw _privateConstructorUsedError; String? get preferredUsername => throw _privateConstructorUsedError; String? get givenName => throw _privateConstructorUsedError; String? get locale => throw _privateConstructorUsedError; String? get familyName => throw _privateConstructorUsedError;






/// Serializes this UserInfo to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$UserInfoCopyWith<UserInfo> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $UserInfoCopyWith<$Res>  {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) = _$UserInfoCopyWithImpl<$Res, UserInfo>;
@useResult
$Res call({
 String sub, String email, bool? emailVerified, String? name, String? preferredUsername, String? givenName, String? locale, String? familyName
});



}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res,$Val extends UserInfo> implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sub = null,Object? email = null,Object? emailVerified = freezed,Object? name = freezed,Object? preferredUsername = freezed,Object? givenName = freezed,Object? locale = freezed,Object? familyName = freezed,}) {
  return _then(_value.copyWith(
sub: null == sub ? _value.sub : sub // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _value.email : email // ignore: cast_nullable_to_non_nullable
as String,emailVerified: freezed == emailVerified ? _value.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool?,name: freezed == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String?,preferredUsername: freezed == preferredUsername ? _value.preferredUsername : preferredUsername // ignore: cast_nullable_to_non_nullable
as String?,givenName: freezed == givenName ? _value.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _value.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,familyName: freezed == familyName ? _value.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String?,
  )as $Val);
}

}


/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(_$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) = __$$UserInfoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String sub, String email, bool? emailVerified, String? name, String? preferredUsername, String? givenName, String? locale, String? familyName
});



}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res> extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl> implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(_$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);


/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sub = null,Object? email = null,Object? emailVerified = freezed,Object? name = freezed,Object? preferredUsername = freezed,Object? givenName = freezed,Object? locale = freezed,Object? familyName = freezed,}) {
  return _then(_$UserInfoImpl(
sub: null == sub ? _value.sub : sub // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _value.email : email // ignore: cast_nullable_to_non_nullable
as String,emailVerified: freezed == emailVerified ? _value.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool?,name: freezed == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String?,preferredUsername: freezed == preferredUsername ? _value.preferredUsername : preferredUsername // ignore: cast_nullable_to_non_nullable
as String?,givenName: freezed == givenName ? _value.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _value.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,familyName: freezed == familyName ? _value.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$UserInfoImpl  implements _UserInfo {
  const _$UserInfoImpl({required this.sub, required this.email, this.emailVerified, this.name, this.preferredUsername, this.givenName, this.locale, this.familyName});

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) => _$$UserInfoImplFromJson(json);

@override final  String sub;
@override final  String email;
@override final  bool? emailVerified;
@override final  String? name;
@override final  String? preferredUsername;
@override final  String? givenName;
@override final  String? locale;
@override final  String? familyName;

@override
String toString() {
  return 'UserInfo(sub: $sub, email: $email, emailVerified: $emailVerified, name: $name, preferredUsername: $preferredUsername, givenName: $givenName, locale: $locale, familyName: $familyName)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$UserInfoImpl&&(identical(other.sub, sub) || other.sub == sub)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&(identical(other.name, name) || other.name == name)&&(identical(other.preferredUsername, preferredUsername) || other.preferredUsername == preferredUsername)&&(identical(other.givenName, givenName) || other.givenName == givenName)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.familyName, familyName) || other.familyName == familyName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sub,email,emailVerified,name,preferredUsername,givenName,locale,familyName);

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith => __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$UserInfoImplToJson(this, );
}
}


abstract class _UserInfo implements UserInfo {
  const factory _UserInfo({required final  String sub, required final  String email, final  bool? emailVerified, final  String? name, final  String? preferredUsername, final  String? givenName, final  String? locale, final  String? familyName}) = _$UserInfoImpl;
  

  factory _UserInfo.fromJson(Map<String, dynamic> json) = _$UserInfoImpl.fromJson;

@override String get sub;@override String get email;@override bool? get emailVerified;@override String? get name;@override String? get preferredUsername;@override String? get givenName;@override String? get locale;@override String? get familyName;
/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith => throw _privateConstructorUsedError;

}
