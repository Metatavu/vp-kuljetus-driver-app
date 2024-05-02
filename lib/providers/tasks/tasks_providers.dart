import "dart:developer";

import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart" hide Date;
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/utils/provider_cache.dart";

part "tasks_providers.g.dart";

@riverpod
Future<List<Task>> listTasks(
  final ListTasksRef ref, {
  required final String routeId,
  final String? customerSiteId,
  final String? freightId,
  final TaskType? taskType,
  final bool? assignedToRoute,
  final int? first,
  final int? max,
}) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getTasksApi().listTasks(
          cancelToken: cancelToken,
          routeId: routeId,
          customerSiteId: customerSiteId,
          freightId: freightId,
          type: taskType,
          assignedToRoute: assignedToRoute,
          first: first,
          max: max,
        );

    return response.data!.asList();
  } on DioException catch (error) {
    log("Failed to list tasks: $error");
    log(error.requestOptions.toString());
    return [];
  }
}

@riverpod
Future<Task> findTask(
  final FindTaskRef ref,
  final String taskId,
) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getTasksApi().findTask(
          cancelToken: cancelToken,
          taskId: taskId,
        );

    ref.cacheFor(const Duration(minutes: 5));

    return response.data!;
  } on DioException catch (error) {
    log("Failed to find task: $error");
    log(error.requestOptions.toString());
    rethrow;
  }
}

@riverpod
class UpdateTask extends _$UpdateTask {
  @override
  build() async => "";

  Future<Task> mutate(final Task task) async {
    try {
      final response = await tmsApi.getTasksApi().updateTask(
            taskId: task.id!,
            task: task,
          );

      ref.invalidate(findTaskProvider);
      return response.data!;
    } on DioException catch (error) {
      log("Failed to update task: $error");
      log(error.requestOptions.toString());
      rethrow;
    }
  }
}
