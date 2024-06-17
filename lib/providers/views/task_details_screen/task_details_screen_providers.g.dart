// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_details_screen_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskDetailsScreenDataHash() =>
    r'a79c23ea90e1029d69e2a7f124f1c472c9051347';

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

abstract class _$TaskDetailsScreenData
    extends BuildlessAutoDisposeAsyncNotifier<TaskDetailsScreenModel> {
  late final TaskIdList taskIdList;

  FutureOr<TaskDetailsScreenModel> build(
    TaskIdList taskIdList,
  );
}

/// See also [TaskDetailsScreenData].
@ProviderFor(TaskDetailsScreenData)
const taskDetailsScreenDataProvider = TaskDetailsScreenDataFamily();

/// See also [TaskDetailsScreenData].
class TaskDetailsScreenDataFamily
    extends Family<AsyncValue<TaskDetailsScreenModel>> {
  /// See also [TaskDetailsScreenData].
  const TaskDetailsScreenDataFamily();

  /// See also [TaskDetailsScreenData].
  TaskDetailsScreenDataProvider call(
    TaskIdList taskIdList,
  ) {
    return TaskDetailsScreenDataProvider(
      taskIdList,
    );
  }

  @override
  TaskDetailsScreenDataProvider getProviderOverride(
    covariant TaskDetailsScreenDataProvider provider,
  ) {
    return call(
      provider.taskIdList,
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
  String? get name => r'taskDetailsScreenDataProvider';
}

/// See also [TaskDetailsScreenData].
class TaskDetailsScreenDataProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TaskDetailsScreenData,
        TaskDetailsScreenModel> {
  /// See also [TaskDetailsScreenData].
  TaskDetailsScreenDataProvider(
    TaskIdList taskIdList,
  ) : this._internal(
          () => TaskDetailsScreenData()..taskIdList = taskIdList,
          from: taskDetailsScreenDataProvider,
          name: r'taskDetailsScreenDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$taskDetailsScreenDataHash,
          dependencies: TaskDetailsScreenDataFamily._dependencies,
          allTransitiveDependencies:
              TaskDetailsScreenDataFamily._allTransitiveDependencies,
          taskIdList: taskIdList,
        );

  TaskDetailsScreenDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.taskIdList,
  }) : super.internal();

  final TaskIdList taskIdList;

  @override
  FutureOr<TaskDetailsScreenModel> runNotifierBuild(
    covariant TaskDetailsScreenData notifier,
  ) {
    return notifier.build(
      taskIdList,
    );
  }

  @override
  Override overrideWith(TaskDetailsScreenData Function() create) {
    return ProviderOverride(
      origin: this,
      override: TaskDetailsScreenDataProvider._internal(
        () => create()..taskIdList = taskIdList,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        taskIdList: taskIdList,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TaskDetailsScreenData,
      TaskDetailsScreenModel> createElement() {
    return _TaskDetailsScreenDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TaskDetailsScreenDataProvider &&
        other.taskIdList == taskIdList;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskIdList.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TaskDetailsScreenDataRef
    on AutoDisposeAsyncNotifierProviderRef<TaskDetailsScreenModel> {
  /// The parameter `taskIdList` of this provider.
  TaskIdList get taskIdList;
}

class _TaskDetailsScreenDataProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TaskDetailsScreenData,
        TaskDetailsScreenModel> with TaskDetailsScreenDataRef {
  _TaskDetailsScreenDataProviderElement(super.provider);

  @override
  TaskIdList get taskIdList =>
      (origin as TaskDetailsScreenDataProvider).taskIdList;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
