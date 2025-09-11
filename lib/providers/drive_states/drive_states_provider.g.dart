// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_states_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listDriveStatesHash() => r'1f90c3a17b73effb0e18ced7c9595ad84866ca4e';

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

/// See also [listDriveStates].
@ProviderFor(listDriveStates)
const listDriveStatesProvider = ListDriveStatesFamily();

/// See also [listDriveStates].
class ListDriveStatesFamily extends Family<AsyncValue<List<TruckDriveState>>> {
  /// See also [listDriveStates].
  const ListDriveStatesFamily();

  /// See also [listDriveStates].
  ListDriveStatesProvider call({
    required String truckId,
    String? driverId,
    DateTime? after,
    int? max,
  }) {
    return ListDriveStatesProvider(
      truckId: truckId,
      driverId: driverId,
      after: after,
      max: max,
    );
  }

  @override
  ListDriveStatesProvider getProviderOverride(
    covariant ListDriveStatesProvider provider,
  ) {
    return call(
      truckId: provider.truckId,
      driverId: provider.driverId,
      after: provider.after,
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
  String? get name => r'listDriveStatesProvider';
}

/// See also [listDriveStates].
class ListDriveStatesProvider
    extends AutoDisposeFutureProvider<List<TruckDriveState>> {
  /// See also [listDriveStates].
  ListDriveStatesProvider({
    required String truckId,
    String? driverId,
    DateTime? after,
    int? max,
  }) : this._internal(
          (ref) => listDriveStates(
            ref as ListDriveStatesRef,
            truckId: truckId,
            driverId: driverId,
            after: after,
            max: max,
          ),
          from: listDriveStatesProvider,
          name: r'listDriveStatesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listDriveStatesHash,
          dependencies: ListDriveStatesFamily._dependencies,
          allTransitiveDependencies:
              ListDriveStatesFamily._allTransitiveDependencies,
          truckId: truckId,
          driverId: driverId,
          after: after,
          max: max,
        );

  ListDriveStatesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.truckId,
    required this.driverId,
    required this.after,
    required this.max,
  }) : super.internal();

  final String truckId;
  final String? driverId;
  final DateTime? after;
  final int? max;

  @override
  Override overrideWith(
    FutureOr<List<TruckDriveState>> Function(ListDriveStatesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListDriveStatesProvider._internal(
        (ref) => create(ref as ListDriveStatesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        truckId: truckId,
        driverId: driverId,
        after: after,
        max: max,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<TruckDriveState>> createElement() {
    return _ListDriveStatesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListDriveStatesProvider &&
        other.truckId == truckId &&
        other.driverId == driverId &&
        other.after == after &&
        other.max == max;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, truckId.hashCode);
    hash = _SystemHash.combine(hash, driverId.hashCode);
    hash = _SystemHash.combine(hash, after.hashCode);
    hash = _SystemHash.combine(hash, max.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ListDriveStatesRef
    on AutoDisposeFutureProviderRef<List<TruckDriveState>> {
  /// The parameter `truckId` of this provider.
  String get truckId;

  /// The parameter `driverId` of this provider.
  String? get driverId;

  /// The parameter `after` of this provider.
  DateTime? get after;

  /// The parameter `max` of this provider.
  int? get max;
}

class _ListDriveStatesProviderElement
    extends AutoDisposeFutureProviderElement<List<TruckDriveState>>
    with ListDriveStatesRef {
  _ListDriveStatesProviderElement(super.provider);

  @override
  String get truckId => (origin as ListDriveStatesProvider).truckId;
  @override
  String? get driverId => (origin as ListDriveStatesProvider).driverId;
  @override
  DateTime? get after => (origin as ListDriveStatesProvider).after;
  @override
  int? get max => (origin as ListDriveStatesProvider).max;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
