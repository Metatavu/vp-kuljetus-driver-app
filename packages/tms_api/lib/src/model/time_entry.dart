//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_entry.g.dart';

/// Represents single time entry
///
/// Properties:
/// * [employeeId] - Employee's id
/// * [startTime] - Time entry start time
/// * [workTypeId] - Work type id
/// * [id]
/// * [endTime] - Time entry end time. End time is not required for time entries that are still running. If an employee has an existing time entry without an end time and the new entry is missing end time, the new time entry should not be created and instead a bad request is to be returned. When a new entry is created with both start and end times, the existing entry is ignored.
@BuiltValue()
abstract class TimeEntry implements Built<TimeEntry, TimeEntryBuilder> {
  /// Employee's id
  @BuiltValueField(wireName: r'employeeId')
  String get employeeId;

  /// Time entry start time
  @BuiltValueField(wireName: r'startTime')
  DateTime get startTime;

  /// Work type id
  @BuiltValueField(wireName: r'workTypeId')
  String get workTypeId;

  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Time entry end time. End time is not required for time entries that are still running. If an employee has an existing time entry without an end time and the new entry is missing end time, the new time entry should not be created and instead a bad request is to be returned. When a new entry is created with both start and end times, the existing entry is ignored.
  @BuiltValueField(wireName: r'endTime')
  DateTime? get endTime;

  TimeEntry._();

  factory TimeEntry([void updates(TimeEntryBuilder b)]) = _$TimeEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeEntry> get serializer => _$TimeEntrySerializer();
}

class _$TimeEntrySerializer implements PrimitiveSerializer<TimeEntry> {
  @override
  final Iterable<Type> types = const [TimeEntry, _$TimeEntry];

  @override
  final String wireName = r'TimeEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'employeeId';
    yield serializers.serialize(
      object.employeeId,
      specifiedType: const FullType(String),
    );
    yield r'startTime';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(DateTime),
    );
    yield r'workTypeId';
    yield serializers.serialize(
      object.workTypeId,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.endTime != null) {
      yield r'endTime';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeEntry object, {
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
    required TimeEntryBuilder result,
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
        case r'startTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startTime = valueDes;
          break;
        case r'workTypeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.workTypeId = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'endTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeEntryBuilder();
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
