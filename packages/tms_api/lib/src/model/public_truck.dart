//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'public_truck.g.dart';

/// Represent public info of single truck
///
/// Properties:
/// * [plateNumber]
/// * [vin] - Truck identification number. This is unique for each truck and should be used as a hardware identifier for this specific truck.
/// * [id]
/// * [name]
@BuiltValue()
abstract class PublicTruck implements Built<PublicTruck, PublicTruckBuilder> {
  @BuiltValueField(wireName: r'plateNumber')
  String get plateNumber;

  /// Truck identification number. This is unique for each truck and should be used as a hardware identifier for this specific truck.
  @BuiltValueField(wireName: r'vin')
  String get vin;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  PublicTruck._();

  factory PublicTruck([void updates(PublicTruckBuilder b)]) = _$PublicTruck;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PublicTruckBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PublicTruck> get serializer => _$PublicTruckSerializer();
}

class _$PublicTruckSerializer implements PrimitiveSerializer<PublicTruck> {
  @override
  final Iterable<Type> types = const [PublicTruck, _$PublicTruck];

  @override
  final String wireName = r'PublicTruck';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PublicTruck object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'plateNumber';
    yield serializers.serialize(
      object.plateNumber,
      specifiedType: const FullType(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    PublicTruck object, {
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
    required PublicTruckBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PublicTruck deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PublicTruckBuilder();
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
