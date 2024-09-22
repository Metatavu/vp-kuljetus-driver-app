//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'truck_driver_card.g.dart';

/// TruckDriverCard
///
/// Properties:
/// * [id] - Driver card ID
/// * [timestamp] - Timestamp for driver card insertion. Unix timestamp in milliseconds.
@BuiltValue()
abstract class TruckDriverCard
    implements Built<TruckDriverCard, TruckDriverCardBuilder> {
  /// Driver card ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Timestamp for driver card insertion. Unix timestamp in milliseconds.
  @BuiltValueField(wireName: r'timestamp')
  int get timestamp;

  TruckDriverCard._();

  factory TruckDriverCard([void updates(TruckDriverCardBuilder b)]) =
      _$TruckDriverCard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TruckDriverCardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TruckDriverCard> get serializer =>
      _$TruckDriverCardSerializer();
}

class _$TruckDriverCardSerializer
    implements PrimitiveSerializer<TruckDriverCard> {
  @override
  final Iterable<Type> types = const [TruckDriverCard, _$TruckDriverCard];

  @override
  final String wireName = r'TruckDriverCard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TruckDriverCard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TruckDriverCard object, {
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
    required TruckDriverCardBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TruckDriverCard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TruckDriverCardBuilder();
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
