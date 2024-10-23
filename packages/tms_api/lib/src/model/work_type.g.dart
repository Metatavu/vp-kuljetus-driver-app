// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WorkType _$PAID_WORK = const WorkType._('PAID_WORK');
const WorkType _$BREAK = const WorkType._('BREAK');
const WorkType _$STANDBY = const WorkType._('STANDBY');
const WorkType _$EVENING_ALLOWANCE = const WorkType._('EVENING_ALLOWANCE');
const WorkType _$NIGHT_ALLOWANCE = const WorkType._('NIGHT_ALLOWANCE');
const WorkType _$HOLIDAY_ALLOWANCE = const WorkType._('HOLIDAY_ALLOWANCE');
const WorkType _$JOB_SPECIFIC_ALLOWANCE =
    const WorkType._('JOB_SPECIFIC_ALLOWANCE');
const WorkType _$FROZEN_ALLOWANCE = const WorkType._('FROZEN_ALLOWANCE');

WorkType _$valueOf(String name) {
  switch (name) {
    case 'PAID_WORK':
      return _$PAID_WORK;
    case 'BREAK':
      return _$BREAK;
    case 'STANDBY':
      return _$STANDBY;
    case 'EVENING_ALLOWANCE':
      return _$EVENING_ALLOWANCE;
    case 'NIGHT_ALLOWANCE':
      return _$NIGHT_ALLOWANCE;
    case 'HOLIDAY_ALLOWANCE':
      return _$HOLIDAY_ALLOWANCE;
    case 'JOB_SPECIFIC_ALLOWANCE':
      return _$JOB_SPECIFIC_ALLOWANCE;
    case 'FROZEN_ALLOWANCE':
      return _$FROZEN_ALLOWANCE;
    default:
      return _$FROZEN_ALLOWANCE;
  }
}

final BuiltSet<WorkType> _$values = new BuiltSet<WorkType>(const <WorkType>[
  _$PAID_WORK,
  _$BREAK,
  _$STANDBY,
  _$EVENING_ALLOWANCE,
  _$NIGHT_ALLOWANCE,
  _$HOLIDAY_ALLOWANCE,
  _$JOB_SPECIFIC_ALLOWANCE,
  _$FROZEN_ALLOWANCE,
]);

class _$WorkTypeMeta {
  const _$WorkTypeMeta();
  WorkType get PAID_WORK => _$PAID_WORK;
  WorkType get BREAK => _$BREAK;
  WorkType get STANDBY => _$STANDBY;
  WorkType get EVENING_ALLOWANCE => _$EVENING_ALLOWANCE;
  WorkType get NIGHT_ALLOWANCE => _$NIGHT_ALLOWANCE;
  WorkType get HOLIDAY_ALLOWANCE => _$HOLIDAY_ALLOWANCE;
  WorkType get JOB_SPECIFIC_ALLOWANCE => _$JOB_SPECIFIC_ALLOWANCE;
  WorkType get FROZEN_ALLOWANCE => _$FROZEN_ALLOWANCE;
  WorkType valueOf(String name) => _$valueOf(name);
  BuiltSet<WorkType> get values => _$values;
}

abstract class _$WorkTypeMixin {
  // ignore: non_constant_identifier_names
  _$WorkTypeMeta get WorkType => const _$WorkTypeMeta();
}

Serializer<WorkType> _$workTypeSerializer = new _$WorkTypeSerializer();

class _$WorkTypeSerializer implements PrimitiveSerializer<WorkType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PAID_WORK': 'PAID_WORK',
    'BREAK': 'BREAK',
    'STANDBY': 'STANDBY',
    'EVENING_ALLOWANCE': 'EVENING_ALLOWANCE',
    'NIGHT_ALLOWANCE': 'NIGHT_ALLOWANCE',
    'HOLIDAY_ALLOWANCE': 'HOLIDAY_ALLOWANCE',
    'JOB_SPECIFIC_ALLOWANCE': 'JOB_SPECIFIC_ALLOWANCE',
    'FROZEN_ALLOWANCE': 'FROZEN_ALLOWANCE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PAID_WORK': 'PAID_WORK',
    'BREAK': 'BREAK',
    'STANDBY': 'STANDBY',
    'EVENING_ALLOWANCE': 'EVENING_ALLOWANCE',
    'NIGHT_ALLOWANCE': 'NIGHT_ALLOWANCE',
    'HOLIDAY_ALLOWANCE': 'HOLIDAY_ALLOWANCE',
    'JOB_SPECIFIC_ALLOWANCE': 'JOB_SPECIFIC_ALLOWANCE',
    'FROZEN_ALLOWANCE': 'FROZEN_ALLOWANCE',
  };

  @override
  final Iterable<Type> types = const <Type>[WorkType];
  @override
  final String wireName = 'WorkType';

  @override
  Object serialize(Serializers serializers, WorkType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WorkType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WorkType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
