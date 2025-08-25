// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_group_timestamps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskGroupTimestamps _$TaskGroupTimestampsFromJson(Map<String, dynamic> json) {
return _TaskGroupTimestamps.fromJson(json);
}

/// @nodoc
mixin _$TaskGroupTimestamps {

 String get taskGroupKey => throw _privateConstructorUsedError; DateTime get startedAt => throw _privateConstructorUsedError;// ignore: invalid_annotation_target
@JsonKey(fromJson: TaskType.valueOf, toJson: taskTypeToJson) TaskType get taskType => throw _privateConstructorUsedError; DateTime? get finishedAt => throw _privateConstructorUsedError;






/// Serializes this TaskGroupTimestamps to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of TaskGroupTimestamps
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$TaskGroupTimestampsCopyWith<TaskGroupTimestamps> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $TaskGroupTimestampsCopyWith<$Res>  {
  factory $TaskGroupTimestampsCopyWith(TaskGroupTimestamps value, $Res Function(TaskGroupTimestamps) then) = _$TaskGroupTimestampsCopyWithImpl<$Res, TaskGroupTimestamps>;
@useResult
$Res call({
 String taskGroupKey, DateTime startedAt,@JsonKey(fromJson: TaskType.valueOf, toJson: taskTypeToJson) TaskType taskType, DateTime? finishedAt
});



}

/// @nodoc
class _$TaskGroupTimestampsCopyWithImpl<$Res,$Val extends TaskGroupTimestamps> implements $TaskGroupTimestampsCopyWith<$Res> {
  _$TaskGroupTimestampsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of TaskGroupTimestamps
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taskGroupKey = null,Object? startedAt = null,Object? taskType = null,Object? finishedAt = freezed,}) {
  return _then(_value.copyWith(
taskGroupKey: null == taskGroupKey ? _value.taskGroupKey : taskGroupKey // ignore: cast_nullable_to_non_nullable
as String,startedAt: null == startedAt ? _value.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,taskType: null == taskType ? _value.taskType : taskType // ignore: cast_nullable_to_non_nullable
as TaskType,finishedAt: freezed == finishedAt ? _value.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  )as $Val);
}

}


/// @nodoc
abstract class _$$TaskGroupTimestampsImplCopyWith<$Res> implements $TaskGroupTimestampsCopyWith<$Res> {
  factory _$$TaskGroupTimestampsImplCopyWith(_$TaskGroupTimestampsImpl value, $Res Function(_$TaskGroupTimestampsImpl) then) = __$$TaskGroupTimestampsImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String taskGroupKey, DateTime startedAt,@JsonKey(fromJson: TaskType.valueOf, toJson: taskTypeToJson) TaskType taskType, DateTime? finishedAt
});



}

/// @nodoc
class __$$TaskGroupTimestampsImplCopyWithImpl<$Res> extends _$TaskGroupTimestampsCopyWithImpl<$Res, _$TaskGroupTimestampsImpl> implements _$$TaskGroupTimestampsImplCopyWith<$Res> {
  __$$TaskGroupTimestampsImplCopyWithImpl(_$TaskGroupTimestampsImpl _value, $Res Function(_$TaskGroupTimestampsImpl) _then)
      : super(_value, _then);


/// Create a copy of TaskGroupTimestamps
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taskGroupKey = null,Object? startedAt = null,Object? taskType = null,Object? finishedAt = freezed,}) {
  return _then(_$TaskGroupTimestampsImpl(
taskGroupKey: null == taskGroupKey ? _value.taskGroupKey : taskGroupKey // ignore: cast_nullable_to_non_nullable
as String,startedAt: null == startedAt ? _value.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,taskType: null == taskType ? _value.taskType : taskType // ignore: cast_nullable_to_non_nullable
as TaskType,finishedAt: freezed == finishedAt ? _value.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$TaskGroupTimestampsImpl  implements _TaskGroupTimestamps {
  const _$TaskGroupTimestampsImpl({required this.taskGroupKey, required this.startedAt, @JsonKey(fromJson: TaskType.valueOf, toJson: taskTypeToJson) required this.taskType, this.finishedAt});

  factory _$TaskGroupTimestampsImpl.fromJson(Map<String, dynamic> json) => _$$TaskGroupTimestampsImplFromJson(json);

@override final  String taskGroupKey;
@override final  DateTime startedAt;
// ignore: invalid_annotation_target
@override@JsonKey(fromJson: TaskType.valueOf, toJson: taskTypeToJson) final  TaskType taskType;
@override final  DateTime? finishedAt;

@override
String toString() {
  return 'TaskGroupTimestamps(taskGroupKey: $taskGroupKey, startedAt: $startedAt, taskType: $taskType, finishedAt: $finishedAt)';
}




/// Create a copy of TaskGroupTimestamps
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$TaskGroupTimestampsImplCopyWith<_$TaskGroupTimestampsImpl> get copyWith => __$$TaskGroupTimestampsImplCopyWithImpl<_$TaskGroupTimestampsImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$TaskGroupTimestampsImplToJson(this, );
}
}


abstract class _TaskGroupTimestamps implements TaskGroupTimestamps {
  const factory _TaskGroupTimestamps({required final  String taskGroupKey, required final  DateTime startedAt, @JsonKey(fromJson: TaskType.valueOf, toJson: taskTypeToJson) required final  TaskType taskType, final  DateTime? finishedAt}) = _$TaskGroupTimestampsImpl;
  

  factory _TaskGroupTimestamps.fromJson(Map<String, dynamic> json) = _$TaskGroupTimestampsImpl.fromJson;

@override String get taskGroupKey;@override DateTime get startedAt;// ignore: invalid_annotation_target
@override@JsonKey(fromJson: TaskType.valueOf, toJson: taskTypeToJson) TaskType get taskType;@override DateTime? get finishedAt;
/// Create a copy of TaskGroupTimestamps
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$TaskGroupTimestampsImplCopyWith<_$TaskGroupTimestampsImpl> get copyWith => throw _privateConstructorUsedError;

}
