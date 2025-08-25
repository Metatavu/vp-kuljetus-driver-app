// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drivers_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$findDriverHash() => r'5a7bf46b7af4d761caa789060873041f62612c42';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [findDriver].
@ProviderFor(findDriver)
const findDriverProvider = FindDriverFamily();

/// See also [findDriver].
class FindDriverFamily extends Family<AsyncValue<Driver?>> {
  /// See also [findDriver].
  const FindDriverFamily();

  /// See also [findDriver].
  FindDriverProvider call({
    required String driverId,
  }) {
    return FindDriverProvider(
      driverId: driverId,
    );
  }

  @override
  FindDriverProvider getProviderOverride(
    covariant FindDriverProvider provider,
  ) {
    return call(
      driverId: provider.driverId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'findDriverProvider';
}

/// See also [findDriver].
class FindDriverProvider extends AutoDisposeFutureProvider<Driver?> {
  /// See also [findDriver].
  FindDriverProvider({
    required String driverId,
  }) : this._internal(
          (ref) => findDriver(
            ref as FindDriverRef,
            driverId: driverId,
          ),
          from: findDriverProvider,
          name: r'findDriverProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$findDriverHash,
          dependencies: FindDriverFamily._dependencies,
          allTransitiveDependencies:
              FindDriverFamily._allTransitiveDependencies,
          driverId: driverId,
        );

  FindDriverProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.driverId,
  }) : super.internal();

  final String driverId;

  @override
  Override overrideWith(
    FutureOr<Driver?> Function(FindDriverRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FindDriverProvider._internal(
        (ref) => create(ref as FindDriverRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        driverId: driverId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Driver?> createElement() {
    return _FindDriverProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FindDriverProvider && other.driverId == driverId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, driverId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FindDriverRef on AutoDisposeFutureProviderRef<Driver?> {
  /// The parameter `driverId` of this provider.
  String get driverId;
}

class _FindDriverProviderElement
    extends AutoDisposeFutureProviderElement<Driver?> with FindDriverRef {
  _FindDriverProviderElement(super.provider);

  @override
  String get driverId => (origin as FindDriverProvider).driverId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
