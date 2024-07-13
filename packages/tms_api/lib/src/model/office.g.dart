// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'office.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Office _$KOTKA = const Office._('KOTKA');
const Office _$KOUVOLA = const Office._('KOUVOLA');
const Office _$RAUHA = const Office._('RAUHA');

Office _$valueOf(String name) {
  switch (name) {
    case 'KOTKA':
      return _$KOTKA;
    case 'KOUVOLA':
      return _$KOUVOLA;
    case 'RAUHA':
      return _$RAUHA;
    default:
      return _$RAUHA;
  }
}

final BuiltSet<Office> _$values = new BuiltSet<Office>(const <Office>[
  _$KOTKA,
  _$KOUVOLA,
  _$RAUHA,
]);

class _$OfficeMeta {
  const _$OfficeMeta();
  Office get KOTKA => _$KOTKA;
  Office get KOUVOLA => _$KOUVOLA;
  Office get RAUHA => _$RAUHA;
  Office valueOf(String name) => _$valueOf(name);
  BuiltSet<Office> get values => _$values;
}

abstract class _$OfficeMixin {
  // ignore: non_constant_identifier_names
  _$OfficeMeta get Office => const _$OfficeMeta();
}

Serializer<Office> _$officeSerializer = new _$OfficeSerializer();

class _$OfficeSerializer implements PrimitiveSerializer<Office> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'KOTKA': 'KOTKA',
    'KOUVOLA': 'KOUVOLA',
    'RAUHA': 'RAUHA',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'KOTKA': 'KOTKA',
    'KOUVOLA': 'KOUVOLA',
    'RAUHA': 'RAUHA',
  };

  @override
  final Iterable<Type> types = const <Type>[Office];
  @override
  final String wireName = 'Office';

  @override
  Object serialize(Serializers serializers, Office object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Office deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Office.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
