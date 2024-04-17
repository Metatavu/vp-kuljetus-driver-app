//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'towable.g.dart';

/// Represent single towable
///
/// Properties:
/// * [plateNumber]
/// * [type]
/// * [vin] - Towable identification number. This is unique for each towable and should be used as a hardware identifier for this specific towable.
/// * [id]
/// * [name]
/// * [creatorId]
/// * [createdAt]
/// * [lastModifierId]
/// * [modifiedAt]
/// * [archivedAt] - Setting the archivedAt time marks the towable as archived. Towables marked as archived will not appear in list requests unless archived filter is set to true. Archived towable cannot be updated, unless archivedAt is first set to null.
@BuiltValue()
abstract class Towable implements Built<Towable, TowableBuilder> {
  @BuiltValueField(wireName: r'plateNumber')
  String get plateNumber;

  @BuiltValueField(wireName: r'type')
  TowableTypeEnum get type;
  // enum typeEnum {  TRAILER,  SEMI_TRAILER,  DOLLY,  };

  /// Towable identification number. This is unique for each towable and should be used as a hardware identifier for this specific towable.
  @BuiltValueField(wireName: r'vin')
  String get vin;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'creatorId')
  String? get creatorId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'lastModifierId')
  String? get lastModifierId;

  @BuiltValueField(wireName: r'modifiedAt')
  DateTime? get modifiedAt;

  /// Setting the archivedAt time marks the towable as archived. Towables marked as archived will not appear in list requests unless archived filter is set to true. Archived towable cannot be updated, unless archivedAt is first set to null.
  @BuiltValueField(wireName: r'archivedAt')
  DateTime? get archivedAt;

  Towable._();

  factory Towable([void updates(TowableBuilder b)]) = _$Towable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TowableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Towable> get serializer => _$TowableSerializer();
}

class _$TowableSerializer implements PrimitiveSerializer<Towable> {
  @override
  final Iterable<Type> types = const [Towable, _$Towable];

  @override
  final String wireName = r'Towable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Towable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'plateNumber';
    yield serializers.serialize(
      object.plateNumber,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(TowableTypeEnum),
    );
    yield r'vin';
    yield serializers.serialize(
      object.vin,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.archivedAt != null) {
      yield r'archivedAt';
      yield serializers.serialize(
        object.archivedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Towable object, {
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
    required TowableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'plateNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.plateNumber = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TowableTypeEnum),
          ) as TowableTypeEnum;
          result.type = valueDes;
          break;
        case r'vin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.vin = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
        case r'archivedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.archivedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Towable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TowableBuilder();
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

class TowableTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'TRAILER')
  static const TowableTypeEnum TRAILER = _$towableTypeEnum_TRAILER;
  @BuiltValueEnumConst(wireName: r'SEMI_TRAILER')
  static const TowableTypeEnum SEMI_TRAILER = _$towableTypeEnum_SEMI_TRAILER;
  @BuiltValueEnumConst(wireName: r'DOLLY', fallback: true)
  static const TowableTypeEnum DOLLY = _$towableTypeEnum_DOLLY;

  static Serializer<TowableTypeEnum> get serializer =>
      _$towableTypeEnumSerializer;

  const TowableTypeEnum._(String name) : super(name);

  static BuiltSet<TowableTypeEnum> get values => _$towableTypeEnumValues;
  static TowableTypeEnum valueOf(String name) => _$towableTypeEnumValueOf(name);
}
