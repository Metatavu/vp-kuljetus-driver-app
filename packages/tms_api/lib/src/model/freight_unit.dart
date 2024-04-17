//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'freight_unit.g.dart';

/// Represents a single freight unit in a freight shipment.
///
/// Properties:
/// * [freightId] - Id of the freight shipment
/// * [type] - Type of the unit
/// * [id]
/// * [quantity] - Quantity of the unit, can be a decimal number
/// * [contents] - Description of contents of the unit
/// * [reservations] - Reservations for the unit
/// * [creatorId]
/// * [createdAt]
/// * [lastModifierId]
/// * [modifiedAt]
@BuiltValue()
abstract class FreightUnit implements Built<FreightUnit, FreightUnitBuilder> {
  /// Id of the freight shipment
  @BuiltValueField(wireName: r'freightId')
  String get freightId;

  /// Type of the unit
  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Quantity of the unit, can be a decimal number
  @BuiltValueField(wireName: r'quantity')
  double? get quantity;

  /// Description of contents of the unit
  @BuiltValueField(wireName: r'contents')
  String? get contents;

  /// Reservations for the unit
  @BuiltValueField(wireName: r'reservations')
  String? get reservations;

  @BuiltValueField(wireName: r'creatorId')
  String? get creatorId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'lastModifierId')
  String? get lastModifierId;

  @BuiltValueField(wireName: r'modifiedAt')
  DateTime? get modifiedAt;

  FreightUnit._();

  factory FreightUnit([void updates(FreightUnitBuilder b)]) = _$FreightUnit;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FreightUnitBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FreightUnit> get serializer => _$FreightUnitSerializer();
}

class _$FreightUnitSerializer implements PrimitiveSerializer<FreightUnit> {
  @override
  final Iterable<Type> types = const [FreightUnit, _$FreightUnit];

  @override
  final String wireName = r'FreightUnit';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FreightUnit object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'freightId';
    yield serializers.serialize(
      object.freightId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(double),
      );
    }
    if (object.contents != null) {
      yield r'contents';
      yield serializers.serialize(
        object.contents,
        specifiedType: const FullType(String),
      );
    }
    if (object.reservations != null) {
      yield r'reservations';
      yield serializers.serialize(
        object.reservations,
        specifiedType: const FullType(String),
      );
    }
    if (object.creatorId != null) {
      yield r'creatorId';
      yield serializers.serialize(
        object.creatorId,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastModifierId != null) {
      yield r'lastModifierId';
      yield serializers.serialize(
        object.lastModifierId,
        specifiedType: const FullType(String),
      );
    }
    if (object.modifiedAt != null) {
      yield r'modifiedAt';
      yield serializers.serialize(
        object.modifiedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FreightUnit object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FreightUnitBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'freightId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.freightId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.quantity = valueDes;
          break;
        case r'contents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contents = valueDes;
          break;
        case r'reservations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reservations = valueDes;
          break;
        case r'creatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.creatorId = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'lastModifierId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastModifierId = valueDes;
          break;
        case r'modifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.modifiedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FreightUnit deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FreightUnitBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
