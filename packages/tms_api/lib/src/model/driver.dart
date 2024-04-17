//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'driver.g.dart';

/// Represents single truck driver
///
/// Properties:
/// * [id]
/// * [displayName] - Driver display name
/// * [archivedAt] - Setting the archivedAt time marks the driver as archived. Drivers marked as archived will not appear in list requests unless archived filter is set to true. Archived driver cannot be updated, unless archivedAt is first set to null.
@BuiltValue()
abstract class Driver implements Built<Driver, DriverBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Driver display name
  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  /// Setting the archivedAt time marks the driver as archived. Drivers marked as archived will not appear in list requests unless archived filter is set to true. Archived driver cannot be updated, unless archivedAt is first set to null.
  @BuiltValueField(wireName: r'archivedAt')
  DateTime? get archivedAt;

  Driver._();

  factory Driver([void updates(DriverBuilder b)]) = _$Driver;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DriverBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Driver> get serializer => _$DriverSerializer();
}

class _$DriverSerializer implements PrimitiveSerializer<Driver> {
  @override
  final Iterable<Type> types = const [Driver, _$Driver];

  @override
  final String wireName = r'Driver';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Driver object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
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
    Driver object, {
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
    required DriverBuilder result,
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
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
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
  Driver deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DriverBuilder();
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
