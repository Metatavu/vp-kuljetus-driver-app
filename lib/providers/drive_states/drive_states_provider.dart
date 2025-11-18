import "dart:async";
import "dart:developer";

import "package:built_collection/built_collection.dart";
import "package:collection/collection.dart";
import "package:dio/dio.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/models/task_group_timestamps/task_group_timestamps.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";
import "package:vp_kuljetus_driver_app/utils/drive_state.dart";
import "package:vp_kuljetus_driver_app/utils/list.dart";

part "drive_states_provider.g.dart";

@riverpod
Future<List<TruckDriveState>> listDriveStates(
  final Ref ref, {
  required final String truckId,
  final String? driverId,
  final List<TruckDriveState>? states,
  final DateTime? after,
  final DateTime? before,
  final int? first,
  final int? max,
}) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getTrucksApi().listDriveStates(
      truckId: truckId,
      driverId: driverId,
      after: after,
      before: before,
      state: states != null ? BuiltList.from(states) : null,
      first: first,
      max: max,
    );

    return response.data!.asList();
  } on DioException catch (error) {
    log("Failed to list drive states: $error");
    log(error.requestOptions.toString());

    return [];
  }
}

@riverpod
class ListSessionDriveStatesWithTasks
    extends _$ListSessionDriveStatesWithTasks {
  @override
  Future<Iterable<DriveStateWithTaskType>> build({
    required final String truckId,
    required final String driverId,
    required final int sessionStartedAt,
  }) async {
    final driveStates = await ref.watch(
      watchDriveStatesProvider(
        truckId: truckId,
        driverId: driverId,
        after: DateTime.fromMillisecondsSinceEpoch(
          sessionStartedAt,
          isUtc: true,
        ),
      ).future,
    );

    final deduplicatedDriveStates = driveStates.whereIndexed((
      final index,
      final state,
    ) {
      final previousState = index == 0
          ? null
          : driveStates.elementAtOrNull(index - 1);
      if (previousState == null) return true;
      return previousState.state != state.state;
    }).toList();

    final taskGroups = await ref.watch(watchTaskGroupTimestampsProvider.future);

    return joinTasksToDriveStates(deduplicatedDriveStates, taskGroups).reversed;
  }
}

@riverpod
class WatchDriveStates extends _$WatchDriveStates {
  late DateTime latestStateAt;

  @override
  Stream<List<TruckDriveState>> build({
    required final String truckId,
    required final String driverId,
    required final DateTime after,
  }) async* {
    late List<TruckDriveState> driveStates;

    try {
      final driveStateBeforeSessionStartResponse = await tmsApi
          .getTrucksApi()
          .listDriveStates(
            truckId: truckId,
            driverId: driverId,
            before: after,
            first: 0,
            max: 1,
          );
      final driveStateBeforeSessionStart =
          driveStateBeforeSessionStartResponse.data?.firstOrNull;

      final driveStatesDuringSessionResponse = await tmsApi
          .getTrucksApi()
          .listDriveStates(truckId: truckId, driverId: driverId, after: after);
      final driveStatesDuringSession =
          driveStatesDuringSessionResponse.data?.asList() ?? [];

      final allDriveStates = <TruckDriveState>[];

      if (driveStateBeforeSessionStart != null) {
        // Add the previous drive state with current session start as timestamp.
        // This way we can show proper length for the current driver.
        allDriveStates.add(
          driveStateBeforeSessionStart.rebuild(
            (final b) => b..timestamp = after.secondsSinceEpoch,
          ),
        );
      }

      allDriveStates.addAll(driveStatesDuringSession);

      driveStates = allDriveStates.sorted(
        (final a, final b) => b.timestamp.compareTo(a.timestamp),
      );
    } catch (error) {
      log("Failed to fetch new drive states: $error");
      driveStates = [];
    }

    final latestState = driveStates.firstOrNull;
    latestStateAt = DateTime.fromMillisecondsSinceEpoch(
      latestState != null
          ? latestState.timestamp * 1000
          : after.millisecondsSinceEpoch,
      isUtc: true,
    );

    final timer = Timer.periodic(
      const Duration(seconds: 5),
      (_) => _checkNewDriveStates(truckId, driverId),
    );

    ref.onDispose(timer.cancel);

    yield driveStates;
  }

  Future<void> _checkNewDriveStates(
    final String truckId,
    final String driverId,
  ) async {
    try {
      final driveStatesResponse = await tmsApi.getTrucksApi().listDriveStates(
        truckId: truckId,
        driverId: driverId,
        after: latestStateAt.add(
          Duration(seconds: 1),
        ), // Add 1 second to avoid fetching the latest already fetched state
      );

      final newDriveStates = driveStatesResponse.data!.asList();

      if (newDriveStates.isNotEmpty) {
        final updatedDriveStateList =
            <TruckDriveState>[...newDriveStates, ...state.value ?? []]
                .toUnique((final e) => e.id)
                .sorted(
                  (final a, final b) => b.timestamp.compareTo(a.timestamp),
                );

        state = AsyncData(updatedDriveStateList);

        latestStateAt = DateTime.fromMillisecondsSinceEpoch(
          updatedDriveStateList.first.timestamp * 1000,
          isUtc: true,
        );
      }
    } catch (error) {
      log("Failed to fetch new drive states: $error");
    }
  }
}

@riverpod
class WatchTaskGroupTimestamps extends _$WatchTaskGroupTimestamps {
  String? _prevRawValue;

  @override
  Stream<List<TaskGroupTimestamps>> build() async* {
    final timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => _checkNewTaskGroupTimestamps(),
    );

    ref.onDispose(timer.cancel);

    final rawValue = store.getString(taskGroupTimestampsKey);
    _prevRawValue = rawValue;

    yield deserializeTaskGroupTimestamps(rawValue);
  }

  void _checkNewTaskGroupTimestamps() {
    final rawValue = store.getString(taskGroupTimestampsKey);

    if (rawValue != _prevRawValue) {
      _prevRawValue = rawValue;
      state = AsyncData(deserializeTaskGroupTimestamps(rawValue));
    }
  }
}
