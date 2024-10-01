// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SalaryGroup _$DRIVER = const SalaryGroup._('DRIVER');
const SalaryGroup _$VPLOGISTICS = const SalaryGroup._('VPLOGISTICS');
const SalaryGroup _$OFFICE = const SalaryGroup._('OFFICE');
const SalaryGroup _$TERMINAL = const SalaryGroup._('TERMINAL');

SalaryGroup _$valueOf(String name) {
  switch (name) {
    case 'DRIVER':
      return _$DRIVER;
    case 'VPLOGISTICS':
      return _$VPLOGISTICS;
    case 'OFFICE':
      return _$OFFICE;
    case 'TERMINAL':
      return _$TERMINAL;
    default:
      return _$TERMINAL;
  }
}

final BuiltSet<SalaryGroup> _$values =
    new BuiltSet<SalaryGroup>(const <SalaryGroup>[
  _$DRIVER,
  _$VPLOGISTICS,
  _$OFFICE,
  _$TERMINAL,
]);

class _$SalaryGroupMeta {
  const _$SalaryGroupMeta();
  SalaryGroup get DRIVER => _$DRIVER;
  SalaryGroup get VPLOGISTICS => _$VPLOGISTICS;
  SalaryGroup get OFFICE => _$OFFICE;
  SalaryGroup get TERMINAL => _$TERMINAL;
  SalaryGroup valueOf(String name) => _$valueOf(name);
  BuiltSet<SalaryGroup> get values => _$values;
}

abstract class _$SalaryGroupMixin {
  // ignore: non_constant_identifier_names
  _$SalaryGroupMeta get SalaryGroup => const _$SalaryGroupMeta();
}

Serializer<SalaryGroup> _$salaryGroupSerializer = new _$SalaryGroupSerializer();

class _$SalaryGroupSerializer implements PrimitiveSerializer<SalaryGroup> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DRIVER': 'DRIVER',
    'VPLOGISTICS': 'VPLOGISTICS',
    'OFFICE': 'OFFICE',
    'TERMINAL': 'TERMINAL',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DRIVER': 'DRIVER',
    'VPLOGISTICS': 'VPLOGISTICS',
    'OFFICE': 'OFFICE',
    'TERMINAL': 'TERMINAL',
  };

  @override
  final Iterable<Type> types = const <Type>[SalaryGroup];
  @override
  final String wireName = 'SalaryGroup';

  @override
  Object serialize(Serializers serializers, SalaryGroup object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SalaryGroup deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SalaryGroup.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
