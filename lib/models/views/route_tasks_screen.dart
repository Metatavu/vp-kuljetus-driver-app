import "package:tms_api/tms_api.dart";

class RouteTasksScreenData {
  const RouteTasksScreenData({
    required this.route,
    required this.tasks,
  });

  final Route route;
  final List<Task> tasks;
}
