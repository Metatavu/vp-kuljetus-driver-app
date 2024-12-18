//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'absence_type.g.dart';

class AbsenceType extends EnumClass {
  /// Absence types are used to mark the absence type of the employee work shift. Absences are taken into account when calculating the total working hours for employee when determining working hours for payroll. They might also affect the allowance hours of the work period.  Here are definitions for the absence types:  | name               | abbreviation | finnish name       | work hours | work hours on holiday | affects allowance hours | | ------------------ | ------------ | ------------------ | ---------- | --------------------- | ----------------------- | | TRAINING           | KO           | Koulutus työajalla | 8h         | 8h                    | no                      | | VACATION           | LO           | Loma               | 6.67h      | 0h                    | yes                     | | OFFICIAL_DUTIES    | LT           | Luottamustoimet    | 8h         | 8h                    | yes                     | | COMPENSATORY_LEAVE | PP           | Pekkanen           | 8h         | 8h                    | yes                     | | SICK_LEAVE         | SL           | Sairausloma        | 8h         | 8h                    | yes                     |
  @BuiltValueEnumConst(wireName: r'TRAINING')
  static const AbsenceType TRAINING = _$TRAINING;

  /// Absence types are used to mark the absence type of the employee work shift. Absences are taken into account when calculating the total working hours for employee when determining working hours for payroll. They might also affect the allowance hours of the work period.  Here are definitions for the absence types:  | name               | abbreviation | finnish name       | work hours | work hours on holiday | affects allowance hours | | ------------------ | ------------ | ------------------ | ---------- | --------------------- | ----------------------- | | TRAINING           | KO           | Koulutus työajalla | 8h         | 8h                    | no                      | | VACATION           | LO           | Loma               | 6.67h      | 0h                    | yes                     | | OFFICIAL_DUTIES    | LT           | Luottamustoimet    | 8h         | 8h                    | yes                     | | COMPENSATORY_LEAVE | PP           | Pekkanen           | 8h         | 8h                    | yes                     | | SICK_LEAVE         | SL           | Sairausloma        | 8h         | 8h                    | yes                     |
  @BuiltValueEnumConst(wireName: r'VACATION')
  static const AbsenceType VACATION = _$VACATION;

  /// Absence types are used to mark the absence type of the employee work shift. Absences are taken into account when calculating the total working hours for employee when determining working hours for payroll. They might also affect the allowance hours of the work period.  Here are definitions for the absence types:  | name               | abbreviation | finnish name       | work hours | work hours on holiday | affects allowance hours | | ------------------ | ------------ | ------------------ | ---------- | --------------------- | ----------------------- | | TRAINING           | KO           | Koulutus työajalla | 8h         | 8h                    | no                      | | VACATION           | LO           | Loma               | 6.67h      | 0h                    | yes                     | | OFFICIAL_DUTIES    | LT           | Luottamustoimet    | 8h         | 8h                    | yes                     | | COMPENSATORY_LEAVE | PP           | Pekkanen           | 8h         | 8h                    | yes                     | | SICK_LEAVE         | SL           | Sairausloma        | 8h         | 8h                    | yes                     |
  @BuiltValueEnumConst(wireName: r'OFFICIAL_DUTIES')
  static const AbsenceType OFFICIAL_DUTIES = _$OFFICIAL_DUTIES;

  /// Absence types are used to mark the absence type of the employee work shift. Absences are taken into account when calculating the total working hours for employee when determining working hours for payroll. They might also affect the allowance hours of the work period.  Here are definitions for the absence types:  | name               | abbreviation | finnish name       | work hours | work hours on holiday | affects allowance hours | | ------------------ | ------------ | ------------------ | ---------- | --------------------- | ----------------------- | | TRAINING           | KO           | Koulutus työajalla | 8h         | 8h                    | no                      | | VACATION           | LO           | Loma               | 6.67h      | 0h                    | yes                     | | OFFICIAL_DUTIES    | LT           | Luottamustoimet    | 8h         | 8h                    | yes                     | | COMPENSATORY_LEAVE | PP           | Pekkanen           | 8h         | 8h                    | yes                     | | SICK_LEAVE         | SL           | Sairausloma        | 8h         | 8h                    | yes                     |
  @BuiltValueEnumConst(wireName: r'COMPENSATORY_LEAVE')
  static const AbsenceType COMPENSATORY_LEAVE = _$COMPENSATORY_LEAVE;

  /// Absence types are used to mark the absence type of the employee work shift. Absences are taken into account when calculating the total working hours for employee when determining working hours for payroll. They might also affect the allowance hours of the work period.  Here are definitions for the absence types:  | name               | abbreviation | finnish name       | work hours | work hours on holiday | affects allowance hours | | ------------------ | ------------ | ------------------ | ---------- | --------------------- | ----------------------- | | TRAINING           | KO           | Koulutus työajalla | 8h         | 8h                    | no                      | | VACATION           | LO           | Loma               | 6.67h      | 0h                    | yes                     | | OFFICIAL_DUTIES    | LT           | Luottamustoimet    | 8h         | 8h                    | yes                     | | COMPENSATORY_LEAVE | PP           | Pekkanen           | 8h         | 8h                    | yes                     | | SICK_LEAVE         | SL           | Sairausloma        | 8h         | 8h                    | yes                     |
  @BuiltValueEnumConst(wireName: r'SICK_LEAVE', fallback: true)
  static const AbsenceType SICK_LEAVE = _$SICK_LEAVE;

  static Serializer<AbsenceType> get serializer => _$absenceTypeSerializer;

  const AbsenceType._(String name) : super(name);

  static BuiltSet<AbsenceType> get values => _$values;
  static AbsenceType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AbsenceTypeMixin = Object with _$AbsenceTypeMixin;
