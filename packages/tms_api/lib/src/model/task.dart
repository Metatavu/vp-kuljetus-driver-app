//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:tms_api/src/model/task_status.dart';
import 'package:tms_api/src/model/task_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task.g.dart';

/// Represent single task for freight
///
/// Properties:
/// * [freightId] - Freight id
/// * [customerSiteId] - Customer site id
/// * [type]
/// * [groupNumber] - Group number of the task. Gets a value of 0 by default. Can be updated from the management UI. All tasks with the same freightId, customerSiteId, type and group number are shown as grouped together in the driver app.
/// * [status]
/// * [id]
/// * [orderNumber] - Order number of the task. Tasks have order numbers when being part of a route (having a routeId). Unallocated tasks (not having a routeId) do not have order numbers. When creating/updating a route with a routeId, the order number MUST also be in place. Negative order numbers are not allowed. If a number higher than the current amount of tasks in the route is used, it will be silently updated to be one higher than the current maximum. When either routeId or orderNumber is updated to a task, order numbers of other tasks with the same routeId are also updated accordingly. This means all of the tasks in a route should be reloaded when order number of a single task is updated. When updating a task to have an order number that already exists in the same route, the existing task is placed after the updated task. Tasks are also displayed as grouped, when they have the same routeId, customerSiteId, type and groupNumber. Order of tasks inside a group does not matter, so a new task added to the group will be the last task in the group. When order is updated, the grouping should be taken into account in order numbers. All of the grouped tasks should be next to each other. A task after the grouped tasks should have the next order number from the highest one of the group.
/// * [remarks] - Task remarks
/// * [routeId] - Route id
/// * [startedAt] - Time the task was started at. Filled when task status is changed from TODO to IN_PROGRESS.
/// * [finishedAt] - Time the task was finished at. Filled when task status is changed from IN_PROGRESS to DONE.
/// * [creatorId]
/// * [createdAt]
/// * [lastModifierId]
/// * [modifiedAt]
@BuiltValue()
abstract class Task implements Built<Task, TaskBuilder> {
  /// Freight id
  @BuiltValueField(wireName: r'freightId')
  String get freightId;

  /// Customer site id
  @BuiltValueField(wireName: r'customerSiteId')
  String get customerSiteId;

  @BuiltValueField(wireName: r'type')
  TaskType get type;
  // enum typeEnum {  UNLOAD,  LOAD,  };

  /// Group number of the task. Gets a value of 0 by default. Can be updated from the management UI. All tasks with the same freightId, customerSiteId, type and group number are shown as grouped together in the driver app.
  @BuiltValueField(wireName: r'groupNumber')
  int get groupNumber;

  @BuiltValueField(wireName: r'status')
  TaskStatus get status;
  // enum statusEnum {  TODO,  IN_PROGRESS,  DONE,  };

  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Order number of the task. Tasks have order numbers when being part of a route (having a routeId). Unallocated tasks (not having a routeId) do not have order numbers. When creating/updating a route with a routeId, the order number MUST also be in place. Negative order numbers are not allowed. If a number higher than the current amount of tasks in the route is used, it will be silently updated to be one higher than the current maximum. When either routeId or orderNumber is updated to a task, order numbers of other tasks with the same routeId are also updated accordingly. This means all of the tasks in a route should be reloaded when order number of a single task is updated. When updating a task to have an order number that already exists in the same route, the existing task is placed after the updated task. Tasks are also displayed as grouped, when they have the same routeId, customerSiteId, type and groupNumber. Order of tasks inside a group does not matter, so a new task added to the group will be the last task in the group. When order is updated, the grouping should be taken into account in order numbers. All of the grouped tasks should be next to each other. A task after the grouped tasks should have the next order number from the highest one of the group.
  @BuiltValueField(wireName: r'orderNumber')
  int? get orderNumber;

  /// Task remarks
  @BuiltValueField(wireName: r'remarks')
  String? get remarks;

  /// Route id
  @BuiltValueField(wireName: r'routeId')
  String? get routeId;

  /// Time the task was started at. Filled when task status is changed from TODO to IN_PROGRESS.
  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  /// Time the task was finished at. Filled when task status is changed from IN_PROGRESS to DONE.
  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'creatorId')
  String? get creatorId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'lastModifierId')
  String? get lastModifierId;

  @BuiltValueField(wireName: r'modifiedAt')
  DateTime? get modifiedAt;

  Task._();

  factory Task([void updates(TaskBuilder b)]) = _$Task;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Task> get serializer => _$TaskSerializer();
}

class _$TaskSerializer implements PrimitiveSerializer<Task> {
  @override
  final Iterable<Type> types = const [Task, _$Task];

  @override
  final String wireName = r'Task';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Task object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'freightId';
    yield serializers.serialize(
      object.freightId,
      specifiedType: const FullType(String),
    );
    yield r'customerSiteId';
    yield serializers.serialize(
      object.customerSiteId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(TaskType),
    );
    yield r'groupNumber';
    yield serializers.serialize(
      object.groupNumber,
      specifiedType: const FullType(int),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(TaskStatus),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderNumber != null) {
      yield r'orderNumber';
      yield serializers.serialize(
        object.orderNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.remarks != null) {
      yield r'remarks';
      yield serializers.serialize(
        object.remarks,
        specifiedType: const FullType(String),
      );
    }
    if (object.routeId != null) {
      yield r'routeId';
      yield serializers.serialize(
        object.routeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType(DateTime),
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
    Task object, {
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
    required TaskBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'freightId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.freightId = valueDes;
          break;
        case r'customerSiteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerSiteId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TaskType),
          ) as TaskType;
          result.type = valueDes;
          break;
        case r'groupNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.groupNumber = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TaskStatus),
          ) as TaskStatus;
          result.status = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'orderNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.orderNumber = valueDes;
          break;
        case r'remarks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.remarks = valueDes;
          break;
        case r'routeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.routeId = valueDes;
          break;
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startedAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.finishedAt = valueDes;
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
  Task deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskBuilder();
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
