// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_drive_state_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TruckDriveStateEnum _$REST = const TruckDriveStateEnum._('REST');
const TruckDriveStateEnum _$DRIVER_AVAILABLE =
    const TruckDriveStateEnum._('DRIVER_AVAILABLE');
const TruckDriveStateEnum _$WORK = const TruckDriveStateEnum._('WORK');
const TruckDriveStateEnum _$DRIVE = const TruckDriveStateEnum._('DRIVE');
const TruckDriveStateEnum _$ERROR = const TruckDriveStateEnum._('ERROR');
const TruckDriveStateEnum _$NOT_AVAILABLE =
    const TruckDriveStateEnum._('NOT_AVAILABLE');

TruckDriveStateEnum _$valueOf(String name) {
  switch (name) {
    case 'REST':
      return _$REST;
    case 'DRIVER_AVAILABLE':
      return _$DRIVER_AVAILABLE;
    case 'WORK':
      return _$WORK;
    case 'DRIVE':
      return _$DRIVE;
    case 'ERROR':
      return _$ERROR;
    case 'NOT_AVAILABLE':
      return _$NOT_AVAILABLE;
    default:
      return _$NOT_AVAILABLE;
  }
}

final BuiltSet<TruckDriveStateEnum> _$values =
    new BuiltSet<TruckDriveStateEnum>(const <TruckDriveStateEnum>[
  _$REST,
  _$DRIVER_AVAILABLE,
  _$WORK,
  _$DRIVE,
  _$ERROR,
  _$NOT_AVAILABLE,
]);

class _$TruckDriveStateEnumMeta {
  const _$TruckDriveStateEnumMeta();
  TruckDriveStateEnum get REST => _$REST;
  TruckDriveStateEnum get DRIVER_AVAILABLE => _$DRIVER_AVAILABLE;
  TruckDriveStateEnum get WORK => _$WORK;
  TruckDriveStateEnum get DRIVE => _$DRIVE;
  TruckDriveStateEnum get ERROR => _$ERROR;
  TruckDriveStateEnum get NOT_AVAILABLE => _$NOT_AVAILABLE;
  TruckDriveStateEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<TruckDriveStateEnum> get values => _$values;
}

abstract class _$TruckDriveStateEnumMixin {
  // ignore: non_constant_identifier_names
  _$TruckDriveStateEnumMeta get TruckDriveStateEnum =>
      const _$TruckDriveStateEnumMeta();
}

Serializer<TruckDriveStateEnum> _$truckDriveStateEnumSerializer =
    new _$TruckDriveStateEnumSerializer();

class _$TruckDriveStateEnumSerializer
    implements PrimitiveSerializer<TruckDriveStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'REST': 'REST',
    'DRIVER_AVAILABLE': 'DRIVER_AVAILABLE',
    'WORK': 'WORK',
    'DRIVE': 'DRIVE',
    'ERROR': 'ERROR',
    'NOT_AVAILABLE': 'NOT_AVAILABLE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'REST': 'REST',
    'DRIVER_AVAILABLE': 'DRIVER_AVAILABLE',
    'WORK': 'WORK',
    'DRIVE': 'DRIVE',
    'ERROR': 'ERROR',
    'NOT_AVAILABLE': 'NOT_AVAILABLE',
  };

  @override
  final Iterable<Type> types = const <Type>[TruckDriveStateEnum];
  @override
  final String wireName = 'TruckDriveStateEnum';

  @override
  Object serialize(Serializers serializers, TruckDriveStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TruckDriveStateEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TruckDriveStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
