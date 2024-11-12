// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absence_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AbsenceType _$TRAINING = const AbsenceType._('TRAINING');
const AbsenceType _$VACATION = const AbsenceType._('VACATION');
const AbsenceType _$OFFICIAL_DUTIES = const AbsenceType._('OFFICIAL_DUTIES');
const AbsenceType _$COMPENSATORY_LEAVE =
    const AbsenceType._('COMPENSATORY_LEAVE');
const AbsenceType _$SICK_LEAVE = const AbsenceType._('SICK_LEAVE');

AbsenceType _$valueOf(String name) {
  switch (name) {
    case 'TRAINING':
      return _$TRAINING;
    case 'VACATION':
      return _$VACATION;
    case 'OFFICIAL_DUTIES':
      return _$OFFICIAL_DUTIES;
    case 'COMPENSATORY_LEAVE':
      return _$COMPENSATORY_LEAVE;
    case 'SICK_LEAVE':
      return _$SICK_LEAVE;
    default:
      return _$SICK_LEAVE;
  }
}

final BuiltSet<AbsenceType> _$values =
    new BuiltSet<AbsenceType>(const <AbsenceType>[
  _$TRAINING,
  _$VACATION,
  _$OFFICIAL_DUTIES,
  _$COMPENSATORY_LEAVE,
  _$SICK_LEAVE,
]);

class _$AbsenceTypeMeta {
  const _$AbsenceTypeMeta();
  AbsenceType get TRAINING => _$TRAINING;
  AbsenceType get VACATION => _$VACATION;
  AbsenceType get OFFICIAL_DUTIES => _$OFFICIAL_DUTIES;
  AbsenceType get COMPENSATORY_LEAVE => _$COMPENSATORY_LEAVE;
  AbsenceType get SICK_LEAVE => _$SICK_LEAVE;
  AbsenceType valueOf(String name) => _$valueOf(name);
  BuiltSet<AbsenceType> get values => _$values;
}

abstract class _$AbsenceTypeMixin {
  // ignore: non_constant_identifier_names
  _$AbsenceTypeMeta get AbsenceType => const _$AbsenceTypeMeta();
}

Serializer<AbsenceType> _$absenceTypeSerializer = new _$AbsenceTypeSerializer();

class _$AbsenceTypeSerializer implements PrimitiveSerializer<AbsenceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TRAINING': 'TRAINING',
    'VACATION': 'VACATION',
    'OFFICIAL_DUTIES': 'OFFICIAL_DUTIES',
    'COMPENSATORY_LEAVE': 'COMPENSATORY_LEAVE',
    'SICK_LEAVE': 'SICK_LEAVE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TRAINING': 'TRAINING',
    'VACATION': 'VACATION',
    'OFFICIAL_DUTIES': 'OFFICIAL_DUTIES',
    'COMPENSATORY_LEAVE': 'COMPENSATORY_LEAVE',
    'SICK_LEAVE': 'SICK_LEAVE',
  };

  @override
  final Iterable<Type> types = const <Type>[AbsenceType];
  @override
  final String wireName = 'AbsenceType';

  @override
  Object serialize(Serializers serializers, AbsenceType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AbsenceType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AbsenceType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
