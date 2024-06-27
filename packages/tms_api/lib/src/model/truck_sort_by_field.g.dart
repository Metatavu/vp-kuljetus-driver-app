// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_sort_by_field.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TruckSortByField _$NAME = const TruckSortByField._('NAME');
const TruckSortByField _$PLATE_NUMBER =
    const TruckSortByField._('PLATE_NUMBER');

TruckSortByField _$valueOf(String name) {
  switch (name) {
    case 'NAME':
      return _$NAME;
    case 'PLATE_NUMBER':
      return _$PLATE_NUMBER;
    default:
      return _$PLATE_NUMBER;
  }
}

final BuiltSet<TruckSortByField> _$values =
    new BuiltSet<TruckSortByField>(const <TruckSortByField>[
  _$NAME,
  _$PLATE_NUMBER,
]);

class _$TruckSortByFieldMeta {
  const _$TruckSortByFieldMeta();
  TruckSortByField get NAME => _$NAME;
  TruckSortByField get PLATE_NUMBER => _$PLATE_NUMBER;
  TruckSortByField valueOf(String name) => _$valueOf(name);
  BuiltSet<TruckSortByField> get values => _$values;
}

abstract class _$TruckSortByFieldMixin {
  // ignore: non_constant_identifier_names
  _$TruckSortByFieldMeta get TruckSortByField => const _$TruckSortByFieldMeta();
}

Serializer<TruckSortByField> _$truckSortByFieldSerializer =
    new _$TruckSortByFieldSerializer();

class _$TruckSortByFieldSerializer
    implements PrimitiveSerializer<TruckSortByField> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NAME': 'NAME',
    'PLATE_NUMBER': 'PLATE_NUMBER',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NAME': 'NAME',
    'PLATE_NUMBER': 'PLATE_NUMBER',
  };

  @override
  final Iterable<Type> types = const <Type>[TruckSortByField];
  @override
  final String wireName = 'TruckSortByField';

  @override
  Object serialize(Serializers serializers, TruckSortByField object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TruckSortByField deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TruckSortByField.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
