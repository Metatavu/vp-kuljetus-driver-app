// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_states_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listDriveStatesHash() => r'36d5a9dee3ac89612c83b57f6032790dbac5d8e7';

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
  }) {
    return ListDriveStatesProvider(
      truckId: truckId,
    );
  }

  @override
  ListDriveStatesProvider getProviderOverride(
    covariant ListDriveStatesProvider provider,
  ) {
    return call(
      truckId: provider.truckId,
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
  }) : this._internal(
          (ref) => listDriveStates(
            ref as ListDriveStatesRef,
            truckId: truckId,
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
        );

  ListDriveStatesProvider._internal(
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
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<TruckDriveState>> createElement() {
    return _ListDriveStatesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListDriveStatesProvider && other.truckId == truckId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, truckId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ListDriveStatesRef
    on AutoDisposeFutureProviderRef<List<TruckDriveState>> {
  /// The parameter `truckId` of this provider.
  String get truckId;
}

class _ListDriveStatesProviderElement
    extends AutoDisposeFutureProviderElement<List<TruckDriveState>>
    with ListDriveStatesRef {
  _ListDriveStatesProviderElement(super.provider);

  @override
  String get truckId => (origin as ListDriveStatesProvider).truckId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
