// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_task_screen_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchRouteTaskScreenDataHash() =>
    r'f20964ab409cd5ef3c3fffea80e41b706d83e4b9';

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

/// See also [fetchRouteTaskScreenData].
@ProviderFor(fetchRouteTaskScreenData)
const fetchRouteTaskScreenDataProvider = FetchRouteTaskScreenDataFamily();

/// See also [fetchRouteTaskScreenData].
class FetchRouteTaskScreenDataFamily
    extends Family<AsyncValue<RouteTasksScreenData>> {
  /// See also [fetchRouteTaskScreenData].
  const FetchRouteTaskScreenDataFamily();

  /// See also [fetchRouteTaskScreenData].
  FetchRouteTaskScreenDataProvider call(
    String routeId,
  ) {
    return FetchRouteTaskScreenDataProvider(
      routeId,
    );
  }

  @override
  FetchRouteTaskScreenDataProvider getProviderOverride(
    covariant FetchRouteTaskScreenDataProvider provider,
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
  String? get name => r'fetchRouteTaskScreenDataProvider';
}

/// See also [fetchRouteTaskScreenData].
class FetchRouteTaskScreenDataProvider
    extends AutoDisposeFutureProvider<RouteTasksScreenData> {
  /// See also [fetchRouteTaskScreenData].
  FetchRouteTaskScreenDataProvider(
    String routeId,
  ) : this._internal(
          (ref) => fetchRouteTaskScreenData(
            ref as FetchRouteTaskScreenDataRef,
            routeId,
          ),
          from: fetchRouteTaskScreenDataProvider,
          name: r'fetchRouteTaskScreenDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchRouteTaskScreenDataHash,
          dependencies: FetchRouteTaskScreenDataFamily._dependencies,
          allTransitiveDependencies:
              FetchRouteTaskScreenDataFamily._allTransitiveDependencies,
          routeId: routeId,
        );

  FetchRouteTaskScreenDataProvider._internal(
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
    FutureOr<RouteTasksScreenData> Function(
            FetchRouteTaskScreenDataRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchRouteTaskScreenDataProvider._internal(
        (ref) => create(ref as FetchRouteTaskScreenDataRef),
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
  AutoDisposeFutureProviderElement<RouteTasksScreenData> createElement() {
    return _FetchRouteTaskScreenDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchRouteTaskScreenDataProvider &&
        other.routeId == routeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, routeId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchRouteTaskScreenDataRef
    on AutoDisposeFutureProviderRef<RouteTasksScreenData> {
  /// The parameter `routeId` of this provider.
  String get routeId;
}

class _FetchRouteTaskScreenDataProviderElement
    extends AutoDisposeFutureProviderElement<RouteTasksScreenData>
    with FetchRouteTaskScreenDataRef {
  _FetchRouteTaskScreenDataProviderElement(super.provider);

  @override
  String get routeId => (origin as FetchRouteTaskScreenDataProvider).routeId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
