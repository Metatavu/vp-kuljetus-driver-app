import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for TasksApi
void main() {
  final instance = TmsApi().getTasksApi();

  group(TasksApi, () {
    // Find a task.
    //
    // Finds a task by id.
    //
    //Future<Task> findTask(String taskId) async
    test('test findTask', () async {
      // TODO
    });

    // List Tasks.
    //
    // Lists Tasks.
    //
    //Future<BuiltList<Task>> listTasks({ String routeId, bool assignedToRoute, String freightId, String customerSiteId, TaskType type, int first, int max }) async
    test('test listTasks', () async {
      // TODO
    });

    // Updates task
    //
    // Updates single task
    //
    //Future<Task> updateTask(String taskId, Task task) async
    test('test updateTask', () async {
      // TODO
    });
  });
}
