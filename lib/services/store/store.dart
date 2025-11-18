import "dart:convert";
import "dart:developer";

import "package:collection/collection.dart";
import "package:shared_preferences/shared_preferences.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/models/task_group_timestamps/task_group_timestamps.dart";

const lastSelectedTruckIdStoreKey = "last_selected_truck_id";
const ongoingTaskDataStoreKey = "ongoing_task_id";
const taskGroupTimestampsKey = "task_group_timestamps";
const sessionStartedTimestampStoreKey = "session_started_timestamp";
const lastStartedSessionTypeKey = "last_started_session_type";
const clientAppCreatedKey = "client_app_created";

late final SharedPreferences store;

enum SessionType { driver, terminal }

Future<void> initStore() async {
  store = await SharedPreferences.getInstance();
}

List<TaskGroupTimestamps> deserializeTaskGroupTimestamps(
  final String? rawValue,
) {
  try {
    final validatedValue = rawValue?.isNotEmpty == true ? rawValue! : "[]";
    final listJson = jsonDecode(validatedValue) as List<dynamic>;
    return listJson
        .map((final taskGroup) => TaskGroupTimestamps.fromJson(taskGroup))
        .toList();
  } catch (error) {
    log("Error while deserializing task timestamps: $error");
    return [];
  }
}

List<TaskGroupTimestamps> getTaskGroupTimestamps() {
  final rawValue = store.getString(taskGroupTimestampsKey);
  return deserializeTaskGroupTimestamps(rawValue);
}

Stream<List<TaskGroupTimestamps>> watchTaskGroupTimestamps() async* {
  String? prevRawValue = store.getString(taskGroupTimestampsKey);
  yield deserializeTaskGroupTimestamps(prevRawValue);

  while (true) {
    await Future.delayed(const Duration(seconds: 1));

    final currentRawValue = store.getString(taskGroupTimestampsKey);

    if (currentRawValue != prevRawValue) {
      prevRawValue = currentRawValue;
      yield deserializeTaskGroupTimestamps(currentRawValue);
    }
  }
}

void setTaskGroupStartedAt(
  final DateTime startedAt,
  final String groupedTaskKey,
  final TaskType taskType,
) {
  final List<TaskGroupTimestamps> taskTimestamps = getTaskGroupTimestamps();
  taskTimestamps.add(
    TaskGroupTimestamps(
      taskGroupKey: groupedTaskKey,
      startedAt: startedAt,
      taskType: taskType,
    ),
  );

  store.setString(taskGroupTimestampsKey, jsonEncode(taskTimestamps));
}

void setTaskGroupEndedAt(
  final DateTime endedAt,
  final String groupedTaskKey,
  final TaskType taskType,
) {
  final List<TaskGroupTimestamps> taskTimestamps = getTaskGroupTimestamps();
  final updatedTaskTimestamps = taskTimestamps.map((final task) {
    if (task.taskGroupKey == groupedTaskKey) {
      return task.copyWith(finishedAt: endedAt);
    }

    return task;
  }).toList();

  store.setString(taskGroupTimestampsKey, jsonEncode(updatedTaskTimestamps));
}

SessionType? getLastStartedSessionType() {
  final sessionType = store.getString(lastStartedSessionTypeKey);

  return SessionType.values.firstWhereOrNull(
    (final type) => type.name == sessionType,
  );
}

Future<void> setLastStartedSessionType(final SessionType sessionType) async {
  await store.setString(lastStartedSessionTypeKey, sessionType.name);
}

bool getClientAppCreated() => store.getBool(clientAppCreatedKey) ?? false;

Future<void> setClientAppCreated(final bool created) async {
  await store.setBool(clientAppCreatedKey, created);
}
