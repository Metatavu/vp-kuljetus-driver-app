//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_type.g.dart';

class TaskType extends EnumClass {
  /// Type of the task
  @BuiltValueEnumConst(wireName: r'UNLOAD')
  static const TaskType UNLOAD = _$UNLOAD;

  /// Type of the task
  @BuiltValueEnumConst(wireName: r'LOAD', fallback: true)
  static const TaskType LOAD = _$LOAD;

  static Serializer<TaskType> get serializer => _$taskTypeSerializer;

  const TaskType._(String name) : super(name);

  static BuiltSet<TaskType> get values => _$values;
  static TaskType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TaskTypeMixin = Object with _$TaskTypeMixin;
