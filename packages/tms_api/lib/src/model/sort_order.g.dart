// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SortOrder _$ASCENDING = const SortOrder._('ASCENDING');
const SortOrder _$DESCENDING = const SortOrder._('DESCENDING');

SortOrder _$valueOf(String name) {
  switch (name) {
    case 'ASCENDING':
      return _$ASCENDING;
    case 'DESCENDING':
      return _$DESCENDING;
    default:
      return _$DESCENDING;
  }
}

final BuiltSet<SortOrder> _$values = new BuiltSet<SortOrder>(const <SortOrder>[
  _$ASCENDING,
  _$DESCENDING,
]);

class _$SortOrderMeta {
  const _$SortOrderMeta();
  SortOrder get ASCENDING => _$ASCENDING;
  SortOrder get DESCENDING => _$DESCENDING;
  SortOrder valueOf(String name) => _$valueOf(name);
  BuiltSet<SortOrder> get values => _$values;
}

abstract class _$SortOrderMixin {
  // ignore: non_constant_identifier_names
  _$SortOrderMeta get SortOrder => const _$SortOrderMeta();
}

Serializer<SortOrder> _$sortOrderSerializer = new _$SortOrderSerializer();

class _$SortOrderSerializer implements PrimitiveSerializer<SortOrder> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ASCENDING': 'ASCENDING',
    'DESCENDING': 'DESCENDING',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ASCENDING': 'ASCENDING',
    'DESCENDING': 'DESCENDING',
  };

  @override
  final Iterable<Type> types = const <Type>[SortOrder];
  @override
  final String wireName = 'SortOrder';

  @override
  Object serialize(Serializers serializers, SortOrder object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SortOrder deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SortOrder.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
