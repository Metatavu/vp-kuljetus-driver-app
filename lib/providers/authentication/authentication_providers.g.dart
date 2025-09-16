// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accessTokenHash() => r'365640cf01a50dc374239bd17612bb5224ad3dce';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AccessTokenRef = AutoDisposeProviderRef<String?>;
String _$userInfoHash() => r'c97b2f9d2cde8bac27c002a826d3978c2eeeecbf';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserInfoRef = AutoDisposeProviderRef<UserInfo?>;
String _$authNotifierHash() => r'ec977a517dcfd15c766a10d5fd01a375a9f9ef5a';

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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
