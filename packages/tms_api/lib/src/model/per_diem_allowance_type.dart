//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'per_diem_allowance_type.g.dart';

class PerDiemAllowanceType extends EnumClass {
  /// Per diem allowance
  @BuiltValueEnumConst(wireName: r'PARTIAL')
  static const PerDiemAllowanceType PARTIAL = _$PARTIAL;

  /// Per diem allowance
  @BuiltValueEnumConst(wireName: r'FULL', fallback: true)
  static const PerDiemAllowanceType FULL = _$FULL;

  static Serializer<PerDiemAllowanceType> get serializer =>
      _$perDiemAllowanceTypeSerializer;

  const PerDiemAllowanceType._(String name) : super(name);

  static BuiltSet<PerDiemAllowanceType> get values => _$values;
  static PerDiemAllowanceType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PerDiemAllowanceTypeMixin = Object
    with _$PerDiemAllowanceTypeMixin;
