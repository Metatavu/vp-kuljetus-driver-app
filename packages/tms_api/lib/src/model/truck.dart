//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'truck.g.dart';

/// Represent single truck
///
/// Properties:
/// * [plateNumber]
/// * [type]
/// * [vin] - Truck identification number. This is unique for each truck and should be used as a hardware identifier for this specific truck.
/// * [id]
/// * [name]
/// * [activeVehicleId] - Active vehicle id. This is the current vehicle that the truck is part of. It updates whenever the vehicle structure is updated.
/// * [creatorId]
/// * [createdAt]
/// * [lastModifierId]
/// * [modifiedAt]
/// * [archivedAt] - Setting the archivedAt time marks the truck as archived. Trucks marked as archived will not appear in list requests unless archived filter is set to true. Archived truck cannot be updated, unless archivedAt is first set to null.
@BuiltValue()
abstract class Truck implements Built<Truck, TruckBuilder> {
  @BuiltValueField(wireName: r'plateNumber')
  String get plateNumber;

  @BuiltValueField(wireName: r'type')
  TruckTypeEnum get type;
  // enum typeEnum {  TRUCK,  SEMI_TRUCK,  };

  /// Truck identification number. This is unique for each truck and should be used as a hardware identifier for this specific truck.
  @BuiltValueField(wireName: r'vin')
  String get vin;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Active vehicle id. This is the current vehicle that the truck is part of. It updates whenever the vehicle structure is updated.
  @BuiltValueField(wireName: r'activeVehicleId')
  String? get activeVehicleId;

  @BuiltValueField(wireName: r'creatorId')
  String? get creatorId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'lastModifierId')
  String? get lastModifierId;

  @BuiltValueField(wireName: r'modifiedAt')
  DateTime? get modifiedAt;

  /// Setting the archivedAt time marks the truck as archived. Trucks marked as archived will not appear in list requests unless archived filter is set to true. Archived truck cannot be updated, unless archivedAt is first set to null.
  @BuiltValueField(wireName: r'archivedAt')
  DateTime? get archivedAt;

  Truck._();

  factory Truck([void updates(TruckBuilder b)]) = _$Truck;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TruckBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Truck> get serializer => _$TruckSerializer();
}

class _$TruckSerializer implements PrimitiveSerializer<Truck> {
  @override
  final Iterable<Type> types = const [Truck, _$Truck];

  @override
  final String wireName = r'Truck';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Truck object, {
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
      specifiedType: const FullType(TruckTypeEnum),
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
    if (object.activeVehicleId != null) {
      yield r'activeVehicleId';
      yield serializers.serialize(
        object.activeVehicleId,
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
    Truck object, {
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
    required TruckBuilder result,
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
            specifiedType: const FullType(TruckTypeEnum),
          ) as TruckTypeEnum;
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
        case r'activeVehicleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.activeVehicleId = valueDes;
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
  Truck deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TruckBuilder();
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

class TruckTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'TRUCK')
  static const TruckTypeEnum TRUCK = _$truckTypeEnum_TRUCK;
  @BuiltValueEnumConst(wireName: r'SEMI_TRUCK', fallback: true)
  static const TruckTypeEnum SEMI_TRUCK = _$truckTypeEnum_SEMI_TRUCK;

  static Serializer<TruckTypeEnum> get serializer => _$truckTypeEnumSerializer;

  const TruckTypeEnum._(String name) : super(name);

  static BuiltSet<TruckTypeEnum> get values => _$truckTypeEnumValues;
  static TruckTypeEnum valueOf(String name) => _$truckTypeEnumValueOf(name);
}
