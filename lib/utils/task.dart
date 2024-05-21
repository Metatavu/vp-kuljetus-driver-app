import "package:tms_api/tms_api.dart";

String getTaskGroupKey(final Task task) =>
    "${task.routeId}:${task.customerSiteId}:${task.type}:${task.groupNumber}";

(String, String, TaskType, int) parseTaskGroupKey(final String taskGroupKey) {
  final parts = taskGroupKey.split(":");
  return (parts[0], parts[1], TaskType.valueOf(parts[2]), int.parse(parts[3]));
}
