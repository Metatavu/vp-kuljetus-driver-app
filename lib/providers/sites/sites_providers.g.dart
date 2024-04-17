// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sites_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$findSiteHash() => r'054cb38d8d2fee21e76a9b8f5d37c704b729b620';

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

/// See also [findSite].
@ProviderFor(findSite)
const findSiteProvider = FindSiteFamily();

/// See also [findSite].
class FindSiteFamily extends Family<AsyncValue<Site?>> {
  /// See also [findSite].
  const FindSiteFamily();

  /// See also [findSite].
  FindSiteProvider call({
    required String siteId,
  }) {
    return FindSiteProvider(
      siteId: siteId,
    );
  }

  @override
  FindSiteProvider getProviderOverride(
    covariant FindSiteProvider provider,
  ) {
    return call(
      siteId: provider.siteId,
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
  String? get name => r'findSiteProvider';
}

/// See also [findSite].
class FindSiteProvider extends AutoDisposeFutureProvider<Site?> {
  /// See also [findSite].
  FindSiteProvider({
    required String siteId,
  }) : this._internal(
          (ref) => findSite(
            ref as FindSiteRef,
            siteId: siteId,
          ),
          from: findSiteProvider,
          name: r'findSiteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$findSiteHash,
          dependencies: FindSiteFamily._dependencies,
          allTransitiveDependencies: FindSiteFamily._allTransitiveDependencies,
          siteId: siteId,
        );

  FindSiteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.siteId,
  }) : super.internal();

  final String siteId;

  @override
  Override overrideWith(
    FutureOr<Site?> Function(FindSiteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FindSiteProvider._internal(
        (ref) => create(ref as FindSiteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        siteId: siteId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Site?> createElement() {
    return _FindSiteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FindSiteProvider && other.siteId == siteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, siteId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FindSiteRef on AutoDisposeFutureProviderRef<Site?> {
  /// The parameter `siteId` of this provider.
  String get siteId;
}

class _FindSiteProviderElement extends AutoDisposeFutureProviderElement<Site?>
    with FindSiteRef {
  _FindSiteProviderElement(super.provider);

  @override
  String get siteId => (origin as FindSiteProvider).siteId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
