//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:tms_api/src/model/client_app_status.dart';
import 'package:tms_api/src/model/client_app_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'client_app.g.dart';

/// Represents single client app.  Client apps are created when a new client app publishes itself to the system. Apps will be in WAITING_FOR_APPROVAL status until a manager approves them. Three months after its approval a client app will again change to WAITING_FOR_APPROVAL status. The app will then need to be approved again by a manager.  The device ID of the client app is used together with user PIN code during authentication.
///
/// Properties:
/// * [deviceId] - Device ID
/// * [status]
/// * [metadata]
/// * [id]
/// * [name] - Device name
/// * [lastLoginAt] - Last time the client app has logged in to the system
/// * [createdAt] - Creation time
/// * [lastModifierId] - Last modifier's ID
/// * [modifiedAt] - Last modified time
@BuiltValue()
abstract class ClientApp implements Built<ClientApp, ClientAppBuilder> {
  /// Device ID
  @BuiltValueField(wireName: r'deviceId')
  String get deviceId;

  @BuiltValueField(wireName: r'status')
  ClientAppStatus get status;
  // enum statusEnum {  WAITING_FOR_APPROVAL,  APPROVED,  };

  @BuiltValueField(wireName: r'metadata')
  ClientAppMetadata get metadata;

  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Device name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Last time the client app has logged in to the system
  @BuiltValueField(wireName: r'lastLoginAt')
  DateTime? get lastLoginAt;

  /// Creation time
  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  /// Last modifier's ID
  @BuiltValueField(wireName: r'lastModifierId')
  String? get lastModifierId;

  /// Last modified time
  @BuiltValueField(wireName: r'modifiedAt')
  DateTime? get modifiedAt;

  ClientApp._();

  factory ClientApp([void updates(ClientAppBuilder b)]) = _$ClientApp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClientAppBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClientApp> get serializer => _$ClientAppSerializer();
}

class _$ClientAppSerializer implements PrimitiveSerializer<ClientApp> {
  @override
  final Iterable<Type> types = const [ClientApp, _$ClientApp];

  @override
  final String wireName = r'ClientApp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClientApp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'deviceId';
    yield serializers.serialize(
      object.deviceId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ClientAppStatus),
    );
    yield r'metadata';
    yield serializers.serialize(
      object.metadata,
      specifiedType: const FullType(ClientAppMetadata),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastLoginAt != null) {
      yield r'lastLoginAt';
      yield serializers.serialize(
        object.lastLoginAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastModifierId != null) {
      yield r'lastModifierId';
      yield serializers.serialize(
        object.lastModifierId,
        specifiedType: const FullType(String),
      );
    }
    if (object.modifiedAt != null) {
      yield r'modifiedAt';
      yield serializers.serialize(
        object.modifiedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClientApp object, {
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
    required ClientAppBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deviceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deviceId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ClientAppStatus),
          ) as ClientAppStatus;
          result.status = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ClientAppMetadata),
          ) as ClientAppMetadata;
          result.metadata.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'lastLoginAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastLoginAt = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'lastModifierId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastModifierId = valueDes;
          break;
        case r'modifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.modifiedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClientApp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientAppBuilder();
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
