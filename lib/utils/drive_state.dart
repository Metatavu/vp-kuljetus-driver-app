import "package:collection/collection.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/models/task_group_timestamps/task_group_timestamps.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";
import "package:vp_kuljetus_driver_app/utils/l10n.dart";

String getDriveStateTitle(
  final L10n l10n,
  final TruckDriveState driveState,
  final TaskType? taskType,
  final bool isLatest,
) {
  final localizedDriveState = l10n.t(getDriveStateLocaleKey(driveState.state));

  return taskType != null
      ? "$localizedDriveState, ${l10n.t(getTaskTypeLocaleKey(taskType))}"
      : localizedDriveState;
}

typedef DriveStateWithTaskType = (TruckDriveState, TaskType?);

/// This section composes the raw drive states with the task groups to create
/// a timeline that includes both.
///
/// Composition happens by walking the raw states and carving out segments
/// for every overlapping task group. The output drives
/// `finalDriveStatesWithTasks` below, which feeds both the header row and
/// the expanded modal list.
///
/// Example timeline (latest on the right) showing the slicing:
///              | ------------------------------------ time --------------------------------------> now |
/// RAW STATES   |=WORK==================|=DRIVE===================|=WORK=======================|=DRIVE==|
/// TASK GROUPS  |------|=UNLOAD===========================|--------------|=LOAD=========|---------------|
/// RESULT       |=WORK=|=WORK UNLOAD====|=DRIVE UNLOAD====|=DRIVE=|=WORK=|=WORK LOAD====|=WORK=|=DRIVE==|
///
List<DriveStateWithTaskType> joinTasksToDriveStates(
  final List<TruckDriveState> driveStates,
  final List<TaskGroupTimestamps> taskGroups,
) {
  final now = DateTime.now().toUtc().secondsSinceEpoch;
  final statesWithTasks = <DriveStateWithTaskType>[];

  final sortedDriveStates = driveStates.sorted(
    (final a, final b) => a.timestamp.compareTo(b.timestamp),
  );

  for (final (stateIndex, driveState) in sortedDriveStates.indexed) {
    final nextState = sortedDriveStates.elementAtOrNull(stateIndex + 1);
    final isLastDriveState = nextState == null;
    final currentStateStartedAt = driveState.timestamp;
    final currentStateEndedAt = isLastDriveState ? now : nextState.timestamp;

    final taskGroupsOverlappingState = taskGroups.where(
      (final group) =>
          group.startedAt.secondsSinceEpoch <= currentStateEndedAt &&
          (group.finishedAt == null ||
              group.finishedAt!.secondsSinceEpoch >= currentStateStartedAt),
    );

    // No overlapping task groups, just add the state as is.
    if (taskGroupsOverlappingState.isEmpty) {
      statesWithTasks.add((driveState, null));
      continue;
    }

    for (final (taskGroupIndex, taskGroup)
        in taskGroupsOverlappingState.indexed) {
      final currentStateStartedBeforeTask =
          currentStateStartedAt < taskGroup.startedAt.secondsSinceEpoch;

      // If the current drive state starts before the first overlapping task group,
      // add a segment for that part.
      if (taskGroupIndex == 0 && currentStateStartedBeforeTask) {
        statesWithTasks.add((driveState, null));
      }

      // Add the segment for the task group overlap.
      // If the drive state started before the task group, use the
      // task group's startedAt as the segment start. Otherwise, use the
      // drive state's startedAt.
      statesWithTasks.add((
        driveState.rebuild(
          (final b) => b
            ..timestamp = currentStateStartedBeforeTask
                ? taskGroup.startedAt.secondsSinceEpoch
                : currentStateStartedAt,
        ),
        taskGroup.taskType,
      ));

      // If this is not the last overlapping task group, continue to next.
      if (taskGroupIndex != taskGroupsOverlappingState.length - 1) continue;

      // If the task group is not finished yet, continue.
      final taskGroupFinishedAt = taskGroup.finishedAt?.secondsSinceEpoch;
      if (taskGroupFinishedAt == null) continue;

      // If the task group ends before the drive state or this is the last drive
      // state, add a segment for the ongoing drive state after the task group.
      final shouldAddDriveStateAfterTask =
          isLastDriveState || taskGroupFinishedAt < currentStateEndedAt;
      if (shouldAddDriveStateAfterTask) {
        statesWithTasks.add((
          driveState.rebuild((final b) => b..timestamp = taskGroupFinishedAt),
          null,
        ));
      }
    }
  }

  return statesWithTasks;
}
