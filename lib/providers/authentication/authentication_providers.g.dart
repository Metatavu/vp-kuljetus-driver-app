// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accessTokenHash() => r'0b3d1f1e29f9d543972ac66d8d46ebfd7f50ddea';

/// See also [accessToken].
@ProviderFor(accessToken)
final accessTokenProvider = AutoDisposeProvider<String?>.internal(
  accessToken,
  name: r'accessTokenProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$accessTokenHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AccessTokenRef = AutoDisposeProviderRef<String?>;
String _$userInfoHash() => r'e310c383ddedba29ec99794af3d01027bded0375';

/// See also [userInfo].
@ProviderFor(userInfo)
final userInfoProvider = AutoDisposeProvider<UserInfo?>.internal(
  userInfo,
  name: r'userInfoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserInfoRef = AutoDisposeProviderRef<UserInfo?>;
String _$authNotifierHash() => r'01b1811007a48ce676de2e738bf329e23a68f3c1';

/// See also [AuthNotifier].
@ProviderFor(AuthNotifier)
final authNotifierProvider =
    StreamNotifierProvider<AuthNotifier, OidcUser?>.internal(
  AuthNotifier.new,
  name: r'authNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthNotifier = StreamNotifier<OidcUser?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
