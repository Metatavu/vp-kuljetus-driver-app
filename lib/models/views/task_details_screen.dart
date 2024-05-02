import "package:flutter/foundation.dart";
import "package:tms_api/tms_api.dart";

class TaskDetailsScreenData {
  const TaskDetailsScreenData({
    required this.tasks,
    required this.customerSite,
  });

  final List<Task> tasks;
  final Site customerSite;
}

class TaskIdList {
  const TaskIdList({required this.list});

  final List<String> list;

  @override
  bool operator ==(final Object other) {
    if (identical(this, other)) return true;

    return other is TaskIdList && listEquals(other.list, list);
  }

  @override
  int get hashCode => list.map((final id) => id.hashCode).join("").hashCode;
}
