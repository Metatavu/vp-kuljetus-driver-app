//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'office.g.dart';

class Office extends EnumClass {
  /// Employee's office. Salary group should be set to VPLogistics if the office is KOTKA
  @BuiltValueEnumConst(wireName: r'KOTKA')
  static const Office KOTKA = _$KOTKA;

  /// Employee's office. Salary group should be set to VPLogistics if the office is KOTKA
  @BuiltValueEnumConst(wireName: r'KOUVOLA')
  static const Office KOUVOLA = _$KOUVOLA;

  /// Employee's office. Salary group should be set to VPLogistics if the office is KOTKA
  @BuiltValueEnumConst(wireName: r'RAUHA', fallback: true)
  static const Office RAUHA = _$RAUHA;

  static Serializer<Office> get serializer => _$officeSerializer;

  const Office._(String name) : super(name);

  static BuiltSet<Office> get values => _$values;
  static Office valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class OfficeMixin = Object with _$OfficeMixin;
