//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'salary_group.g.dart';

class SalaryGroup extends EnumClass {
  /// Employee's salary group Kuljettaja (Driver) - Should be default IF the employees office is not KOTKA VP-Logistics (VPlogistics) Office Terminal
  @BuiltValueEnumConst(wireName: r'DRIVER')
  static const SalaryGroup DRIVER = _$DRIVER;

  /// Employee's salary group Kuljettaja (Driver) - Should be default IF the employees office is not KOTKA VP-Logistics (VPlogistics) Office Terminal
  @BuiltValueEnumConst(wireName: r'VPLOGISTICS')
  static const SalaryGroup VPLOGISTICS = _$VPLOGISTICS;

  /// Employee's salary group Kuljettaja (Driver) - Should be default IF the employees office is not KOTKA VP-Logistics (VPlogistics) Office Terminal
  @BuiltValueEnumConst(wireName: r'OFFICE')
  static const SalaryGroup OFFICE = _$OFFICE;

  /// Employee's salary group Kuljettaja (Driver) - Should be default IF the employees office is not KOTKA VP-Logistics (VPlogistics) Office Terminal
  @BuiltValueEnumConst(wireName: r'TERMINAL', fallback: true)
  static const SalaryGroup TERMINAL = _$TERMINAL;

  static Serializer<SalaryGroup> get serializer => _$salaryGroupSerializer;

  const SalaryGroup._(String name) : super(name);

  static BuiltSet<SalaryGroup> get values => _$values;
  static SalaryGroup valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SalaryGroupMixin = Object with _$SalaryGroupMixin;
