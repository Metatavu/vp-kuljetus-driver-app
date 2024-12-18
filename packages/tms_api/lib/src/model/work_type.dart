//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'work_type.g.dart';

class WorkType extends EnumClass {
  /// Work type of the work shift hours. A single work type represents aggregated value from one or more work event types.  | name                   | finnish name         | | ---------------------- | -------------------- | | PAID_WORK              | Palkallinen työ      | | BREAK                  | Tauko                | | STANDBY                | Odotus               | | EVENING_ALLOWANCE      | Iltatyö              | | NIGHT_ALLOWANCE        | Yötyö                | | HOLIDAY_ALLOWANCE      | Pyhälisä             | | JOB_SPECIFIC_ALLOWANCE | Työkohtaisuuslisä    | | FROZEN_ALLOWANCE       | Pakastelisä          |
  @BuiltValueEnumConst(wireName: r'PAID_WORK')
  static const WorkType PAID_WORK = _$PAID_WORK;

  /// Work type of the work shift hours. A single work type represents aggregated value from one or more work event types.  | name                   | finnish name         | | ---------------------- | -------------------- | | PAID_WORK              | Palkallinen työ      | | BREAK                  | Tauko                | | STANDBY                | Odotus               | | EVENING_ALLOWANCE      | Iltatyö              | | NIGHT_ALLOWANCE        | Yötyö                | | HOLIDAY_ALLOWANCE      | Pyhälisä             | | JOB_SPECIFIC_ALLOWANCE | Työkohtaisuuslisä    | | FROZEN_ALLOWANCE       | Pakastelisä          |
  @BuiltValueEnumConst(wireName: r'BREAK')
  static const WorkType BREAK = _$BREAK;

  /// Work type of the work shift hours. A single work type represents aggregated value from one or more work event types.  | name                   | finnish name         | | ---------------------- | -------------------- | | PAID_WORK              | Palkallinen työ      | | BREAK                  | Tauko                | | STANDBY                | Odotus               | | EVENING_ALLOWANCE      | Iltatyö              | | NIGHT_ALLOWANCE        | Yötyö                | | HOLIDAY_ALLOWANCE      | Pyhälisä             | | JOB_SPECIFIC_ALLOWANCE | Työkohtaisuuslisä    | | FROZEN_ALLOWANCE       | Pakastelisä          |
  @BuiltValueEnumConst(wireName: r'STANDBY')
  static const WorkType STANDBY = _$STANDBY;

  /// Work type of the work shift hours. A single work type represents aggregated value from one or more work event types.  | name                   | finnish name         | | ---------------------- | -------------------- | | PAID_WORK              | Palkallinen työ      | | BREAK                  | Tauko                | | STANDBY                | Odotus               | | EVENING_ALLOWANCE      | Iltatyö              | | NIGHT_ALLOWANCE        | Yötyö                | | HOLIDAY_ALLOWANCE      | Pyhälisä             | | JOB_SPECIFIC_ALLOWANCE | Työkohtaisuuslisä    | | FROZEN_ALLOWANCE       | Pakastelisä          |
  @BuiltValueEnumConst(wireName: r'EVENING_ALLOWANCE')
  static const WorkType EVENING_ALLOWANCE = _$EVENING_ALLOWANCE;

  /// Work type of the work shift hours. A single work type represents aggregated value from one or more work event types.  | name                   | finnish name         | | ---------------------- | -------------------- | | PAID_WORK              | Palkallinen työ      | | BREAK                  | Tauko                | | STANDBY                | Odotus               | | EVENING_ALLOWANCE      | Iltatyö              | | NIGHT_ALLOWANCE        | Yötyö                | | HOLIDAY_ALLOWANCE      | Pyhälisä             | | JOB_SPECIFIC_ALLOWANCE | Työkohtaisuuslisä    | | FROZEN_ALLOWANCE       | Pakastelisä          |
  @BuiltValueEnumConst(wireName: r'NIGHT_ALLOWANCE')
  static const WorkType NIGHT_ALLOWANCE = _$NIGHT_ALLOWANCE;

  /// Work type of the work shift hours. A single work type represents aggregated value from one or more work event types.  | name                   | finnish name         | | ---------------------- | -------------------- | | PAID_WORK              | Palkallinen työ      | | BREAK                  | Tauko                | | STANDBY                | Odotus               | | EVENING_ALLOWANCE      | Iltatyö              | | NIGHT_ALLOWANCE        | Yötyö                | | HOLIDAY_ALLOWANCE      | Pyhälisä             | | JOB_SPECIFIC_ALLOWANCE | Työkohtaisuuslisä    | | FROZEN_ALLOWANCE       | Pakastelisä          |
  @BuiltValueEnumConst(wireName: r'HOLIDAY_ALLOWANCE')
  static const WorkType HOLIDAY_ALLOWANCE = _$HOLIDAY_ALLOWANCE;

  /// Work type of the work shift hours. A single work type represents aggregated value from one or more work event types.  | name                   | finnish name         | | ---------------------- | -------------------- | | PAID_WORK              | Palkallinen työ      | | BREAK                  | Tauko                | | STANDBY                | Odotus               | | EVENING_ALLOWANCE      | Iltatyö              | | NIGHT_ALLOWANCE        | Yötyö                | | HOLIDAY_ALLOWANCE      | Pyhälisä             | | JOB_SPECIFIC_ALLOWANCE | Työkohtaisuuslisä    | | FROZEN_ALLOWANCE       | Pakastelisä          |
  @BuiltValueEnumConst(wireName: r'JOB_SPECIFIC_ALLOWANCE')
  static const WorkType JOB_SPECIFIC_ALLOWANCE = _$JOB_SPECIFIC_ALLOWANCE;

  /// Work type of the work shift hours. A single work type represents aggregated value from one or more work event types.  | name                   | finnish name         | | ---------------------- | -------------------- | | PAID_WORK              | Palkallinen työ      | | BREAK                  | Tauko                | | STANDBY                | Odotus               | | EVENING_ALLOWANCE      | Iltatyö              | | NIGHT_ALLOWANCE        | Yötyö                | | HOLIDAY_ALLOWANCE      | Pyhälisä             | | JOB_SPECIFIC_ALLOWANCE | Työkohtaisuuslisä    | | FROZEN_ALLOWANCE       | Pakastelisä          |
  @BuiltValueEnumConst(wireName: r'FROZEN_ALLOWANCE', fallback: true)
  static const WorkType FROZEN_ALLOWANCE = _$FROZEN_ALLOWANCE;

  static Serializer<WorkType> get serializer => _$workTypeSerializer;

  const WorkType._(String name) : super(name);

  static BuiltSet<WorkType> get values => _$values;
  static WorkType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class WorkTypeMixin = Object with _$WorkTypeMixin;
