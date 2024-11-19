import "package:freezed_annotation/freezed_annotation.dart";
import "package:tms_api/tms_api.dart";

part "task_group_timestamps.freezed.dart";
part "task_group_timestamps.g.dart";

@unfreezed
class TaskGroupTimestamps with _$TaskGroupTimestamps {
  const factory TaskGroupTimestamps({
    required final String taskGroupKey,
    required final DateTime startedAt,
    // ignore: invalid_annotation_target
    @JsonKey(fromJson: TaskType.valueOf, toJson: taskTypeToJson)
    required final TaskType taskType,
    final DateTime? finishedAt,
  }) = _TaskGroupTimestamps;

  factory TaskGroupTimestamps.fromJson(final Map<String, Object?> json) =>
      _$TaskGroupTimestampsFromJson(json);
}

String taskTypeToJson(final dynamic value) => value.toString();
