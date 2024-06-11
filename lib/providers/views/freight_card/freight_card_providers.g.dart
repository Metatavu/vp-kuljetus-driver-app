// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freight_card_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$freightCardDataHash() => r'a3704241eca284938595a9bb41975e5e26862a82';

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

/// See also [freightCardData].
@ProviderFor(freightCardData)
const freightCardDataProvider = FreightCardDataFamily();

/// See also [freightCardData].
class FreightCardDataFamily extends Family<AsyncValue<FreightCardModel>> {
  /// See also [freightCardData].
  const FreightCardDataFamily();

  /// See also [freightCardData].
  FreightCardDataProvider call(
    String freightId,
  ) {
    return FreightCardDataProvider(
      freightId,
    );
  }

  @override
  FreightCardDataProvider getProviderOverride(
    covariant FreightCardDataProvider provider,
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
  String? get name => r'freightCardDataProvider';
}

/// See also [freightCardData].
class FreightCardDataProvider
    extends AutoDisposeFutureProvider<FreightCardModel> {
  /// See also [freightCardData].
  FreightCardDataProvider(
    String freightId,
  ) : this._internal(
          (ref) => freightCardData(
            ref as FreightCardDataRef,
            freightId,
          ),
          from: freightCardDataProvider,
          name: r'freightCardDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$freightCardDataHash,
          dependencies: FreightCardDataFamily._dependencies,
          allTransitiveDependencies:
              FreightCardDataFamily._allTransitiveDependencies,
          freightId: freightId,
        );

  FreightCardDataProvider._internal(
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
    FutureOr<FreightCardModel> Function(FreightCardDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FreightCardDataProvider._internal(
        (ref) => create(ref as FreightCardDataRef),
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
  AutoDisposeFutureProviderElement<FreightCardModel> createElement() {
    return _FreightCardDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FreightCardDataProvider && other.freightId == freightId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, freightId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FreightCardDataRef on AutoDisposeFutureProviderRef<FreightCardModel> {
  /// The parameter `freightId` of this provider.
  String get freightId;
}

class _FreightCardDataProviderElement
    extends AutoDisposeFutureProviderElement<FreightCardModel>
    with FreightCardDataRef {
  _FreightCardDataProviderElement(super.provider);

  @override
  String get freightId => (origin as FreightCardDataProvider).freightId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
