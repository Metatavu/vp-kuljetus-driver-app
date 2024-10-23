//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'client_app_status.g.dart';

class ClientAppStatus extends EnumClass {
  /// Client app status
  @BuiltValueEnumConst(wireName: r'WAITING_FOR_APPROVAL')
  static const ClientAppStatus WAITING_FOR_APPROVAL = _$WAITING_FOR_APPROVAL;

  /// Client app status
  @BuiltValueEnumConst(wireName: r'APPROVED', fallback: true)
  static const ClientAppStatus APPROVED = _$APPROVED;

  static Serializer<ClientAppStatus> get serializer =>
      _$clientAppStatusSerializer;

  const ClientAppStatus._(String name) : super(name);

  static BuiltSet<ClientAppStatus> get values => _$values;
  static ClientAppStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ClientAppStatusMixin = Object with _$ClientAppStatusMixin;
