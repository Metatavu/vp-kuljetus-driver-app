// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_events_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workEventsHash() => r'bfb8f28ba1a494b89c996fd50f4b557b8d4eccdc';

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

abstract class _$WorkEvents
    extends BuildlessAutoDisposeAsyncNotifier<List<WorkEvent>> {
  late final String? employeeId;

  FutureOr<List<WorkEvent>> build(
    String? employeeId,
  );
}

/// See also [WorkEvents].
@ProviderFor(WorkEvents)
const workEventsProvider = WorkEventsFamily();

/// See also [WorkEvents].
class WorkEventsFamily extends Family<AsyncValue<List<WorkEvent>>> {
  /// See also [WorkEvents].
  const WorkEventsFamily();

  /// See also [WorkEvents].
  WorkEventsProvider call(
    String? employeeId,
  ) {
    return WorkEventsProvider(
      employeeId,
    );
  }

  @override
  WorkEventsProvider getProviderOverride(
    covariant WorkEventsProvider provider,
  ) {
    return call(
      provider.employeeId,
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
  String? get name => r'workEventsProvider';
}

/// See also [WorkEvents].
class WorkEventsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<WorkEvents, List<WorkEvent>> {
  /// See also [WorkEvents].
  WorkEventsProvider(
    String? employeeId,
  ) : this._internal(
          () => WorkEvents()..employeeId = employeeId,
          from: workEventsProvider,
          name: r'workEventsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$workEventsHash,
          dependencies: WorkEventsFamily._dependencies,
          allTransitiveDependencies:
              WorkEventsFamily._allTransitiveDependencies,
          employeeId: employeeId,
        );

  WorkEventsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.employeeId,
  }) : super.internal();

  final String? employeeId;

  @override
  FutureOr<List<WorkEvent>> runNotifierBuild(
    covariant WorkEvents notifier,
  ) {
    return notifier.build(
      employeeId,
    );
  }

  @override
  Override overrideWith(WorkEvents Function() create) {
    return ProviderOverride(
      origin: this,
      override: WorkEventsProvider._internal(
        () => create()..employeeId = employeeId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        employeeId: employeeId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<WorkEvents, List<WorkEvent>>
      createElement() {
    return _WorkEventsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkEventsProvider && other.employeeId == employeeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, employeeId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WorkEventsRef on AutoDisposeAsyncNotifierProviderRef<List<WorkEvent>> {
  /// The parameter `employeeId` of this provider.
  String? get employeeId;
}

class _WorkEventsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<WorkEvents, List<WorkEvent>>
    with WorkEventsRef {
  _WorkEventsProviderElement(super.provider);

  @override
  String? get employeeId => (origin as WorkEventsProvider).employeeId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
