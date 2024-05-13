// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freight_units_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listFreightUnitsHash() => r'e4034932fac3b714b8be3a82fa8462688f75badf';

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

/// See also [listFreightUnits].
@ProviderFor(listFreightUnits)
const listFreightUnitsProvider = ListFreightUnitsFamily();

/// See also [listFreightUnits].
class ListFreightUnitsFamily extends Family<AsyncValue<List<FreightUnit>>> {
  /// See also [listFreightUnits].
  const ListFreightUnitsFamily();

  /// See also [listFreightUnits].
  ListFreightUnitsProvider call({
    required String freightId,
  }) {
    return ListFreightUnitsProvider(
      freightId: freightId,
    );
  }

  @override
  ListFreightUnitsProvider getProviderOverride(
    covariant ListFreightUnitsProvider provider,
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
  String? get name => r'listFreightUnitsProvider';
}

/// See also [listFreightUnits].
class ListFreightUnitsProvider
    extends AutoDisposeFutureProvider<List<FreightUnit>> {
  /// See also [listFreightUnits].
  ListFreightUnitsProvider({
    required String freightId,
  }) : this._internal(
          (ref) => listFreightUnits(
            ref as ListFreightUnitsRef,
            freightId: freightId,
          ),
          from: listFreightUnitsProvider,
          name: r'listFreightUnitsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listFreightUnitsHash,
          dependencies: ListFreightUnitsFamily._dependencies,
          allTransitiveDependencies:
              ListFreightUnitsFamily._allTransitiveDependencies,
          freightId: freightId,
        );

  ListFreightUnitsProvider._internal(
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
    FutureOr<List<FreightUnit>> Function(ListFreightUnitsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListFreightUnitsProvider._internal(
        (ref) => create(ref as ListFreightUnitsRef),
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
  AutoDisposeFutureProviderElement<List<FreightUnit>> createElement() {
    return _ListFreightUnitsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListFreightUnitsProvider && other.freightId == freightId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, freightId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ListFreightUnitsRef on AutoDisposeFutureProviderRef<List<FreightUnit>> {
  /// The parameter `freightId` of this provider.
  String get freightId;
}

class _ListFreightUnitsProviderElement
    extends AutoDisposeFutureProviderElement<List<FreightUnit>>
    with ListFreightUnitsRef {
  _ListFreightUnitsProviderElement(super.provider);

  @override
  String get freightId => (origin as ListFreightUnitsProvider).freightId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
