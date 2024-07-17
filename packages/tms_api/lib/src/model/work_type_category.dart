//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'work_type_category.g.dart';

class WorkTypeCategory extends EnumClass {
  /// Describes work type's category
  @BuiltValueEnumConst(wireName: r'DRIVER')
  static const WorkTypeCategory DRIVER = _$DRIVER;

  /// Describes work type's category
  @BuiltValueEnumConst(wireName: r'TERMINAL')
  static const WorkTypeCategory TERMINAL = _$TERMINAL;

  /// Describes work type's category
  @BuiltValueEnumConst(wireName: r'OFFICE', fallback: true)
  static const WorkTypeCategory OFFICE = _$OFFICE;

  static Serializer<WorkTypeCategory> get serializer =>
      _$workTypeCategorySerializer;

  const WorkTypeCategory._(String name) : super(name);

  static BuiltSet<WorkTypeCategory> get values => _$values;
  static WorkTypeCategory valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class WorkTypeCategoryMixin = Object with _$WorkTypeCategoryMixin;
