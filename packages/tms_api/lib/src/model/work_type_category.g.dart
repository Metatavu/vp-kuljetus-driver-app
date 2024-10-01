// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_type_category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WorkTypeCategory _$DRIVER = const WorkTypeCategory._('DRIVER');
const WorkTypeCategory _$TERMINAL = const WorkTypeCategory._('TERMINAL');
const WorkTypeCategory _$OFFICE = const WorkTypeCategory._('OFFICE');

WorkTypeCategory _$valueOf(String name) {
  switch (name) {
    case 'DRIVER':
      return _$DRIVER;
    case 'TERMINAL':
      return _$TERMINAL;
    case 'OFFICE':
      return _$OFFICE;
    default:
      return _$OFFICE;
  }
}

final BuiltSet<WorkTypeCategory> _$values =
    new BuiltSet<WorkTypeCategory>(const <WorkTypeCategory>[
  _$DRIVER,
  _$TERMINAL,
  _$OFFICE,
]);

class _$WorkTypeCategoryMeta {
  const _$WorkTypeCategoryMeta();
  WorkTypeCategory get DRIVER => _$DRIVER;
  WorkTypeCategory get TERMINAL => _$TERMINAL;
  WorkTypeCategory get OFFICE => _$OFFICE;
  WorkTypeCategory valueOf(String name) => _$valueOf(name);
  BuiltSet<WorkTypeCategory> get values => _$values;
}

abstract class _$WorkTypeCategoryMixin {
  // ignore: non_constant_identifier_names
  _$WorkTypeCategoryMeta get WorkTypeCategory => const _$WorkTypeCategoryMeta();
}

Serializer<WorkTypeCategory> _$workTypeCategorySerializer =
    new _$WorkTypeCategorySerializer();

class _$WorkTypeCategorySerializer
    implements PrimitiveSerializer<WorkTypeCategory> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DRIVER': 'DRIVER',
    'TERMINAL': 'TERMINAL',
    'OFFICE': 'OFFICE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DRIVER': 'DRIVER',
    'TERMINAL': 'TERMINAL',
    'OFFICE': 'OFFICE',
  };

  @override
  final Iterable<Type> types = const <Type>[WorkTypeCategory];
  @override
  final String wireName = 'WorkTypeCategory';

  @override
  Object serialize(Serializers serializers, WorkTypeCategory object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WorkTypeCategory deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WorkTypeCategory.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
