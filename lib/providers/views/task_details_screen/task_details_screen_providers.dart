import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:vp_kuljetus_driver_app/models/views/task_details_screen.dart";
import "package:vp_kuljetus_driver_app/providers/sites/sites_providers.dart";
import "package:vp_kuljetus_driver_app/providers/tasks/tasks_providers.dart";

part "task_details_screen_providers.g.dart";

@riverpod
Future<TaskDetailsScreenData> fetchTaskDetailsScreenData(
  final FetchTaskDetailsScreenDataRef ref,
  final TaskIdList taskIdList,
) async {
  final tasks = await Future.wait(
    taskIdList.list.map(
      (final taskId) => ref.watch(findTaskProvider(taskId).future),
    ),
  );

  final customerSite = await ref.watch(
    findSiteProvider(siteId: tasks.first.customerSiteId).future,
  );

  return TaskDetailsScreenData(tasks: tasks, customerSite: customerSite);
}
