//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site.g.dart';

/// Represents a single customer site
///
/// Properties:
/// * [name] - Site name
/// * [location] - Site location as well-known text Point
/// * [address] - Address of the site
/// * [postalCode] - Postal code of the site
/// * [locality] - Locality of the site
/// * [id]
/// * [additionalInfo] - additional information about the site, e.g. delivery instructions. This is shown in the task for the driver.
/// * [creatorId]
/// * [createdAt]
/// * [lastModifierId]
/// * [modifiedAt]
/// * [archivedAt] - Setting the archivedAt time marks the site as archived. Sites marked as archived will not appear in list requests unless archived filter is set to true. Archived site cannot be updated, unless archivedAt is first set to null.
@BuiltValue()
abstract class Site implements Built<Site, SiteBuilder> {
  /// Site name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Site location as well-known text Point
  @BuiltValueField(wireName: r'location')
  String get location;

  /// Address of the site
  @BuiltValueField(wireName: r'address')
  String get address;

  /// Postal code of the site
  @BuiltValueField(wireName: r'postalCode')
  String get postalCode;

  /// Locality of the site
  @BuiltValueField(wireName: r'locality')
  String get locality;

  @BuiltValueField(wireName: r'id')
  String? get id;

  /// additional information about the site, e.g. delivery instructions. This is shown in the task for the driver.
  @BuiltValueField(wireName: r'additionalInfo')
  String? get additionalInfo;

  @BuiltValueField(wireName: r'creatorId')
  String? get creatorId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'lastModifierId')
  String? get lastModifierId;

  @BuiltValueField(wireName: r'modifiedAt')
  DateTime? get modifiedAt;

  /// Setting the archivedAt time marks the site as archived. Sites marked as archived will not appear in list requests unless archived filter is set to true. Archived site cannot be updated, unless archivedAt is first set to null.
  @BuiltValueField(wireName: r'archivedAt')
  DateTime? get archivedAt;

  Site._();

  factory Site([void updates(SiteBuilder b)]) = _$Site;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SiteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Site> get serializer => _$SiteSerializer();
}

class _$SiteSerializer implements PrimitiveSerializer<Site> {
  @override
  final Iterable<Type> types = const [Site, _$Site];

  @override
  final String wireName = r'Site';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Site object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'location';
    yield serializers.serialize(
      object.location,
      specifiedType: const FullType(String),
    );
    yield r'address';
    yield serializers.serialize(
      object.address,
      specifiedType: const FullType(String),
    );
    yield r'postalCode';
    yield serializers.serialize(
      object.postalCode,
      specifiedType: const FullType(String),
    );
    yield r'locality';
    yield serializers.serialize(
      object.locality,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.additionalInfo != null) {
      yield r'additionalInfo';
      yield serializers.serialize(
        object.additionalInfo,
        specifiedType: const FullType(String),
      );
    }
    if (object.creatorId != null) {
      yield r'creatorId';
      yield serializers.serialize(
        object.creatorId,
        specifiedType: const FullType(String),
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
    if (object.archivedAt != null) {
      yield r'archivedAt';
      yield serializers.serialize(
        object.archivedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Site object, {
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
    required SiteBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.location = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.address = valueDes;
          break;
        case r'postalCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.postalCode = valueDes;
          break;
        case r'locality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locality = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'additionalInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.additionalInfo = valueDes;
          break;
        case r'creatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.creatorId = valueDes;
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
        case r'archivedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.archivedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Site deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SiteBuilder();
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
