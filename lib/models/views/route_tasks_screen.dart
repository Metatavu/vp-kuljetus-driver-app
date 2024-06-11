import "package:tms_api/tms_api.dart";

class RouteTasksScreenModel {
  const RouteTasksScreenModel({
    required this.route,
    required this.tasks,
  });

  final Route route;
  final List<Task> tasks;
}
