//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'truck_drive_state_enum.g.dart';

class TruckDriveStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'REST')
  static const TruckDriveStateEnum REST = _$REST;
  @BuiltValueEnumConst(wireName: r'DRIVER_AVAILABLE')
  static const TruckDriveStateEnum DRIVER_AVAILABLE = _$DRIVER_AVAILABLE;
  @BuiltValueEnumConst(wireName: r'WORK')
  static const TruckDriveStateEnum WORK = _$WORK;
  @BuiltValueEnumConst(wireName: r'DRIVE')
  static const TruckDriveStateEnum DRIVE = _$DRIVE;
  @BuiltValueEnumConst(wireName: r'ERROR')
  static const TruckDriveStateEnum ERROR = _$ERROR;
  @BuiltValueEnumConst(wireName: r'NOT_AVAILABLE', fallback: true)
  static const TruckDriveStateEnum NOT_AVAILABLE = _$NOT_AVAILABLE;

  static Serializer<TruckDriveStateEnum> get serializer =>
      _$truckDriveStateEnumSerializer;

  const TruckDriveStateEnum._(String name) : super(name);

  static BuiltSet<TruckDriveStateEnum> get values => _$values;
  static TruckDriveStateEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TruckDriveStateEnumMixin = Object
    with _$TruckDriveStateEnumMixin;
