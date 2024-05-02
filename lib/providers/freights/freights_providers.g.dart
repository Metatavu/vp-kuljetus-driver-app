// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freights_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$findFreightHash() => r'6d26dafd7ff2d0348ea764e5d09f131c7ecf0bf4';

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

/// See also [findFreight].
@ProviderFor(findFreight)
const findFreightProvider = FindFreightFamily();

/// See also [findFreight].
class FindFreightFamily extends Family<AsyncValue<Freight>> {
  /// See also [findFreight].
  const FindFreightFamily();

  /// See also [findFreight].
  FindFreightProvider call({
    required String freightId,
  }) {
    return FindFreightProvider(
      freightId: freightId,
    );
  }

  @override
  FindFreightProvider getProviderOverride(
    covariant FindFreightProvider provider,
  ) {
    return call(
      freightId: provider.freightId,
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
  String? get name => r'findFreightProvider';
}

/// See also [findFreight].
class FindFreightProvider extends AutoDisposeFutureProvider<Freight> {
  /// See also [findFreight].
  FindFreightProvider({
    required String freightId,
  }) : this._internal(
          (ref) => findFreight(
            ref as FindFreightRef,
            freightId: freightId,
          ),
          from: findFreightProvider,
          name: r'findFreightProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$findFreightHash,
          dependencies: FindFreightFamily._dependencies,
          allTransitiveDependencies:
              FindFreightFamily._allTransitiveDependencies,
          freightId: freightId,
        );

  FindFreightProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.freightId,
  }) : super.internal();

  final String freightId;

  @override
  Override overrideWith(
    FutureOr<Freight> Function(FindFreightRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FindFreightProvider._internal(
        (ref) => create(ref as FindFreightRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        freightId: freightId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Freight> createElement() {
    return _FindFreightProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FindFreightProvider && other.freightId == freightId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, freightId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FindFreightRef on AutoDisposeFutureProviderRef<Freight> {
  /// The parameter `freightId` of this provider.
  String get freightId;
}

class _FindFreightProviderElement
    extends AutoDisposeFutureProviderElement<Freight> with FindFreightRef {
  _FindFreightProviderElement(super.provider);

  @override
  String get freightId => (origin as FindFreightProvider).freightId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
