//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'client_app_metadata.g.dart';

/// Client app metadata
///
/// Properties:
/// * [deviceOS] - Device OS
/// * [deviceOSVersion] - Device OS version
/// * [appVersion] - App version
@BuiltValue()
abstract class ClientAppMetadata
    implements Built<ClientAppMetadata, ClientAppMetadataBuilder> {
  /// Device OS
  @BuiltValueField(wireName: r'deviceOS')
  ClientAppMetadataDeviceOSEnum? get deviceOS;
  // enum deviceOSEnum {  ANDROID,  };

  /// Device OS version
  @BuiltValueField(wireName: r'deviceOSVersion')
  String? get deviceOSVersion;

  /// App version
  @BuiltValueField(wireName: r'appVersion')
  String? get appVersion;

  ClientAppMetadata._();

  factory ClientAppMetadata([void updates(ClientAppMetadataBuilder b)]) =
      _$ClientAppMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClientAppMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClientAppMetadata> get serializer =>
      _$ClientAppMetadataSerializer();
}

class _$ClientAppMetadataSerializer
    implements PrimitiveSerializer<ClientAppMetadata> {
  @override
  final Iterable<Type> types = const [ClientAppMetadata, _$ClientAppMetadata];

  @override
  final String wireName = r'ClientAppMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClientAppMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.deviceOS != null) {
      yield r'deviceOS';
      yield serializers.serialize(
        object.deviceOS,
        specifiedType: const FullType(ClientAppMetadataDeviceOSEnum),
      );
    }
    if (object.deviceOSVersion != null) {
      yield r'deviceOSVersion';
      yield serializers.serialize(
        object.deviceOSVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.appVersion != null) {
      yield r'appVersion';
      yield serializers.serialize(
        object.appVersion,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClientAppMetadata object, {
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
    required ClientAppMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deviceOS':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ClientAppMetadataDeviceOSEnum),
          ) as ClientAppMetadataDeviceOSEnum;
          result.deviceOS = valueDes;
          break;
        case r'deviceOSVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deviceOSVersion = valueDes;
          break;
        case r'appVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.appVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClientAppMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientAppMetadataBuilder();
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

class ClientAppMetadataDeviceOSEnum extends EnumClass {
  /// Device OS
  @BuiltValueEnumConst(wireName: r'ANDROID', fallback: true)
  static const ClientAppMetadataDeviceOSEnum ANDROID =
      _$clientAppMetadataDeviceOSEnum_ANDROID;

  static Serializer<ClientAppMetadataDeviceOSEnum> get serializer =>
      _$clientAppMetadataDeviceOSEnumSerializer;

  const ClientAppMetadataDeviceOSEnum._(String name) : super(name);

  static BuiltSet<ClientAppMetadataDeviceOSEnum> get values =>
      _$clientAppMetadataDeviceOSEnumValues;
  static ClientAppMetadataDeviceOSEnum valueOf(String name) =>
      _$clientAppMetadataDeviceOSEnumValueOf(name);
}
