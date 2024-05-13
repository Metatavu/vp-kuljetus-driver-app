// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_details_screen_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchTaskDetailsScreenDataHash() =>
    r'69c15fca80b6e21ef546b12a58c47e2feea0320e';

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

/// See also [fetchTaskDetailsScreenData].
@ProviderFor(fetchTaskDetailsScreenData)
const fetchTaskDetailsScreenDataProvider = FetchTaskDetailsScreenDataFamily();

/// See also [fetchTaskDetailsScreenData].
class FetchTaskDetailsScreenDataFamily
    extends Family<AsyncValue<TaskDetailsScreenData>> {
  /// See also [fetchTaskDetailsScreenData].
  const FetchTaskDetailsScreenDataFamily();

  /// See also [fetchTaskDetailsScreenData].
  FetchTaskDetailsScreenDataProvider call(
    TaskIdList taskIdList,
  ) {
    return FetchTaskDetailsScreenDataProvider(
      taskIdList,
    );
  }

  @override
  FetchTaskDetailsScreenDataProvider getProviderOverride(
    covariant FetchTaskDetailsScreenDataProvider provider,
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
  String? get name => r'fetchTaskDetailsScreenDataProvider';
}

/// See also [fetchTaskDetailsScreenData].
class FetchTaskDetailsScreenDataProvider
    extends AutoDisposeFutureProvider<TaskDetailsScreenData> {
  /// See also [fetchTaskDetailsScreenData].
  FetchTaskDetailsScreenDataProvider(
    TaskIdList taskIdList,
  ) : this._internal(
          (ref) => fetchTaskDetailsScreenData(
            ref as FetchTaskDetailsScreenDataRef,
            taskIdList,
          ),
          from: fetchTaskDetailsScreenDataProvider,
          name: r'fetchTaskDetailsScreenDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchTaskDetailsScreenDataHash,
          dependencies: FetchTaskDetailsScreenDataFamily._dependencies,
          allTransitiveDependencies:
              FetchTaskDetailsScreenDataFamily._allTransitiveDependencies,
          taskIdList: taskIdList,
        );

  FetchTaskDetailsScreenDataProvider._internal(
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
  Override overrideWith(
    FutureOr<TaskDetailsScreenData> Function(
            FetchTaskDetailsScreenDataRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchTaskDetailsScreenDataProvider._internal(
        (ref) => create(ref as FetchTaskDetailsScreenDataRef),
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
  AutoDisposeFutureProviderElement<TaskDetailsScreenData> createElement() {
    return _FetchTaskDetailsScreenDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchTaskDetailsScreenDataProvider &&
        other.taskIdList == taskIdList;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskIdList.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchTaskDetailsScreenDataRef
    on AutoDisposeFutureProviderRef<TaskDetailsScreenData> {
  /// The parameter `taskIdList` of this provider.
  TaskIdList get taskIdList;
}

class _FetchTaskDetailsScreenDataProviderElement
    extends AutoDisposeFutureProviderElement<TaskDetailsScreenData>
    with FetchTaskDetailsScreenDataRef {
  _FetchTaskDetailsScreenDataProviderElement(super.provider);

  @override
  TaskIdList get taskIdList =>
      (origin as FetchTaskDetailsScreenDataProvider).taskIdList;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
