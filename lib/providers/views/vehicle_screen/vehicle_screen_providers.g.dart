// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_screen_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$vehicleScreenDataHash() => r'26cfd2e133bbbb226e31898df11bb53238886c22';

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

/// See also [vehicleScreenData].
@ProviderFor(vehicleScreenData)
const vehicleScreenDataProvider = VehicleScreenDataFamily();

/// See also [vehicleScreenData].
class VehicleScreenDataFamily extends Family<AsyncValue<VehicleScreenModel>> {
  /// See also [vehicleScreenData].
  const VehicleScreenDataFamily();

  /// See also [vehicleScreenData].
  VehicleScreenDataProvider call(
    String truckId,
  ) {
    return VehicleScreenDataProvider(
      truckId,
    );
  }

  @override
  VehicleScreenDataProvider getProviderOverride(
    covariant VehicleScreenDataProvider provider,
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
  String? get name => r'vehicleScreenDataProvider';
}

/// See also [vehicleScreenData].
class VehicleScreenDataProvider
    extends AutoDisposeFutureProvider<VehicleScreenModel> {
  /// See also [vehicleScreenData].
  VehicleScreenDataProvider(
    String truckId,
  ) : this._internal(
          (ref) => vehicleScreenData(
            ref as VehicleScreenDataRef,
            truckId,
          ),
          from: vehicleScreenDataProvider,
          name: r'vehicleScreenDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$vehicleScreenDataHash,
          dependencies: VehicleScreenDataFamily._dependencies,
          allTransitiveDependencies:
              VehicleScreenDataFamily._allTransitiveDependencies,
          truckId: truckId,
        );

  VehicleScreenDataProvider._internal(
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
    FutureOr<VehicleScreenModel> Function(VehicleScreenDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VehicleScreenDataProvider._internal(
        (ref) => create(ref as VehicleScreenDataRef),
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
  AutoDisposeFutureProviderElement<VehicleScreenModel> createElement() {
    return _VehicleScreenDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VehicleScreenDataProvider && other.truckId == truckId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, truckId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin VehicleScreenDataRef on AutoDisposeFutureProviderRef<VehicleScreenModel> {
  /// The parameter `truckId` of this provider.
  String get truckId;
}

class _VehicleScreenDataProviderElement
    extends AutoDisposeFutureProviderElement<VehicleScreenModel>
    with VehicleScreenDataRef {
  _VehicleScreenDataProviderElement(super.provider);

  @override
  String get truckId => (origin as VehicleScreenDataProvider).truckId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
