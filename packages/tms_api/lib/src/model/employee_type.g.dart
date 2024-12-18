// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EmployeeType _$PA = const EmployeeType._('PA');
const EmployeeType _$KA = const EmployeeType._('KA');
const EmployeeType _$AH = const EmployeeType._('AH');
const EmployeeType _$VK = const EmployeeType._('VK');
const EmployeeType _$TH = const EmployeeType._('TH');
const EmployeeType _$TP = const EmployeeType._('TP');
const EmployeeType _$AJ = const EmployeeType._('AJ');
const EmployeeType _$JH = const EmployeeType._('JH');
const EmployeeType _$AP = const EmployeeType._('AP');
const EmployeeType _$KK = const EmployeeType._('KK');
const EmployeeType _$POIS = const EmployeeType._('POIS');
const EmployeeType _$TPK = const EmployeeType._('TPK');

EmployeeType _$valueOf(String name) {
  switch (name) {
    case 'PA':
      return _$PA;
    case 'KA':
      return _$KA;
    case 'AH':
      return _$AH;
    case 'VK':
      return _$VK;
    case 'TH':
      return _$TH;
    case 'TP':
      return _$TP;
    case 'AJ':
      return _$AJ;
    case 'JH':
      return _$JH;
    case 'AP':
      return _$AP;
    case 'KK':
      return _$KK;
    case 'POIS':
      return _$POIS;
    case 'TPK':
      return _$TPK;
    default:
      return _$TPK;
  }
}

final BuiltSet<EmployeeType> _$values =
    new BuiltSet<EmployeeType>(const <EmployeeType>[
  _$PA,
  _$KA,
  _$AH,
  _$VK,
  _$TH,
  _$TP,
  _$AJ,
  _$JH,
  _$AP,
  _$KK,
  _$POIS,
  _$TPK,
]);

class _$EmployeeTypeMeta {
  const _$EmployeeTypeMeta();
  EmployeeType get PA => _$PA;
  EmployeeType get KA => _$KA;
  EmployeeType get AH => _$AH;
  EmployeeType get VK => _$VK;
  EmployeeType get TH => _$TH;
  EmployeeType get TP => _$TP;
  EmployeeType get AJ => _$AJ;
  EmployeeType get JH => _$JH;
  EmployeeType get AP => _$AP;
  EmployeeType get KK => _$KK;
  EmployeeType get POIS => _$POIS;
  EmployeeType get TPK => _$TPK;
  EmployeeType valueOf(String name) => _$valueOf(name);
  BuiltSet<EmployeeType> get values => _$values;
}

abstract class _$EmployeeTypeMixin {
  // ignore: non_constant_identifier_names
  _$EmployeeTypeMeta get EmployeeType => const _$EmployeeTypeMeta();
}

Serializer<EmployeeType> _$employeeTypeSerializer =
    new _$EmployeeTypeSerializer();

class _$EmployeeTypeSerializer implements PrimitiveSerializer<EmployeeType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PA': 'PA',
    'KA': 'KA',
    'AH': 'AH',
    'VK': 'VK',
    'TH': 'TH',
    'TP': 'TP',
    'AJ': 'AJ',
    'JH': 'JH',
    'AP': 'AP',
    'KK': 'KK',
    'POIS': 'POIS',
    'TPK': 'TPK',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PA': 'PA',
    'KA': 'KA',
    'AH': 'AH',
    'VK': 'VK',
    'TH': 'TH',
    'TP': 'TP',
    'AJ': 'AJ',
    'JH': 'JH',
    'AP': 'AP',
    'KK': 'KK',
    'POIS': 'POIS',
    'TPK': 'TPK',
  };

  @override
  final Iterable<Type> types = const <Type>[EmployeeType];
  @override
  final String wireName = 'EmployeeType';

  @override
  Object serialize(Serializers serializers, EmployeeType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EmployeeType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EmployeeType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
