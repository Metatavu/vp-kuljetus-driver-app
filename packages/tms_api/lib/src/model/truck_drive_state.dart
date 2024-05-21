//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:tms_api/src/model/truck_drive_state_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'truck_drive_state.g.dart';

/// TruckDriveState
///
/// Properties:
/// * [timestamp] - Timestamp for truck drive state
/// * [state]
/// * [id] - Truck drive state ID
/// * [driverId] - Driver ID.
/// * [driverCardId] - Driver card ID. This is used to identify the driver when creating a new drive state.
@BuiltValue()
abstract class TruckDriveState
    implements Built<TruckDriveState, TruckDriveStateBuilder> {
  /// Timestamp for truck drive state
  @BuiltValueField(wireName: r'timestamp')
  int get timestamp;

  @BuiltValueField(wireName: r'state')
  TruckDriveStateEnum get state;
  // enum stateEnum {  REST,  DRIVER_AVAILABLE,  WORK,  DRIVE,  ERROR,  NOT_AVAILABLE,  };

  /// Truck drive state ID
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Driver ID.
  @BuiltValueField(wireName: r'driverId')
  String? get driverId;

  /// Driver card ID. This is used to identify the driver when creating a new drive state.
  @BuiltValueField(wireName: r'driverCardId')
  String? get driverCardId;

  TruckDriveState._();

  factory TruckDriveState([void updates(TruckDriveStateBuilder b)]) =
      _$TruckDriveState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TruckDriveStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TruckDriveState> get serializer =>
      _$TruckDriveStateSerializer();
}

class _$TruckDriveStateSerializer
    implements PrimitiveSerializer<TruckDriveState> {
  @override
  final Iterable<Type> types = const [TruckDriveState, _$TruckDriveState];

  @override
  final String wireName = r'TruckDriveState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TruckDriveState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(int),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(TruckDriveStateEnum),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.driverCardId != null) {
      yield r'driverCardId';
      yield serializers.serialize(
        object.driverCardId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TruckDriveState object, {
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
    required TruckDriveStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timestamp = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TruckDriveStateEnum),
          ) as TruckDriveStateEnum;
          result.state = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'driverId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.driverId = valueDes;
          break;
        case r'driverCardId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.driverCardId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TruckDriveState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TruckDriveStateBuilder();
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
