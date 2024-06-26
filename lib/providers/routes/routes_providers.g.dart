// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listRoutesHash() => r'77874c4a399a9bcb81ddc02e2e8881cda86403c7';

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

/// See also [listRoutes].
@ProviderFor(listRoutes)
const listRoutesProvider = ListRoutesFamily();

/// See also [listRoutes].
class ListRoutesFamily extends Family<AsyncValue<List<Route>>> {
  /// See also [listRoutes].
  const ListRoutesFamily();

  /// See also [listRoutes].
  ListRoutesProvider call({
    String? truckId,
    String? driverId,
    DateTime? departureAfter,
    DateTime? departureBefore,
    int? first,
    int? max,
  }) {
    return ListRoutesProvider(
      truckId: truckId,
      driverId: driverId,
      departureAfter: departureAfter,
      departureBefore: departureBefore,
      first: first,
      max: max,
    );
  }

  @override
  ListRoutesProvider getProviderOverride(
    covariant ListRoutesProvider provider,
  ) {
    return call(
      truckId: provider.truckId,
      driverId: provider.driverId,
      departureAfter: provider.departureAfter,
      departureBefore: provider.departureBefore,
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
  String? get name => r'listRoutesProvider';
}

/// See also [listRoutes].
class ListRoutesProvider extends AutoDisposeFutureProvider<List<Route>> {
  /// See also [listRoutes].
  ListRoutesProvider({
    String? truckId,
    String? driverId,
    DateTime? departureAfter,
    DateTime? departureBefore,
    int? first,
    int? max,
  }) : this._internal(
          (ref) => listRoutes(
            ref as ListRoutesRef,
            truckId: truckId,
            driverId: driverId,
            departureAfter: departureAfter,
            departureBefore: departureBefore,
            first: first,
            max: max,
          ),
          from: listRoutesProvider,
          name: r'listRoutesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listRoutesHash,
          dependencies: ListRoutesFamily._dependencies,
          allTransitiveDependencies:
              ListRoutesFamily._allTransitiveDependencies,
          truckId: truckId,
          driverId: driverId,
          departureAfter: departureAfter,
          departureBefore: departureBefore,
          first: first,
          max: max,
        );

  ListRoutesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.truckId,
    required this.driverId,
    required this.departureAfter,
    required this.departureBefore,
    required this.first,
    required this.max,
  }) : super.internal();

  final String? truckId;
  final String? driverId;
  final DateTime? departureAfter;
  final DateTime? departureBefore;
  final int? first;
  final int? max;

  @override
  Override overrideWith(
    FutureOr<List<Route>> Function(ListRoutesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListRoutesProvider._internal(
        (ref) => create(ref as ListRoutesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        truckId: truckId,
        driverId: driverId,
        departureAfter: departureAfter,
        departureBefore: departureBefore,
        first: first,
        max: max,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Route>> createElement() {
    return _ListRoutesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListRoutesProvider &&
        other.truckId == truckId &&
        other.driverId == driverId &&
        other.departureAfter == departureAfter &&
        other.departureBefore == departureBefore &&
        other.first == first &&
        other.max == max;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, truckId.hashCode);
    hash = _SystemHash.combine(hash, driverId.hashCode);
    hash = _SystemHash.combine(hash, departureAfter.hashCode);
    hash = _SystemHash.combine(hash, departureBefore.hashCode);
    hash = _SystemHash.combine(hash, first.hashCode);
    hash = _SystemHash.combine(hash, max.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ListRoutesRef on AutoDisposeFutureProviderRef<List<Route>> {
  /// The parameter `truckId` of this provider.
  String? get truckId;

  /// The parameter `driverId` of this provider.
  String? get driverId;

  /// The parameter `departureAfter` of this provider.
  DateTime? get departureAfter;

  /// The parameter `departureBefore` of this provider.
  DateTime? get departureBefore;

  /// The parameter `first` of this provider.
  int? get first;

  /// The parameter `max` of this provider.
  int? get max;
}

class _ListRoutesProviderElement
    extends AutoDisposeFutureProviderElement<List<Route>> with ListRoutesRef {
  _ListRoutesProviderElement(super.provider);

  @override
  String? get truckId => (origin as ListRoutesProvider).truckId;
  @override
  String? get driverId => (origin as ListRoutesProvider).driverId;
  @override
  DateTime? get departureAfter => (origin as ListRoutesProvider).departureAfter;
  @override
  DateTime? get departureBefore =>
      (origin as ListRoutesProvider).departureBefore;
  @override
  int? get first => (origin as ListRoutesProvider).first;
  @override
  int? get max => (origin as ListRoutesProvider).max;
}

String _$findRouteHash() => r'3a36712b3d24b3951442fc5e48ad5d51f14e65cd';

/// See also [findRoute].
@ProviderFor(findRoute)
const findRouteProvider = FindRouteFamily();

/// See also [findRoute].
class FindRouteFamily extends Family<AsyncValue<Route>> {
  /// See also [findRoute].
  const FindRouteFamily();

  /// See also [findRoute].
  FindRouteProvider call({
    required String routeId,
  }) {
    return FindRouteProvider(
      routeId: routeId,
    );
  }

  @override
  FindRouteProvider getProviderOverride(
    covariant FindRouteProvider provider,
  ) {
    return call(
      routeId: provider.routeId,
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
  String? get name => r'findRouteProvider';
}

/// See also [findRoute].
class FindRouteProvider extends AutoDisposeFutureProvider<Route> {
  /// See also [findRoute].
  FindRouteProvider({
    required String routeId,
  }) : this._internal(
          (ref) => findRoute(
            ref as FindRouteRef,
            routeId: routeId,
          ),
          from: findRouteProvider,
          name: r'findRouteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$findRouteHash,
          dependencies: FindRouteFamily._dependencies,
          allTransitiveDependencies: FindRouteFamily._allTransitiveDependencies,
          routeId: routeId,
        );

  FindRouteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.routeId,
  }) : super.internal();

  final String routeId;

  @override
  Override overrideWith(
    FutureOr<Route> Function(FindRouteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FindRouteProvider._internal(
        (ref) => create(ref as FindRouteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        routeId: routeId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Route> createElement() {
    return _FindRouteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FindRouteProvider && other.routeId == routeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, routeId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FindRouteRef on AutoDisposeFutureProviderRef<Route> {
  /// The parameter `routeId` of this provider.
  String get routeId;
}

class _FindRouteProviderElement extends AutoDisposeFutureProviderElement<Route>
    with FindRouteRef {
  _FindRouteProviderElement(super.provider);

  @override
  String get routeId => (origin as FindRouteProvider).routeId;
}

String _$updateRouteHash() => r'd547e1bdd3993d213ba3c24ef51bc225c3430b37';

abstract class _$UpdateRoute extends BuildlessAutoDisposeNotifier<Object?> {
  late final String routeId;

  Object? build(
    String routeId,
  );
}

/// See also [UpdateRoute].
@ProviderFor(UpdateRoute)
const updateRouteProvider = UpdateRouteFamily();

/// See also [UpdateRoute].
class UpdateRouteFamily extends Family<Object?> {
  /// See also [UpdateRoute].
  const UpdateRouteFamily();

  /// See also [UpdateRoute].
  UpdateRouteProvider call(
    String routeId,
  ) {
    return UpdateRouteProvider(
      routeId,
    );
  }

  @override
  UpdateRouteProvider getProviderOverride(
    covariant UpdateRouteProvider provider,
  ) {
    return call(
      provider.routeId,
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
  String? get name => r'updateRouteProvider';
}

/// See also [UpdateRoute].
class UpdateRouteProvider
    extends AutoDisposeNotifierProviderImpl<UpdateRoute, Object?> {
  /// See also [UpdateRoute].
  UpdateRouteProvider(
    String routeId,
  ) : this._internal(
          () => UpdateRoute()..routeId = routeId,
          from: updateRouteProvider,
          name: r'updateRouteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateRouteHash,
          dependencies: UpdateRouteFamily._dependencies,
          allTransitiveDependencies:
              UpdateRouteFamily._allTransitiveDependencies,
          routeId: routeId,
        );

  UpdateRouteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.routeId,
  }) : super.internal();

  final String routeId;

  @override
  Object? runNotifierBuild(
    covariant UpdateRoute notifier,
  ) {
    return notifier.build(
      routeId,
    );
  }

  @override
  Override overrideWith(UpdateRoute Function() create) {
    return ProviderOverride(
      origin: this,
      override: UpdateRouteProvider._internal(
        () => create()..routeId = routeId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        routeId: routeId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<UpdateRoute, Object?> createElement() {
    return _UpdateRouteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateRouteProvider && other.routeId == routeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, routeId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateRouteRef on AutoDisposeNotifierProviderRef<Object?> {
  /// The parameter `routeId` of this provider.
  String get routeId;
}

class _UpdateRouteProviderElement
    extends AutoDisposeNotifierProviderElement<UpdateRoute, Object?>
    with UpdateRouteRef {
  _UpdateRouteProviderElement(super.provider);

  @override
  String get routeId => (origin as UpdateRouteProvider).routeId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
