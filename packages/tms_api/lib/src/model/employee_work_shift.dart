//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:tms_api/src/model/absence_type.dart';
import 'package:tms_api/src/model/date.dart';
import 'package:tms_api/src/model/per_diem_allowance_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'employee_work_shift.g.dart';

/// Represents single employee work shift. A work event must always relate to an employee work shift.  When created, the work shift is not approved. It needs to be approved by a supervisor before the work shift hours can be sent to payroll.  Employee work shift always relates to a single date. When work shift is created during the creation of a work event, the date is derived from the work event. When created manually, the date should also be set manually.  EndedAt and startedAt are derived from the work events in the shift. StartedAt is based on SHIFT_START event and endedAt is based on SHIFT_END event. When the corresponding event is not found, the time is null.  When calculating salaries for a work period, all work shifts started within the period will be included in their entirety, even if the events of the shifts would time-wise be outside the period.
///
/// Properties:
/// * [date] - Work shift date.
/// * [employeeId] - Employee's ID
/// * [approved] - Whether the work shift has been approved by a supervisor. Work shift hours cannot be updated if the work shift is approved.
/// * [id]
/// * [startedAt] - Work shift start time
/// * [endedAt] - Work shift end time
/// * [truckIds] - List of truck IDs used during the work shift. Derived from work events in the shift.
/// * [dayOffWorkAllowance] - Day off work allowance is used to mark the day when the work shift started as a day off for the employee. This means that all the work hours done during that day will be also added to the HOLIDAY_ALLOWANCE work type during work shift hours calculation.
/// * [absence]
/// * [perDiemAllowance]
/// * [notes] - Additional notes for the work shift. For example, if the employee was sick during the shift.
@BuiltValue()
abstract class EmployeeWorkShift
    implements Built<EmployeeWorkShift, EmployeeWorkShiftBuilder> {
  /// Work shift date.
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// Employee's ID
  @BuiltValueField(wireName: r'employeeId')
  String get employeeId;

  /// Whether the work shift has been approved by a supervisor. Work shift hours cannot be updated if the work shift is approved.
  @BuiltValueField(wireName: r'approved')
  bool get approved;

  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Work shift start time
  @BuiltValueField(wireName: r'startedAt')
  Date? get startedAt;

  /// Work shift end time
  @BuiltValueField(wireName: r'endedAt')
  Date? get endedAt;

  /// List of truck IDs used during the work shift. Derived from work events in the shift.
  @BuiltValueField(wireName: r'truckIds')
  BuiltList<String>? get truckIds;

  /// Day off work allowance is used to mark the day when the work shift started as a day off for the employee. This means that all the work hours done during that day will be also added to the HOLIDAY_ALLOWANCE work type during work shift hours calculation.
  @BuiltValueField(wireName: r'dayOffWorkAllowance')
  bool? get dayOffWorkAllowance;

  @BuiltValueField(wireName: r'absence')
  AbsenceType? get absence;
  // enum absenceEnum {  TRAINING,  VACATION,  OFFICIAL_DUTIES,  COMPENSATORY_LEAVE,  SICK_LEAVE,  };

  @BuiltValueField(wireName: r'PerDiemAllowance')
  PerDiemAllowanceType? get perDiemAllowance;
  // enum perDiemAllowanceEnum {  PARTIAL,  FULL,  };

  /// Additional notes for the work shift. For example, if the employee was sick during the shift.
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  EmployeeWorkShift._();

  factory EmployeeWorkShift([void updates(EmployeeWorkShiftBuilder b)]) =
      _$EmployeeWorkShift;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmployeeWorkShiftBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmployeeWorkShift> get serializer =>
      _$EmployeeWorkShiftSerializer();
}

class _$EmployeeWorkShiftSerializer
    implements PrimitiveSerializer<EmployeeWorkShift> {
  @override
  final Iterable<Type> types = const [EmployeeWorkShift, _$EmployeeWorkShift];

  @override
  final String wireName = r'EmployeeWorkShift';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmployeeWorkShift object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'employeeId';
    yield serializers.serialize(
      object.employeeId,
      specifiedType: const FullType(String),
    );
    yield r'approved';
    yield serializers.serialize(
      object.approved,
      specifiedType: const FullType(bool),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType(Date),
      );
    }
    if (object.endedAt != null) {
      yield r'endedAt';
      yield serializers.serialize(
        object.endedAt,
        specifiedType: const FullType(Date),
      );
    }
    if (object.truckIds != null) {
      yield r'truckIds';
      yield serializers.serialize(
        object.truckIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.dayOffWorkAllowance != null) {
      yield r'dayOffWorkAllowance';
      yield serializers.serialize(
        object.dayOffWorkAllowance,
        specifiedType: const FullType(bool),
      );
    }
    if (object.absence != null) {
      yield r'absence';
      yield serializers.serialize(
        object.absence,
        specifiedType: const FullType(AbsenceType),
      );
    }
    if (object.perDiemAllowance != null) {
      yield r'PerDiemAllowance';
      yield serializers.serialize(
        object.perDiemAllowance,
        specifiedType: const FullType(PerDiemAllowanceType),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EmployeeWorkShift object, {
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
    required EmployeeWorkShiftBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'employeeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.employeeId = valueDes;
          break;
        case r'approved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.approved = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.startedAt = valueDes;
          break;
        case r'endedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.endedAt = valueDes;
          break;
        case r'truckIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.truckIds.replace(valueDes);
          break;
        case r'dayOffWorkAllowance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.dayOffWorkAllowance = valueDes;
          break;
        case r'absence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AbsenceType),
          ) as AbsenceType;
          result.absence = valueDes;
          break;
        case r'PerDiemAllowance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PerDiemAllowanceType),
          ) as PerDiemAllowanceType;
          result.perDiemAllowance = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmployeeWorkShift deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmployeeWorkShiftBuilder();
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
