// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_group_timestamps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskGroupTimestampsImpl _$$TaskGroupTimestampsImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskGroupTimestampsImpl(
      taskGroupKey: json['taskGroupKey'] as String,
      startedAt: DateTime.parse(json['startedAt'] as String),
      taskType: TaskType.valueOf(json['taskType'] as String),
      finishedAt: json['finishedAt'] == null
          ? null
          : DateTime.parse(json['finishedAt'] as String),
    );

Map<String, dynamic> _$$TaskGroupTimestampsImplToJson(
        _$TaskGroupTimestampsImpl instance) =>
    <String, dynamic>{
      'taskGroupKey': instance.taskGroupKey,
      'startedAt': instance.startedAt.toIso8601String(),
      'taskType': taskTypeToJson(instance.taskType),
      'finishedAt': instance.finishedAt?.toIso8601String(),
    };
