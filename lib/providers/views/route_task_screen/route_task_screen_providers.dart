import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/models/views/route_tasks_screen.dart";
import "package:vp_kuljetus_driver_app/providers/routes/routes_providers.dart";
import "package:vp_kuljetus_driver_app/providers/tasks/tasks_providers.dart";

part "route_task_screen_providers.g.dart";

@riverpod
Future<RouteTasksScreenModel> routeTaskScreenData(
  final RouteTaskScreenDataRef ref,
  final String routeId,
) async {
  final data = await Future.wait([
    ref.watch(findRouteProvider(routeId: routeId).future),
    ref.watch(listTasksProvider(routeId: routeId).future),
  ]);

  return RouteTasksScreenModel(
    route: data[0] as Route,
    tasks: data[1] as List<Task>,
  );
}
