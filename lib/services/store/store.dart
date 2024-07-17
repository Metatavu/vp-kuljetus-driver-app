import "dart:convert";
import "dart:developer";

import "package:shared_preferences/shared_preferences.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/models/task_group_timestamps/task_group_timestamps.dart";

const lastSelectedTruckIdStoreKey = "last_selected_truck_id";
const ongoingTaskDataStoreKey = "ongoing_task_id";
const taskGroupTimestampsKey = "task_group_timestamps";
const sessionStartedTimestampStoreKey = "session_started_timestamp";
const lastStartedTimeEntryStoreKey = "last_started_time_entry";

late final SharedPreferences store;

Future<void> initStore() async {
  store = await SharedPreferences.getInstance();
}

List<TaskGroupTimestamps> getTaskGroupTimestamps() {
  try {
    final tasksStartedAtJson = store.getString(taskGroupTimestampsKey);
    if (tasksStartedAtJson == null) {
      return [];
    }

    final jsonArray = jsonDecode(tasksStartedAtJson) as List<dynamic>;

    // ignore: unnecessary_lambdas
    return jsonArray.map((final e) => TaskGroupTimestamps.fromJson(e)).toList();
  } catch (e) {
    log("Error while getting task timestamps: $e");

    return [];
  }
}

void setTaskGroupStartedAt(final DateTime startedAt, final String groupedTaskKey, final TaskType taskType) {
  final List<TaskGroupTimestamps> taskTimestamps = getTaskGroupTimestamps();
  taskTimestamps.add(TaskGroupTimestamps(taskGroupKey: groupedTaskKey, startedAt: startedAt, taskType: taskType));

  store.setString(
    taskGroupTimestampsKey,
    jsonEncode(taskTimestamps),
  );
}

void setTaskGroupEndedAt(final DateTime endedAt, final String groupedTaskKey, final TaskType taskType) {
  final List<TaskGroupTimestamps> taskTimestamps = getTaskGroupTimestamps();
  final updatedTaskTimestamps = taskTimestamps.map((final task) {
    if (task.taskGroupKey == groupedTaskKey) {
      return task.copyWith(finishedAt: endedAt);
    }

    return task;
  }).toList();

  store.setString(
    taskGroupTimestampsKey,
    jsonEncode(updatedTaskTimestamps),
  );

}