//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'truck_sort_by_field.g.dart';

class TruckSortByField extends EnumClass {
  @BuiltValueEnumConst(wireName: r'NAME')
  static const TruckSortByField NAME = _$NAME;
  @BuiltValueEnumConst(wireName: r'PLATE_NUMBER', fallback: true)
  static const TruckSortByField PLATE_NUMBER = _$PLATE_NUMBER;

  static Serializer<TruckSortByField> get serializer =>
      _$truckSortByFieldSerializer;

  const TruckSortByField._(String name) : super(name);

  static BuiltSet<TruckSortByField> get values => _$values;
  static TruckSortByField valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TruckSortByFieldMixin = Object with _$TruckSortByFieldMixin;
