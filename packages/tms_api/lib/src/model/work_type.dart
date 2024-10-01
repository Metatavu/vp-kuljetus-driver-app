//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:tms_api/src/model/work_type_category.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'work_type.g.dart';

/// Describes different work types that employees can have
///
/// Properties:
/// * [name] - Work type name
/// * [category]
/// * [id]
@BuiltValue()
abstract class WorkType implements Built<WorkType, WorkTypeBuilder> {
  /// Work type name
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'category')
  WorkTypeCategory get category;
  // enum categoryEnum {  DRIVER,  TERMINAL,  OFFICE,  };

  @BuiltValueField(wireName: r'id')
  String? get id;

  WorkType._();

  factory WorkType([void updates(WorkTypeBuilder b)]) = _$WorkType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkType> get serializer => _$WorkTypeSerializer();
}

class _$WorkTypeSerializer implements PrimitiveSerializer<WorkType> {
  @override
  final Iterable<Type> types = const [WorkType, _$WorkType];

  @override
  final String wireName = r'WorkType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(WorkTypeCategory),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkType object, {
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
    required WorkTypeBuilder result,
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
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WorkTypeCategory),
          ) as WorkTypeCategory;
          result.category = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkTypeBuilder();
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
