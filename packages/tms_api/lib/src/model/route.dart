//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'route.g.dart';

/// Represent single planned route for single truck driver
///
/// Properties:
/// * [name] - Name of the route
/// * [departureTime] - Departure time of the route
/// * [id]
/// * [truckId] - Truck id
/// * [driverId] - Driver id
/// * [creatorId]
/// * [createdAt]
/// * [lastModifierId]
/// * [modifiedAt]
@BuiltValue()
abstract class Route implements Built<Route, RouteBuilder> {
  /// Name of the route
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Departure time of the route
  @BuiltValueField(wireName: r'departureTime')
  DateTime get departureTime;

  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Truck id
  @BuiltValueField(wireName: r'truckId')
  String? get truckId;

  /// Driver id
  @BuiltValueField(wireName: r'driverId')
  String? get driverId;

  @BuiltValueField(wireName: r'creatorId')
  String? get creatorId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'lastModifierId')
  String? get lastModifierId;

  @BuiltValueField(wireName: r'modifiedAt')
  DateTime? get modifiedAt;

  Route._();

  factory Route([void updates(RouteBuilder b)]) = _$Route;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RouteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Route> get serializer => _$RouteSerializer();
}

class _$RouteSerializer implements PrimitiveSerializer<Route> {
  @override
  final Iterable<Type> types = const [Route, _$Route];

  @override
  final String wireName = r'Route';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Route object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'departureTime';
    yield serializers.serialize(
      object.departureTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.truckId != null) {
      yield r'truckId';
      yield serializers.serialize(
        object.truckId,
        specifiedType: const FullType(String),
      );
    }
    if (object.driverId != null) {
      yield r'driverId';
      yield serializers.serialize(
        object.driverId,
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
    Route object, {
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
    required RouteBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'departureTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.departureTime = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'truckId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.truckId = valueDes;
          break;
        case r'driverId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.driverId = valueDes;
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
  Route deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RouteBuilder();
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
