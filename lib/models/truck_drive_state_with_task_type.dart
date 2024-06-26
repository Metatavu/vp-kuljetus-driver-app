import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/models/task_group_timestamps/task_group_timestamps.dart";

class TruckDriveStateWithTaskType {
  const TruckDriveStateWithTaskType({
    required this.timestamp,
    required this.state,
    this.taskType,
    this.endedAt,
  });

  factory TruckDriveStateWithTaskType.fromTruckDriveState(final TruckDriveState driveState) => TruckDriveStateWithTaskType(
    timestamp: driveState.timestamp,
    state: driveState.state,
  );

  factory TruckDriveStateWithTaskType.fromTaskTimestamps(final TaskGroupTimestamps taskTimestamps) => TruckDriveStateWithTaskType(
    timestamp: taskTimestamps.startedAt.millisecondsSinceEpoch ~/1000,
    endedAt: taskTimestamps.finishedAt != null ? taskTimestamps.finishedAt!.millisecondsSinceEpoch ~/ 1000 : null,
    state: TruckDriveStateEnum.WORK,
    taskType: taskTimestamps.taskType,
  );

  final TaskType? taskType;
  final int timestamp;
  final int? endedAt;
  final TruckDriveStateEnum state;
}