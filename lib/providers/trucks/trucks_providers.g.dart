// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trucks_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listPublicTrucksHash() => r'183295635d10b18341630ca950c797c36cd1671f';

/// See also [listPublicTrucks].
@ProviderFor(listPublicTrucks)
final listPublicTrucksProvider =
    AutoDisposeFutureProvider<List<PublicTruck>>.internal(
  listPublicTrucks,
  name: r'listPublicTrucksProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$listPublicTrucksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ListPublicTrucksRef = AutoDisposeFutureProviderRef<List<PublicTruck>>;
String _$findTruckHash() => r'd3bccbc422102c1ab7800e2d823410c504bc33d0';

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

/// See also [findTruck].
@ProviderFor(findTruck)
const findTruckProvider = FindTruckFamily();

/// See also [findTruck].
class FindTruckFamily extends Family<AsyncValue<Truck>> {
  /// See also [findTruck].
  const FindTruckFamily();

  /// See also [findTruck].
  FindTruckProvider call(
    String truckId,
  ) {
    return FindTruckProvider(
      truckId,
    );
  }

  @override
  FindTruckProvider getProviderOverride(
    covariant FindTruckProvider provider,
  ) {
    return call(
      provider.truckId,
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
  String? get name => r'findTruckProvider';
}

/// See also [findTruck].
class FindTruckProvider extends AutoDisposeFutureProvider<Truck> {
  /// See also [findTruck].
  FindTruckProvider(
    String truckId,
  ) : this._internal(
          (ref) => findTruck(
            ref as FindTruckRef,
            truckId,
          ),
          from: findTruckProvider,
          name: r'findTruckProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$findTruckHash,
          dependencies: FindTruckFamily._dependencies,
          allTransitiveDependencies: FindTruckFamily._allTransitiveDependencies,
          truckId: truckId,
        );

  FindTruckProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.truckId,
  }) : super.internal();

  final String truckId;

  @override
  Override overrideWith(
    FutureOr<Truck> Function(FindTruckRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FindTruckProvider._internal(
        (ref) => create(ref as FindTruckRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        truckId: truckId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Truck> createElement() {
    return _FindTruckProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FindTruckProvider && other.truckId == truckId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, truckId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FindTruckRef on AutoDisposeFutureProviderRef<Truck> {
  /// The parameter `truckId` of this provider.
  String get truckId;
}

class _FindTruckProviderElement extends AutoDisposeFutureProviderElement<Truck>
    with FindTruckRef {
  _FindTruckProviderElement(super.provider);

  @override
  String get truckId => (origin as FindTruckProvider).truckId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
