// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TaskStatus _$TODO = const TaskStatus._('TODO');
const TaskStatus _$IN_PROGRESS = const TaskStatus._('IN_PROGRESS');
const TaskStatus _$DONE = const TaskStatus._('DONE');

TaskStatus _$valueOf(String name) {
  switch (name) {
    case 'TODO':
      return _$TODO;
    case 'IN_PROGRESS':
      return _$IN_PROGRESS;
    case 'DONE':
      return _$DONE;
    default:
      return _$DONE;
  }
}

final BuiltSet<TaskStatus> _$values =
    new BuiltSet<TaskStatus>(const <TaskStatus>[
  _$TODO,
  _$IN_PROGRESS,
  _$DONE,
]);

class _$TaskStatusMeta {
  const _$TaskStatusMeta();
  TaskStatus get TODO => _$TODO;
  TaskStatus get IN_PROGRESS => _$IN_PROGRESS;
  TaskStatus get DONE => _$DONE;
  TaskStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<TaskStatus> get values => _$values;
}

abstract class _$TaskStatusMixin {
  // ignore: non_constant_identifier_names
  _$TaskStatusMeta get TaskStatus => const _$TaskStatusMeta();
}

Serializer<TaskStatus> _$taskStatusSerializer = new _$TaskStatusSerializer();

class _$TaskStatusSerializer implements PrimitiveSerializer<TaskStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TODO': 'TODO',
    'IN_PROGRESS': 'IN_PROGRESS',
    'DONE': 'DONE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TODO': 'TODO',
    'IN_PROGRESS': 'IN_PROGRESS',
    'DONE': 'DONE',
  };

  @override
  final Iterable<Type> types = const <Type>[TaskStatus];
  @override
  final String wireName = 'TaskStatus';

  @override
  Object serialize(Serializers serializers, TaskStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TaskStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TaskStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
