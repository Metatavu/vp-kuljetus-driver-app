// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TaskType _$UNLOAD = const TaskType._('UNLOAD');
const TaskType _$LOAD = const TaskType._('LOAD');

TaskType _$valueOf(String name) {
  switch (name) {
    case 'UNLOAD':
      return _$UNLOAD;
    case 'LOAD':
      return _$LOAD;
    default:
      return _$LOAD;
  }
}

final BuiltSet<TaskType> _$values = new BuiltSet<TaskType>(const <TaskType>[
  _$UNLOAD,
  _$LOAD,
]);

class _$TaskTypeMeta {
  const _$TaskTypeMeta();
  TaskType get UNLOAD => _$UNLOAD;
  TaskType get LOAD => _$LOAD;
  TaskType valueOf(String name) => _$valueOf(name);
  BuiltSet<TaskType> get values => _$values;
}

abstract class _$TaskTypeMixin {
  // ignore: non_constant_identifier_names
  _$TaskTypeMeta get TaskType => const _$TaskTypeMeta();
}

Serializer<TaskType> _$taskTypeSerializer = new _$TaskTypeSerializer();

class _$TaskTypeSerializer implements PrimitiveSerializer<TaskType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UNLOAD': 'UNLOAD',
    'LOAD': 'LOAD',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UNLOAD': 'UNLOAD',
    'LOAD': 'LOAD',
  };

  @override
  final Iterable<Type> types = const <Type>[TaskType];
  @override
  final String wireName = 'TaskType';

  @override
  Object serialize(Serializers serializers, TaskType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TaskType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TaskType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
