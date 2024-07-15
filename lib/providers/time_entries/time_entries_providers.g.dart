// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_entries_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timeEntriesHash() => r'd364c1d6f79d6693bfec6c68a31ee8710aad6def';

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

abstract class _$TimeEntries
    extends BuildlessAutoDisposeAsyncNotifier<List<TimeEntry>> {
  late final String employeeId;

  FutureOr<List<TimeEntry>> build(
    String employeeId,
  );
}

/// See also [TimeEntries].
@ProviderFor(TimeEntries)
const timeEntriesProvider = TimeEntriesFamily();

/// See also [TimeEntries].
class TimeEntriesFamily extends Family<AsyncValue<List<TimeEntry>>> {
  /// See also [TimeEntries].
  const TimeEntriesFamily();

  /// See also [TimeEntries].
  TimeEntriesProvider call(
    String employeeId,
  ) {
    return TimeEntriesProvider(
      employeeId,
    );
  }

  @override
  TimeEntriesProvider getProviderOverride(
    covariant TimeEntriesProvider provider,
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
  String? get name => r'timeEntriesProvider';
}

/// See also [TimeEntries].
class TimeEntriesProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TimeEntries, List<TimeEntry>> {
  /// See also [TimeEntries].
  TimeEntriesProvider(
    String employeeId,
  ) : this._internal(
          () => TimeEntries()..employeeId = employeeId,
          from: timeEntriesProvider,
          name: r'timeEntriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$timeEntriesHash,
          dependencies: TimeEntriesFamily._dependencies,
          allTransitiveDependencies:
              TimeEntriesFamily._allTransitiveDependencies,
          employeeId: employeeId,
        );

  TimeEntriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.employeeId,
  }) : super.internal();

  final String employeeId;

  @override
  FutureOr<List<TimeEntry>> runNotifierBuild(
    covariant TimeEntries notifier,
  ) {
    return notifier.build(
      employeeId,
    );
  }

  @override
  Override overrideWith(TimeEntries Function() create) {
    return ProviderOverride(
      origin: this,
      override: TimeEntriesProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<TimeEntries, List<TimeEntry>>
      createElement() {
    return _TimeEntriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TimeEntriesProvider && other.employeeId == employeeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, employeeId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TimeEntriesRef on AutoDisposeAsyncNotifierProviderRef<List<TimeEntry>> {
  /// The parameter `employeeId` of this provider.
  String get employeeId;
}

class _TimeEntriesProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TimeEntries,
        List<TimeEntry>> with TimeEntriesRef {
  _TimeEntriesProviderElement(super.provider);

  @override
  String get employeeId => (origin as TimeEntriesProvider).employeeId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
