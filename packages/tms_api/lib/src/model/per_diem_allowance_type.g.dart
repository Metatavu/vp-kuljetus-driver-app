// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'per_diem_allowance_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PerDiemAllowanceType _$PARTIAL = const PerDiemAllowanceType._('PARTIAL');
const PerDiemAllowanceType _$FULL = const PerDiemAllowanceType._('FULL');

PerDiemAllowanceType _$valueOf(String name) {
  switch (name) {
    case 'PARTIAL':
      return _$PARTIAL;
    case 'FULL':
      return _$FULL;
    default:
      return _$FULL;
  }
}

final BuiltSet<PerDiemAllowanceType> _$values =
    new BuiltSet<PerDiemAllowanceType>(const <PerDiemAllowanceType>[
  _$PARTIAL,
  _$FULL,
]);

class _$PerDiemAllowanceTypeMeta {
  const _$PerDiemAllowanceTypeMeta();
  PerDiemAllowanceType get PARTIAL => _$PARTIAL;
  PerDiemAllowanceType get FULL => _$FULL;
  PerDiemAllowanceType valueOf(String name) => _$valueOf(name);
  BuiltSet<PerDiemAllowanceType> get values => _$values;
}

abstract class _$PerDiemAllowanceTypeMixin {
  // ignore: non_constant_identifier_names
  _$PerDiemAllowanceTypeMeta get PerDiemAllowanceType =>
      const _$PerDiemAllowanceTypeMeta();
}

Serializer<PerDiemAllowanceType> _$perDiemAllowanceTypeSerializer =
    new _$PerDiemAllowanceTypeSerializer();

class _$PerDiemAllowanceTypeSerializer
    implements PrimitiveSerializer<PerDiemAllowanceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PARTIAL': 'PARTIAL',
    'FULL': 'FULL',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PARTIAL': 'PARTIAL',
    'FULL': 'FULL',
  };

  @override
  final Iterable<Type> types = const <Type>[PerDiemAllowanceType];
  @override
  final String wireName = 'PerDiemAllowanceType';

  @override
  Object serialize(Serializers serializers, PerDiemAllowanceType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PerDiemAllowanceType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PerDiemAllowanceType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
