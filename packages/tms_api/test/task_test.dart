import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

// tests for Task
void main() {
  final instance = TaskBuilder();
  // TODO add properties to the builder and call build()

  group(Task, () {
    // Freight id
    // String freightId
    test('to test the property `freightId`', () async {
      // TODO
    });

    // Customer site id
    // String customerSiteId
    test('to test the property `customerSiteId`', () async {
      // TODO
    });

    // TaskType type
    test('to test the property `type`', () async {
      // TODO
    });

    // Group number of the task. Gets a value of 0 by default. Can be updated from the management UI. All tasks with the same freightId, customerSiteId, type and group number are shown as grouped together in the driver app.
    // int groupNumber
    test('to test the property `groupNumber`', () async {
      // TODO
    });

    // TaskStatus status
    test('to test the property `status`', () async {
      // TODO
    });

    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Order number of the task. Tasks have order numbers when being part of a route (having a routeId). Unallocated tasks (not having a routeId) do not have order numbers. When creating/updating a route with a routeId, the order number MUST also be in place. Negative order numbers are not allowed. If a number higher than the current amount of tasks in the route is used, it will be silently updated to be one higher than the current maximum. When either routeId or orderNumber is updated to a task, order numbers of other tasks with the same routeId are also updated accordingly. This means all of the tasks in a route should be reloaded when order number of a single task is updated. When updating a task to have an order number that already exists in the same route, the existing task is placed after the updated task. Tasks are also displayed as grouped, when they have the same routeId, customerSiteId, type and groupNumber. Order of tasks inside a group does not matter, so a new task added to the group will be the last task in the group. When order is updated, the grouping should be taken into account in order numbers. All of the grouped tasks should be next to each other. A task after the grouped tasks should have the next order number from the highest one of the group.
    // int orderNumber
    test('to test the property `orderNumber`', () async {
      // TODO
    });

    // Task remarks
    // String remarks
    test('to test the property `remarks`', () async {
      // TODO
    });

    // Route id
    // String routeId
    test('to test the property `routeId`', () async {
      // TODO
    });

    // Time the task was started at. Filled when task status is changed from TODO to IN_PROGRESS.
    // DateTime startedAt
    test('to test the property `startedAt`', () async {
      // TODO
    });

    // Time the task was finished at. Filled when task status is changed from IN_PROGRESS to DONE.
    // DateTime finishedAt
    test('to test the property `finishedAt`', () async {
      // TODO
    });

    // String creatorId
    test('to test the property `creatorId`', () async {
      // TODO
    });

    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // String lastModifierId
    test('to test the property `lastModifierId`', () async {
      // TODO
    });

    // DateTime modifiedAt
    test('to test the property `modifiedAt`', () async {
      // TODO
    });
  });
}
