// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_states_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listDriveStatesHash() => r'e19ba29fe53d6883d91fbdf4dc1677f320a797b8';

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

/// See also [listDriveStates].
@ProviderFor(listDriveStates)
const listDriveStatesProvider = ListDriveStatesFamily();

/// See also [listDriveStates].
class ListDriveStatesFamily extends Family<AsyncValue<List<TruckDriveState>>> {
  /// See also [listDriveStates].
  const ListDriveStatesFamily();

  /// See also [listDriveStates].
  ListDriveStatesProvider call({
    required String truckId,
    String? driverId,
    List<TruckDriveState>? states,
    DateTime? after,
    DateTime? before,
    int? first,
    int? max,
  }) {
    return ListDriveStatesProvider(
      truckId: truckId,
      driverId: driverId,
      states: states,
      after: after,
      before: before,
      first: first,
      max: max,
    );
  }

  @override
  ListDriveStatesProvider getProviderOverride(
    covariant ListDriveStatesProvider provider,
  ) {
    return call(
      truckId: provider.truckId,
      driverId: provider.driverId,
      states: provider.states,
      after: provider.after,
      before: provider.before,
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
  String? get name => r'listDriveStatesProvider';
}

/// See also [listDriveStates].
class ListDriveStatesProvider
    extends AutoDisposeFutureProvider<List<TruckDriveState>> {
  /// See also [listDriveStates].
  ListDriveStatesProvider({
    required String truckId,
    String? driverId,
    List<TruckDriveState>? states,
    DateTime? after,
    DateTime? before,
    int? first,
    int? max,
  }) : this._internal(
          (ref) => listDriveStates(
            ref as ListDriveStatesRef,
            truckId: truckId,
            driverId: driverId,
            states: states,
            after: after,
            before: before,
            first: first,
            max: max,
          ),
          from: listDriveStatesProvider,
          name: r'listDriveStatesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listDriveStatesHash,
          dependencies: ListDriveStatesFamily._dependencies,
          allTransitiveDependencies:
              ListDriveStatesFamily._allTransitiveDependencies,
          truckId: truckId,
          driverId: driverId,
          states: states,
          after: after,
          before: before,
          first: first,
          max: max,
        );

  ListDriveStatesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.truckId,
    required this.driverId,
    required this.states,
    required this.after,
    required this.before,
    required this.first,
    required this.max,
  }) : super.internal();

  final String truckId;
  final String? driverId;
  final List<TruckDriveState>? states;
  final DateTime? after;
  final DateTime? before;
  final int? first;
  final int? max;

  @override
  Override overrideWith(
    FutureOr<List<TruckDriveState>> Function(ListDriveStatesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListDriveStatesProvider._internal(
        (ref) => create(ref as ListDriveStatesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        truckId: truckId,
        driverId: driverId,
        states: states,
        after: after,
        before: before,
        first: first,
        max: max,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<TruckDriveState>> createElement() {
    return _ListDriveStatesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListDriveStatesProvider &&
        other.truckId == truckId &&
        other.driverId == driverId &&
        other.states == states &&
        other.after == after &&
        other.before == before &&
        other.first == first &&
        other.max == max;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, truckId.hashCode);
    hash = _SystemHash.combine(hash, driverId.hashCode);
    hash = _SystemHash.combine(hash, states.hashCode);
    hash = _SystemHash.combine(hash, after.hashCode);
    hash = _SystemHash.combine(hash, before.hashCode);
    hash = _SystemHash.combine(hash, first.hashCode);
    hash = _SystemHash.combine(hash, max.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ListDriveStatesRef
    on AutoDisposeFutureProviderRef<List<TruckDriveState>> {
  /// The parameter `truckId` of this provider.
  String get truckId;

  /// The parameter `driverId` of this provider.
  String? get driverId;

  /// The parameter `states` of this provider.
  List<TruckDriveState>? get states;

  /// The parameter `after` of this provider.
  DateTime? get after;

  /// The parameter `before` of this provider.
  DateTime? get before;

  /// The parameter `first` of this provider.
  int? get first;

  /// The parameter `max` of this provider.
  int? get max;
}

class _ListDriveStatesProviderElement
    extends AutoDisposeFutureProviderElement<List<TruckDriveState>>
    with ListDriveStatesRef {
  _ListDriveStatesProviderElement(super.provider);

  @override
  String get truckId => (origin as ListDriveStatesProvider).truckId;
  @override
  String? get driverId => (origin as ListDriveStatesProvider).driverId;
  @override
  List<TruckDriveState>? get states =>
      (origin as ListDriveStatesProvider).states;
  @override
  DateTime? get after => (origin as ListDriveStatesProvider).after;
  @override
  DateTime? get before => (origin as ListDriveStatesProvider).before;
  @override
  int? get first => (origin as ListDriveStatesProvider).first;
  @override
  int? get max => (origin as ListDriveStatesProvider).max;
}

String _$listSessionDriveStatesWithTasksHash() =>
    r'dc9a9f59d725cd9269bbfc1f917ee6f22114dd85';

abstract class _$ListSessionDriveStatesWithTasks
    extends BuildlessAutoDisposeAsyncNotifier<
        Iterable<DriveStateWithTaskType>> {
  late final String truckId;
  late final String driverId;
  late final int sessionStartedAt;

  FutureOr<Iterable<DriveStateWithTaskType>> build({
    required String truckId,
    required String driverId,
    required int sessionStartedAt,
  });
}

/// See also [ListSessionDriveStatesWithTasks].
@ProviderFor(ListSessionDriveStatesWithTasks)
const listSessionDriveStatesWithTasksProvider =
    ListSessionDriveStatesWithTasksFamily();

/// See also [ListSessionDriveStatesWithTasks].
class ListSessionDriveStatesWithTasksFamily
    extends Family<AsyncValue<Iterable<DriveStateWithTaskType>>> {
  /// See also [ListSessionDriveStatesWithTasks].
  const ListSessionDriveStatesWithTasksFamily();

  /// See also [ListSessionDriveStatesWithTasks].
  ListSessionDriveStatesWithTasksProvider call({
    required String truckId,
    required String driverId,
    required int sessionStartedAt,
  }) {
    return ListSessionDriveStatesWithTasksProvider(
      truckId: truckId,
      driverId: driverId,
      sessionStartedAt: sessionStartedAt,
    );
  }

  @override
  ListSessionDriveStatesWithTasksProvider getProviderOverride(
    covariant ListSessionDriveStatesWithTasksProvider provider,
  ) {
    return call(
      truckId: provider.truckId,
      driverId: provider.driverId,
      sessionStartedAt: provider.sessionStartedAt,
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
  String? get name => r'listSessionDriveStatesWithTasksProvider';
}

/// See also [ListSessionDriveStatesWithTasks].
class ListSessionDriveStatesWithTasksProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ListSessionDriveStatesWithTasks, Iterable<DriveStateWithTaskType>> {
  /// See also [ListSessionDriveStatesWithTasks].
  ListSessionDriveStatesWithTasksProvider({
    required String truckId,
    required String driverId,
    required int sessionStartedAt,
  }) : this._internal(
          () => ListSessionDriveStatesWithTasks()
            ..truckId = truckId
            ..driverId = driverId
            ..sessionStartedAt = sessionStartedAt,
          from: listSessionDriveStatesWithTasksProvider,
          name: r'listSessionDriveStatesWithTasksProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listSessionDriveStatesWithTasksHash,
          dependencies: ListSessionDriveStatesWithTasksFamily._dependencies,
          allTransitiveDependencies:
              ListSessionDriveStatesWithTasksFamily._allTransitiveDependencies,
          truckId: truckId,
          driverId: driverId,
          sessionStartedAt: sessionStartedAt,
        );

  ListSessionDriveStatesWithTasksProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.truckId,
    required this.driverId,
    required this.sessionStartedAt,
  }) : super.internal();

  final String truckId;
  final String driverId;
  final int sessionStartedAt;

  @override
  FutureOr<Iterable<DriveStateWithTaskType>> runNotifierBuild(
    covariant ListSessionDriveStatesWithTasks notifier,
  ) {
    return notifier.build(
      truckId: truckId,
      driverId: driverId,
      sessionStartedAt: sessionStartedAt,
    );
  }

  @override
  Override overrideWith(ListSessionDriveStatesWithTasks Function() create) {
    return ProviderOverride(
      origin: this,
      override: ListSessionDriveStatesWithTasksProvider._internal(
        () => create()
          ..truckId = truckId
          ..driverId = driverId
          ..sessionStartedAt = sessionStartedAt,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        truckId: truckId,
        driverId: driverId,
        sessionStartedAt: sessionStartedAt,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ListSessionDriveStatesWithTasks,
      Iterable<DriveStateWithTaskType>> createElement() {
    return _ListSessionDriveStatesWithTasksProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListSessionDriveStatesWithTasksProvider &&
        other.truckId == truckId &&
        other.driverId == driverId &&
        other.sessionStartedAt == sessionStartedAt;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, truckId.hashCode);
    hash = _SystemHash.combine(hash, driverId.hashCode);
    hash = _SystemHash.combine(hash, sessionStartedAt.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ListSessionDriveStatesWithTasksRef
    on AutoDisposeAsyncNotifierProviderRef<Iterable<DriveStateWithTaskType>> {
  /// The parameter `truckId` of this provider.
  String get truckId;

  /// The parameter `driverId` of this provider.
  String get driverId;

  /// The parameter `sessionStartedAt` of this provider.
  int get sessionStartedAt;
}

class _ListSessionDriveStatesWithTasksProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        ListSessionDriveStatesWithTasks, Iterable<DriveStateWithTaskType>>
    with ListSessionDriveStatesWithTasksRef {
  _ListSessionDriveStatesWithTasksProviderElement(super.provider);

  @override
  String get truckId =>
      (origin as ListSessionDriveStatesWithTasksProvider).truckId;
  @override
  String get driverId =>
      (origin as ListSessionDriveStatesWithTasksProvider).driverId;
  @override
  int get sessionStartedAt =>
      (origin as ListSessionDriveStatesWithTasksProvider).sessionStartedAt;
}

String _$watchDriveStatesHash() => r'48992651c1146c1145b288c4a680d2725a026597';

abstract class _$WatchDriveStates
    extends BuildlessAutoDisposeStreamNotifier<List<TruckDriveState>> {
  late final String truckId;
  late final String driverId;
  late final DateTime after;

  Stream<List<TruckDriveState>> build({
    required String truckId,
    required String driverId,
    required DateTime after,
  });
}

/// See also [WatchDriveStates].
@ProviderFor(WatchDriveStates)
const watchDriveStatesProvider = WatchDriveStatesFamily();

/// See also [WatchDriveStates].
class WatchDriveStatesFamily extends Family<AsyncValue<List<TruckDriveState>>> {
  /// See also [WatchDriveStates].
  const WatchDriveStatesFamily();

  /// See also [WatchDriveStates].
  WatchDriveStatesProvider call({
    required String truckId,
    required String driverId,
    required DateTime after,
  }) {
    return WatchDriveStatesProvider(
      truckId: truckId,
      driverId: driverId,
      after: after,
    );
  }

  @override
  WatchDriveStatesProvider getProviderOverride(
    covariant WatchDriveStatesProvider provider,
  ) {
    return call(
      truckId: provider.truckId,
      driverId: provider.driverId,
      after: provider.after,
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
  String? get name => r'watchDriveStatesProvider';
}

/// See also [WatchDriveStates].
class WatchDriveStatesProvider extends AutoDisposeStreamNotifierProviderImpl<
    WatchDriveStates, List<TruckDriveState>> {
  /// See also [WatchDriveStates].
  WatchDriveStatesProvider({
    required String truckId,
    required String driverId,
    required DateTime after,
  }) : this._internal(
          () => WatchDriveStates()
            ..truckId = truckId
            ..driverId = driverId
            ..after = after,
          from: watchDriveStatesProvider,
          name: r'watchDriveStatesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchDriveStatesHash,
          dependencies: WatchDriveStatesFamily._dependencies,
          allTransitiveDependencies:
              WatchDriveStatesFamily._allTransitiveDependencies,
          truckId: truckId,
          driverId: driverId,
          after: after,
        );

  WatchDriveStatesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.truckId,
    required this.driverId,
    required this.after,
  }) : super.internal();

  final String truckId;
  final String driverId;
  final DateTime after;

  @override
  Stream<List<TruckDriveState>> runNotifierBuild(
    covariant WatchDriveStates notifier,
  ) {
    return notifier.build(
      truckId: truckId,
      driverId: driverId,
      after: after,
    );
  }

  @override
  Override overrideWith(WatchDriveStates Function() create) {
    return ProviderOverride(
      origin: this,
      override: WatchDriveStatesProvider._internal(
        () => create()
          ..truckId = truckId
          ..driverId = driverId
          ..after = after,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        truckId: truckId,
        driverId: driverId,
        after: after,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<WatchDriveStates,
      List<TruckDriveState>> createElement() {
    return _WatchDriveStatesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchDriveStatesProvider &&
        other.truckId == truckId &&
        other.driverId == driverId &&
        other.after == after;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, truckId.hashCode);
    hash = _SystemHash.combine(hash, driverId.hashCode);
    hash = _SystemHash.combine(hash, after.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WatchDriveStatesRef
    on AutoDisposeStreamNotifierProviderRef<List<TruckDriveState>> {
  /// The parameter `truckId` of this provider.
  String get truckId;

  /// The parameter `driverId` of this provider.
  String get driverId;

  /// The parameter `after` of this provider.
  DateTime get after;
}

class _WatchDriveStatesProviderElement
    extends AutoDisposeStreamNotifierProviderElement<WatchDriveStates,
        List<TruckDriveState>> with WatchDriveStatesRef {
  _WatchDriveStatesProviderElement(super.provider);

  @override
  String get truckId => (origin as WatchDriveStatesProvider).truckId;
  @override
  String get driverId => (origin as WatchDriveStatesProvider).driverId;
  @override
  DateTime get after => (origin as WatchDriveStatesProvider).after;
}

String _$watchTaskGroupTimestampsHash() =>
    r'1e30a6411cce3d760dd1e4392f22f1f6a4a2c7fd';

/// See also [WatchTaskGroupTimestamps].
@ProviderFor(WatchTaskGroupTimestamps)
final watchTaskGroupTimestampsProvider = AutoDisposeStreamNotifierProvider<
    WatchTaskGroupTimestamps, List<TaskGroupTimestamps>>.internal(
  WatchTaskGroupTimestamps.new,
  name: r'watchTaskGroupTimestampsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$watchTaskGroupTimestampsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WatchTaskGroupTimestamps
    = AutoDisposeStreamNotifier<List<TaskGroupTimestamps>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
