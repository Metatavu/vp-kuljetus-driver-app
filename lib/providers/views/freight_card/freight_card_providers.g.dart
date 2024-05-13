// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freight_card_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchFreightCardDataHash() =>
    r'af3128099d28a07aee1c729e3d9d5a21926b89f5';

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

/// See also [fetchFreightCardData].
@ProviderFor(fetchFreightCardData)
const fetchFreightCardDataProvider = FetchFreightCardDataFamily();

/// See also [fetchFreightCardData].
class FetchFreightCardDataFamily extends Family<AsyncValue<FreightCardData>> {
  /// See also [fetchFreightCardData].
  const FetchFreightCardDataFamily();

  /// See also [fetchFreightCardData].
  FetchFreightCardDataProvider call(
    String freightId,
  ) {
    return FetchFreightCardDataProvider(
      freightId,
    );
  }

  @override
  FetchFreightCardDataProvider getProviderOverride(
    covariant FetchFreightCardDataProvider provider,
  ) {
    return call(
      provider.freightId,
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
  String? get name => r'fetchFreightCardDataProvider';
}

/// See also [fetchFreightCardData].
class FetchFreightCardDataProvider
    extends AutoDisposeFutureProvider<FreightCardData> {
  /// See also [fetchFreightCardData].
  FetchFreightCardDataProvider(
    String freightId,
  ) : this._internal(
          (ref) => fetchFreightCardData(
            ref as FetchFreightCardDataRef,
            freightId,
          ),
          from: fetchFreightCardDataProvider,
          name: r'fetchFreightCardDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchFreightCardDataHash,
          dependencies: FetchFreightCardDataFamily._dependencies,
          allTransitiveDependencies:
              FetchFreightCardDataFamily._allTransitiveDependencies,
          freightId: freightId,
        );

  FetchFreightCardDataProvider._internal(
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
    FutureOr<FreightCardData> Function(FetchFreightCardDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchFreightCardDataProvider._internal(
        (ref) => create(ref as FetchFreightCardDataRef),
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
  AutoDisposeFutureProviderElement<FreightCardData> createElement() {
    return _FetchFreightCardDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchFreightCardDataProvider &&
        other.freightId == freightId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, freightId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchFreightCardDataRef on AutoDisposeFutureProviderRef<FreightCardData> {
  /// The parameter `freightId` of this provider.
  String get freightId;
}

class _FetchFreightCardDataProviderElement
    extends AutoDisposeFutureProviderElement<FreightCardData>
    with FetchFreightCardDataRef {
  _FetchFreightCardDataProviderElement(super.provider);

  @override
  String get freightId => (origin as FetchFreightCardDataProvider).freightId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
