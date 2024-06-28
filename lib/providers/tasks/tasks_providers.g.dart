// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listTasksHash() => r'50e63148ee7a7b7e36eb05d0e7eaac3798c30bad';

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

/// See also [listTasks].
@ProviderFor(listTasks)
const listTasksProvider = ListTasksFamily();

/// See also [listTasks].
class ListTasksFamily extends Family<AsyncValue<List<Task>>> {
  /// See also [listTasks].
  const ListTasksFamily();

  /// See also [listTasks].
  ListTasksProvider call({
    required String routeId,
    String? customerSiteId,
    String? freightId,
    TaskType? taskType,
    bool? assignedToRoute,
    int? first,
    int? max,
  }) {
    return ListTasksProvider(
      routeId: routeId,
      customerSiteId: customerSiteId,
      freightId: freightId,
      taskType: taskType,
      assignedToRoute: assignedToRoute,
      first: first,
      max: max,
    );
  }

  @override
  ListTasksProvider getProviderOverride(
    covariant ListTasksProvider provider,
  ) {
    return call(
      routeId: provider.routeId,
      customerSiteId: provider.customerSiteId,
      freightId: provider.freightId,
      taskType: provider.taskType,
      assignedToRoute: provider.assignedToRoute,
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
  String? get name => r'listTasksProvider';
}

/// See also [listTasks].
class ListTasksProvider extends AutoDisposeFutureProvider<List<Task>> {
  /// See also [listTasks].
  ListTasksProvider({
    required String routeId,
    String? customerSiteId,
    String? freightId,
    TaskType? taskType,
    bool? assignedToRoute,
    int? first,
    int? max,
  }) : this._internal(
          (ref) => listTasks(
            ref as ListTasksRef,
            routeId: routeId,
            customerSiteId: customerSiteId,
            freightId: freightId,
            taskType: taskType,
            assignedToRoute: assignedToRoute,
            first: first,
            max: max,
          ),
          from: listTasksProvider,
          name: r'listTasksProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listTasksHash,
          dependencies: ListTasksFamily._dependencies,
          allTransitiveDependencies: ListTasksFamily._allTransitiveDependencies,
          routeId: routeId,
          customerSiteId: customerSiteId,
          freightId: freightId,
          taskType: taskType,
          assignedToRoute: assignedToRoute,
          first: first,
          max: max,
        );

  ListTasksProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.routeId,
    required this.customerSiteId,
    required this.freightId,
    required this.taskType,
    required this.assignedToRoute,
    required this.first,
    required this.max,
  }) : super.internal();

  final String routeId;
  final String? customerSiteId;
  final String? freightId;
  final TaskType? taskType;
  final bool? assignedToRoute;
  final int? first;
  final int? max;

  @override
  Override overrideWith(
    FutureOr<List<Task>> Function(ListTasksRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListTasksProvider._internal(
        (ref) => create(ref as ListTasksRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        routeId: routeId,
        customerSiteId: customerSiteId,
        freightId: freightId,
        taskType: taskType,
        assignedToRoute: assignedToRoute,
        first: first,
        max: max,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Task>> createElement() {
    return _ListTasksProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListTasksProvider &&
        other.routeId == routeId &&
        other.customerSiteId == customerSiteId &&
        other.freightId == freightId &&
        other.taskType == taskType &&
        other.assignedToRoute == assignedToRoute &&
        other.first == first &&
        other.max == max;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, routeId.hashCode);
    hash = _SystemHash.combine(hash, customerSiteId.hashCode);
    hash = _SystemHash.combine(hash, freightId.hashCode);
    hash = _SystemHash.combine(hash, taskType.hashCode);
    hash = _SystemHash.combine(hash, assignedToRoute.hashCode);
    hash = _SystemHash.combine(hash, first.hashCode);
    hash = _SystemHash.combine(hash, max.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ListTasksRef on AutoDisposeFutureProviderRef<List<Task>> {
  /// The parameter `routeId` of this provider.
  String get routeId;

  /// The parameter `customerSiteId` of this provider.
  String? get customerSiteId;

  /// The parameter `freightId` of this provider.
  String? get freightId;

  /// The parameter `taskType` of this provider.
  TaskType? get taskType;

  /// The parameter `assignedToRoute` of this provider.
  bool? get assignedToRoute;

  /// The parameter `first` of this provider.
  int? get first;

  /// The parameter `max` of this provider.
  int? get max;
}

class _ListTasksProviderElement
    extends AutoDisposeFutureProviderElement<List<Task>> with ListTasksRef {
  _ListTasksProviderElement(super.provider);

  @override
  String get routeId => (origin as ListTasksProvider).routeId;
  @override
  String? get customerSiteId => (origin as ListTasksProvider).customerSiteId;
  @override
  String? get freightId => (origin as ListTasksProvider).freightId;
  @override
  TaskType? get taskType => (origin as ListTasksProvider).taskType;
  @override
  bool? get assignedToRoute => (origin as ListTasksProvider).assignedToRoute;
  @override
  int? get first => (origin as ListTasksProvider).first;
  @override
  int? get max => (origin as ListTasksProvider).max;
}

String _$findTaskHash() => r'dc95f8887f0b25b4e857babd0dc28bc2925abcb4';

/// See also [findTask].
@ProviderFor(findTask)
const findTaskProvider = FindTaskFamily();

/// See also [findTask].
class FindTaskFamily extends Family<AsyncValue<Task>> {
  /// See also [findTask].
  const FindTaskFamily();

  /// See also [findTask].
  FindTaskProvider call(
    String taskId,
  ) {
    return FindTaskProvider(
      taskId,
    );
  }

  @override
  FindTaskProvider getProviderOverride(
    covariant FindTaskProvider provider,
  ) {
    return call(
      provider.taskId,
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
  String? get name => r'findTaskProvider';
}

/// See also [findTask].
class FindTaskProvider extends AutoDisposeFutureProvider<Task> {
  /// See also [findTask].
  FindTaskProvider(
    String taskId,
  ) : this._internal(
          (ref) => findTask(
            ref as FindTaskRef,
            taskId,
          ),
          from: findTaskProvider,
          name: r'findTaskProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$findTaskHash,
          dependencies: FindTaskFamily._dependencies,
          allTransitiveDependencies: FindTaskFamily._allTransitiveDependencies,
          taskId: taskId,
        );

  FindTaskProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.taskId,
  }) : super.internal();

  final String taskId;

  @override
  Override overrideWith(
    FutureOr<Task> Function(FindTaskRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FindTaskProvider._internal(
        (ref) => create(ref as FindTaskRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        taskId: taskId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Task> createElement() {
    return _FindTaskProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FindTaskProvider && other.taskId == taskId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FindTaskRef on AutoDisposeFutureProviderRef<Task> {
  /// The parameter `taskId` of this provider.
  String get taskId;
}

class _FindTaskProviderElement extends AutoDisposeFutureProviderElement<Task>
    with FindTaskRef {
  _FindTaskProviderElement(super.provider);

  @override
  String get taskId => (origin as FindTaskProvider).taskId;
}

String _$updateTaskHash() => r'c71d4a97aa7b02feda7649a67fc1acc22c6dad09';

abstract class _$UpdateTask extends BuildlessAutoDisposeNotifier<Object?> {
  late final String taskId;

  Object? build(
    String taskId,
  );
}

/// See also [UpdateTask].
@ProviderFor(UpdateTask)
const updateTaskProvider = UpdateTaskFamily();

/// See also [UpdateTask].
class UpdateTaskFamily extends Family<Object?> {
  /// See also [UpdateTask].
  const UpdateTaskFamily();

  /// See also [UpdateTask].
  UpdateTaskProvider call(
    String taskId,
  ) {
    return UpdateTaskProvider(
      taskId,
    );
  }

  @override
  UpdateTaskProvider getProviderOverride(
    covariant UpdateTaskProvider provider,
  ) {
    return call(
      provider.taskId,
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
  String? get name => r'updateTaskProvider';
}

/// See also [UpdateTask].
class UpdateTaskProvider
    extends AutoDisposeNotifierProviderImpl<UpdateTask, Object?> {
  /// See also [UpdateTask].
  UpdateTaskProvider(
    String taskId,
  ) : this._internal(
          () => UpdateTask()..taskId = taskId,
          from: updateTaskProvider,
          name: r'updateTaskProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateTaskHash,
          dependencies: UpdateTaskFamily._dependencies,
          allTransitiveDependencies:
              UpdateTaskFamily._allTransitiveDependencies,
          taskId: taskId,
        );

  UpdateTaskProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.taskId,
  }) : super.internal();

  final String taskId;

  @override
  Object? runNotifierBuild(
    covariant UpdateTask notifier,
  ) {
    return notifier.build(
      taskId,
    );
  }

  @override
  Override overrideWith(UpdateTask Function() create) {
    return ProviderOverride(
      origin: this,
      override: UpdateTaskProvider._internal(
        () => create()..taskId = taskId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        taskId: taskId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<UpdateTask, Object?> createElement() {
    return _UpdateTaskProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateTaskProvider && other.taskId == taskId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateTaskRef on AutoDisposeNotifierProviderRef<Object?> {
  /// The parameter `taskId` of this provider.
  String get taskId;
}

class _UpdateTaskProviderElement
    extends AutoDisposeNotifierProviderElement<UpdateTask, Object?>
    with UpdateTaskRef {
  _UpdateTaskProviderElement(super.provider);

  @override
  String get taskId => (origin as UpdateTaskProvider).taskId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
