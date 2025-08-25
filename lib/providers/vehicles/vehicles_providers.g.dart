// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicles_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listVehiclesHash() => r'1323d336d5013161172e201fb9f26d9ba1320211';

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

/// See also [listVehicles].
@ProviderFor(listVehicles)
const listVehiclesProvider = ListVehiclesFamily();

/// See also [listVehicles].
class ListVehiclesFamily extends Family<AsyncValue<List<Vehicle>>> {
  /// See also [listVehicles].
  const ListVehiclesFamily();

  /// See also [listVehicles].
  ListVehiclesProvider call({
    String? truckId,
    bool? archived,
    int? first,
    int? max,
  }) {
    return ListVehiclesProvider(
      truckId: truckId,
      archived: archived,
      first: first,
      max: max,
    );
  }

  @override
  ListVehiclesProvider getProviderOverride(
    covariant ListVehiclesProvider provider,
  ) {
    return call(
      truckId: provider.truckId,
      archived: provider.archived,
      first: provider.first,
      max: provider.max,
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
  String? get name => r'listVehiclesProvider';
}

/// See also [listVehicles].
class ListVehiclesProvider extends AutoDisposeFutureProvider<List<Vehicle>> {
  /// See also [listVehicles].
  ListVehiclesProvider({
    String? truckId,
    bool? archived,
    int? first,
    int? max,
  }) : this._internal(
          (ref) => listVehicles(
            ref as ListVehiclesRef,
            truckId: truckId,
            archived: archived,
            first: first,
            max: max,
          ),
          from: listVehiclesProvider,
          name: r'listVehiclesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listVehiclesHash,
          dependencies: ListVehiclesFamily._dependencies,
          allTransitiveDependencies:
              ListVehiclesFamily._allTransitiveDependencies,
          truckId: truckId,
          archived: archived,
          first: first,
          max: max,
        );

  ListVehiclesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.truckId,
    required this.archived,
    required this.first,
    required this.max,
  }) : super.internal();

  final String? truckId;
  final bool? archived;
  final int? first;
  final int? max;

  @override
  Override overrideWith(
    FutureOr<List<Vehicle>> Function(ListVehiclesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListVehiclesProvider._internal(
        (ref) => create(ref as ListVehiclesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        truckId: truckId,
        archived: archived,
        first: first,
        max: max,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Vehicle>> createElement() {
    return _ListVehiclesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListVehiclesProvider &&
        other.truckId == truckId &&
        other.archived == archived &&
        other.first == first &&
        other.max == max;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, truckId.hashCode);
    hash = _SystemHash.combine(hash, archived.hashCode);
    hash = _SystemHash.combine(hash, first.hashCode);
    hash = _SystemHash.combine(hash, max.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ListVehiclesRef on AutoDisposeFutureProviderRef<List<Vehicle>> {
  /// The parameter `truckId` of this provider.
  String? get truckId;

  /// The parameter `archived` of this provider.
  bool? get archived;

  /// The parameter `first` of this provider.
  int? get first;

  /// The parameter `max` of this provider.
  int? get max;
}

class _ListVehiclesProviderElement
    extends AutoDisposeFutureProviderElement<List<Vehicle>>
    with ListVehiclesRef {
  _ListVehiclesProviderElement(super.provider);

  @override
  String? get truckId => (origin as ListVehiclesProvider).truckId;
  @override
  bool? get archived => (origin as ListVehiclesProvider).archived;
  @override
  int? get first => (origin as ListVehiclesProvider).first;
  @override
  int? get max => (origin as ListVehiclesProvider).max;
}

String _$createVehicleHash() => r'5267b4054168a1c640553eeecf353a02fd33d872';

/// See also [CreateVehicle].
@ProviderFor(CreateVehicle)
final createVehicleProvider =
    AutoDisposeNotifierProvider<CreateVehicle, Object?>.internal(
  CreateVehicle.new,
  name: r'createVehicleProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$createVehicleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CreateVehicle = AutoDisposeNotifier<Object?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
