// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_screen_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchVehicleScreenDataHash() =>
    r'89164c3efd24ac3a3147f0a41aca834b8778770d';

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

/// See also [fetchVehicleScreenData].
@ProviderFor(fetchVehicleScreenData)
const fetchVehicleScreenDataProvider = FetchVehicleScreenDataFamily();

/// See also [fetchVehicleScreenData].
class FetchVehicleScreenDataFamily
    extends Family<AsyncValue<VehicleScreenData>> {
  /// See also [fetchVehicleScreenData].
  const FetchVehicleScreenDataFamily();

  /// See also [fetchVehicleScreenData].
  FetchVehicleScreenDataProvider call(
    String truckId,
  ) {
    return FetchVehicleScreenDataProvider(
      truckId,
    );
  }

  @override
  FetchVehicleScreenDataProvider getProviderOverride(
    covariant FetchVehicleScreenDataProvider provider,
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
  String? get name => r'fetchVehicleScreenDataProvider';
}

/// See also [fetchVehicleScreenData].
class FetchVehicleScreenDataProvider
    extends AutoDisposeFutureProvider<VehicleScreenData> {
  /// See also [fetchVehicleScreenData].
  FetchVehicleScreenDataProvider(
    String truckId,
  ) : this._internal(
          (ref) => fetchVehicleScreenData(
            ref as FetchVehicleScreenDataRef,
            truckId,
          ),
          from: fetchVehicleScreenDataProvider,
          name: r'fetchVehicleScreenDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchVehicleScreenDataHash,
          dependencies: FetchVehicleScreenDataFamily._dependencies,
          allTransitiveDependencies:
              FetchVehicleScreenDataFamily._allTransitiveDependencies,
          truckId: truckId,
        );

  FetchVehicleScreenDataProvider._internal(
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
    FutureOr<VehicleScreenData> Function(FetchVehicleScreenDataRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchVehicleScreenDataProvider._internal(
        (ref) => create(ref as FetchVehicleScreenDataRef),
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
  AutoDisposeFutureProviderElement<VehicleScreenData> createElement() {
    return _FetchVehicleScreenDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchVehicleScreenDataProvider && other.truckId == truckId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, truckId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchVehicleScreenDataRef
    on AutoDisposeFutureProviderRef<VehicleScreenData> {
  /// The parameter `truckId` of this provider.
  String get truckId;
}

class _FetchVehicleScreenDataProviderElement
    extends AutoDisposeFutureProviderElement<VehicleScreenData>
    with FetchVehicleScreenDataRef {
  _FetchVehicleScreenDataProviderElement(super.provider);

  @override
  String get truckId => (origin as FetchVehicleScreenDataProvider).truckId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
