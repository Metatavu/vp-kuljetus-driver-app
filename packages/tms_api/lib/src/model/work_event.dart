//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:tms_api/src/model/work_event_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'work_event.g.dart';

/// Represents single work event.  Whenever employee tracks a new work event, it is determined, whether a new work shift should be created for the event, or if the event should be added to the shift of the last work event recorded.  A new work shift should be created, if either - There are no previous work events for the employee, or - The last work event is of type SHIFT_END, or - The last work event is of type BREAK or UNKNOWN and has been going on longer than 3 hours  A work shift might already exist for the current day with _no_ events. This can happen, if a shift has been created manually by the manager in advance. In this case, whenever a new shift would be created, the event should be added to this existing work shift instead.
///
/// Properties:
/// * [employeeId] - Employee's ID
/// * [time] - Work event time
/// * [workEventType]
/// * [id]
/// * [employeeWorkShiftId] - employee work shift ID
/// * [truckId] - The ID of truck used during the work event
@BuiltValue()
abstract class WorkEvent implements Built<WorkEvent, WorkEventBuilder> {
  /// Employee's ID
  @BuiltValueField(wireName: r'employeeId')
  String get employeeId;

  /// Work event time
  @BuiltValueField(wireName: r'time')
  DateTime get time;

  @BuiltValueField(wireName: r'workEventType')
  WorkEventType get workEventType;
  // enum workEventTypeEnum {  VEGETABLE,  DRY,  MEAT_CELLAR,  MEIRA,  FROZEN,  PALTE,  BREWERY,  GREASE,  OFFICE,  LOGIN,  LOGOUT,  OTHER_WORK,  BREAK,  SHIFT_START,  SHIFT_END,  UNKNOWN,  DRIVE,  LOADING,  UNLOADING,  AVAILABILITY,  DRIVER_CARD_INSERTED,  DRIVER_CARD_REMOVED,  };

  @BuiltValueField(wireName: r'id')
  String? get id;

  /// employee work shift ID
  @BuiltValueField(wireName: r'employeeWorkShiftId')
  String? get employeeWorkShiftId;

  /// The ID of truck used during the work event
  @BuiltValueField(wireName: r'truckId')
  String? get truckId;

  WorkEvent._();

  factory WorkEvent([void updates(WorkEventBuilder b)]) = _$WorkEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkEvent> get serializer => _$WorkEventSerializer();
}

class _$WorkEventSerializer implements PrimitiveSerializer<WorkEvent> {
  @override
  final Iterable<Type> types = const [WorkEvent, _$WorkEvent];

  @override
  final String wireName = r'WorkEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'employeeId';
    yield serializers.serialize(
      object.employeeId,
      specifiedType: const FullType(String),
    );
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    yield r'workEventType';
    yield serializers.serialize(
      object.workEventType,
      specifiedType: const FullType(WorkEventType),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.employeeWorkShiftId != null) {
      yield r'employeeWorkShiftId';
      yield serializers.serialize(
        object.employeeWorkShiftId,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkEvent object, {
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
    required WorkEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'employeeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.employeeId = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        case r'workEventType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WorkEventType),
          ) as WorkEventType;
          result.workEventType = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'employeeWorkShiftId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.employeeWorkShiftId = valueDes;
          break;
        case r'truckId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.truckId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkEventBuilder();
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
