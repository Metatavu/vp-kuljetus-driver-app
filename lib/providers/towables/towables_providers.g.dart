// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'towables_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listTowablesHash() => r'5b14fdf743f2b78604fcc5e619b84c33eaecc4d0';

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

/// See also [listTowables].
@ProviderFor(listTowables)
const listTowablesProvider = ListTowablesFamily();

/// See also [listTowables].
class ListTowablesFamily extends Family<AsyncValue<List<Towable>>> {
  /// See also [listTowables].
  const ListTowablesFamily();

  /// See also [listTowables].
  ListTowablesProvider call({
    String? plateNumber,
    bool? archived,
    int? first,
    int? max,
  }) {
    return ListTowablesProvider(
      plateNumber: plateNumber,
      archived: archived,
      first: first,
      max: max,
    );
  }

  @override
  ListTowablesProvider getProviderOverride(
    covariant ListTowablesProvider provider,
  ) {
    return call(
      plateNumber: provider.plateNumber,
      archived: provider.archived,
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
  String? get name => r'listTowablesProvider';
}

/// See also [listTowables].
class ListTowablesProvider extends AutoDisposeFutureProvider<List<Towable>> {
  /// See also [listTowables].
  ListTowablesProvider({
    String? plateNumber,
    bool? archived,
    int? first,
    int? max,
  }) : this._internal(
          (ref) => listTowables(
            ref as ListTowablesRef,
            plateNumber: plateNumber,
            archived: archived,
            first: first,
            max: max,
          ),
          from: listTowablesProvider,
          name: r'listTowablesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listTowablesHash,
          dependencies: ListTowablesFamily._dependencies,
          allTransitiveDependencies:
              ListTowablesFamily._allTransitiveDependencies,
          plateNumber: plateNumber,
          archived: archived,
          first: first,
          max: max,
        );

  ListTowablesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.plateNumber,
    required this.archived,
    required this.first,
    required this.max,
  }) : super.internal();

  final String? plateNumber;
  final bool? archived;
  final int? first;
  final int? max;

  @override
  Override overrideWith(
    FutureOr<List<Towable>> Function(ListTowablesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListTowablesProvider._internal(
        (ref) => create(ref as ListTowablesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        plateNumber: plateNumber,
        archived: archived,
        first: first,
        max: max,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Towable>> createElement() {
    return _ListTowablesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListTowablesProvider &&
        other.plateNumber == plateNumber &&
        other.archived == archived &&
        other.first == first &&
        other.max == max;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, plateNumber.hashCode);
    hash = _SystemHash.combine(hash, archived.hashCode);
    hash = _SystemHash.combine(hash, first.hashCode);
    hash = _SystemHash.combine(hash, max.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ListTowablesRef on AutoDisposeFutureProviderRef<List<Towable>> {
  /// The parameter `plateNumber` of this provider.
  String? get plateNumber;

  /// The parameter `archived` of this provider.
  bool? get archived;

  /// The parameter `first` of this provider.
  int? get first;

  /// The parameter `max` of this provider.
  int? get max;
}

class _ListTowablesProviderElement
    extends AutoDisposeFutureProviderElement<List<Towable>>
    with ListTowablesRef {
  _ListTowablesProviderElement(super.provider);

  @override
  String? get plateNumber => (origin as ListTowablesProvider).plateNumber;
  @override
  bool? get archived => (origin as ListTowablesProvider).archived;
  @override
  int? get first => (origin as ListTowablesProvider).first;
  @override
  int? get max => (origin as ListTowablesProvider).max;
}

String _$findTowableHash() => r'b20afa1d44de71e1640d6e61fd9dd25eee802d5a';

/// See also [findTowable].
@ProviderFor(findTowable)
const findTowableProvider = FindTowableFamily();

/// See also [findTowable].
class FindTowableFamily extends Family<AsyncValue<Towable>> {
  /// See also [findTowable].
  const FindTowableFamily();

  /// See also [findTowable].
  FindTowableProvider call(
    String towableId,
  ) {
    return FindTowableProvider(
      towableId,
    );
  }

  @override
  FindTowableProvider getProviderOverride(
    covariant FindTowableProvider provider,
  ) {
    return call(
      provider.towableId,
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
  String? get name => r'findTowableProvider';
}

/// See also [findTowable].
class FindTowableProvider extends AutoDisposeFutureProvider<Towable> {
  /// See also [findTowable].
  FindTowableProvider(
    String towableId,
  ) : this._internal(
          (ref) => findTowable(
            ref as FindTowableRef,
            towableId,
          ),
          from: findTowableProvider,
          name: r'findTowableProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$findTowableHash,
          dependencies: FindTowableFamily._dependencies,
          allTransitiveDependencies:
              FindTowableFamily._allTransitiveDependencies,
          towableId: towableId,
        );

  FindTowableProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.towableId,
  }) : super.internal();

  final String towableId;

  @override
  Override overrideWith(
    FutureOr<Towable> Function(FindTowableRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FindTowableProvider._internal(
        (ref) => create(ref as FindTowableRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        towableId: towableId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Towable> createElement() {
    return _FindTowableProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FindTowableProvider && other.towableId == towableId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, towableId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FindTowableRef on AutoDisposeFutureProviderRef<Towable> {
  /// The parameter `towableId` of this provider.
  String get towableId;
}

class _FindTowableProviderElement
    extends AutoDisposeFutureProviderElement<Towable> with FindTowableRef {
  _FindTowableProviderElement(super.provider);

  @override
  String get towableId => (origin as FindTowableProvider).towableId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
