// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_task_screen_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routeTaskScreenDataHash() =>
    r'7aaa1748fd87fd728b8ac1a2b4605e02d5fe8667';

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

/// See also [routeTaskScreenData].
@ProviderFor(routeTaskScreenData)
const routeTaskScreenDataProvider = RouteTaskScreenDataFamily();

/// See also [routeTaskScreenData].
class RouteTaskScreenDataFamily
    extends Family<AsyncValue<RouteTasksScreenModel>> {
  /// See also [routeTaskScreenData].
  const RouteTaskScreenDataFamily();

  /// See also [routeTaskScreenData].
  RouteTaskScreenDataProvider call(
    String routeId,
  ) {
    return RouteTaskScreenDataProvider(
      routeId,
    );
  }

  @override
  RouteTaskScreenDataProvider getProviderOverride(
    covariant RouteTaskScreenDataProvider provider,
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
  String? get name => r'routeTaskScreenDataProvider';
}

/// See also [routeTaskScreenData].
class RouteTaskScreenDataProvider
    extends AutoDisposeFutureProvider<RouteTasksScreenModel> {
  /// See also [routeTaskScreenData].
  RouteTaskScreenDataProvider(
    String routeId,
  ) : this._internal(
          (ref) => routeTaskScreenData(
            ref as RouteTaskScreenDataRef,
            routeId,
          ),
          from: routeTaskScreenDataProvider,
          name: r'routeTaskScreenDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$routeTaskScreenDataHash,
          dependencies: RouteTaskScreenDataFamily._dependencies,
          allTransitiveDependencies:
              RouteTaskScreenDataFamily._allTransitiveDependencies,
          routeId: routeId,
        );

  RouteTaskScreenDataProvider._internal(
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
    FutureOr<RouteTasksScreenModel> Function(RouteTaskScreenDataRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RouteTaskScreenDataProvider._internal(
        (ref) => create(ref as RouteTaskScreenDataRef),
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
  AutoDisposeFutureProviderElement<RouteTasksScreenModel> createElement() {
    return _RouteTaskScreenDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RouteTaskScreenDataProvider && other.routeId == routeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, routeId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RouteTaskScreenDataRef
    on AutoDisposeFutureProviderRef<RouteTasksScreenModel> {
  /// The parameter `routeId` of this provider.
  String get routeId;
}

class _RouteTaskScreenDataProviderElement
    extends AutoDisposeFutureProviderElement<RouteTasksScreenModel>
    with RouteTaskScreenDataRef {
  _RouteTaskScreenDataProviderElement(super.provider);

  @override
  String get routeId => (origin as RouteTaskScreenDataProvider).routeId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
