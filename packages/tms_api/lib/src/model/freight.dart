//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'freight.g.dart';

/// Represents a single freight shipment, aka. waybill.
///
/// Properties:
/// * [senderSiteId] - Shipment sender site
/// * [recipientSiteId] - Shipment receiver site
/// * [pointOfDepartureSiteId] - Point of departure site
/// * [destinationSiteId] - Point of arrival site
/// * [id]
/// * [freightNumber] - Freight number. Unique and auto-incremented.
/// * [creatorId]
/// * [createdAt]
/// * [lastModifierId]
/// * [modifiedAt]
@BuiltValue()
abstract class Freight implements Built<Freight, FreightBuilder> {
  /// Shipment sender site
  @BuiltValueField(wireName: r'senderSiteId')
  String get senderSiteId;

  /// Shipment receiver site
  @BuiltValueField(wireName: r'recipientSiteId')
  String get recipientSiteId;

  /// Point of departure site
  @BuiltValueField(wireName: r'pointOfDepartureSiteId')
  String get pointOfDepartureSiteId;

  /// Point of arrival site
  @BuiltValueField(wireName: r'destinationSiteId')
  String get destinationSiteId;

  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Freight number. Unique and auto-incremented.
  @BuiltValueField(wireName: r'freightNumber')
  int? get freightNumber;

  @BuiltValueField(wireName: r'creatorId')
  String? get creatorId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'lastModifierId')
  String? get lastModifierId;

  @BuiltValueField(wireName: r'modifiedAt')
  DateTime? get modifiedAt;

  Freight._();

  factory Freight([void updates(FreightBuilder b)]) = _$Freight;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FreightBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Freight> get serializer => _$FreightSerializer();
}

class _$FreightSerializer implements PrimitiveSerializer<Freight> {
  @override
  final Iterable<Type> types = const [Freight, _$Freight];

  @override
  final String wireName = r'Freight';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Freight object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'senderSiteId';
    yield serializers.serialize(
      object.senderSiteId,
      specifiedType: const FullType(String),
    );
    yield r'recipientSiteId';
    yield serializers.serialize(
      object.recipientSiteId,
      specifiedType: const FullType(String),
    );
    yield r'pointOfDepartureSiteId';
    yield serializers.serialize(
      object.pointOfDepartureSiteId,
      specifiedType: const FullType(String),
    );
    yield r'destinationSiteId';
    yield serializers.serialize(
      object.destinationSiteId,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.freightNumber != null) {
      yield r'freightNumber';
      yield serializers.serialize(
        object.freightNumber,
        specifiedType: const FullType(int),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Freight object, {
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
    required FreightBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'senderSiteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.senderSiteId = valueDes;
          break;
        case r'recipientSiteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recipientSiteId = valueDes;
          break;
        case r'pointOfDepartureSiteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pointOfDepartureSiteId = valueDes;
          break;
        case r'destinationSiteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destinationSiteId = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'freightNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.freightNumber = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Freight deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FreightBuilder();
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
