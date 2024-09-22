import "dart:developer";

import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/utils/provider_cache.dart";

part "work_events_providers.g.dart";

@riverpod
class WorkEvents extends _$WorkEvents {

  @override
  Future<List<WorkEvent>> build(final String? employeeId) async {
    final cancelToken = CancelToken();
    ref.onDispose(cancelToken.cancel);

    try {
      if (employeeId == null) {
        log("Attempted to list time entries with $employeeId employeeId");
        return [];
      }
      final response = await tmsApi.getWorkEventsApi().listEmployeeWorkEvents(
            employeeId: employeeId,
            // TODO: Implement pagination/infinite scroll etc.
            max: double.maxFinite.toInt(),
            cancelToken: cancelToken,
          );

      ref.cacheFor(const Duration(minutes: 1));
      return response.data?.toList() ?? [];
    } on DioException catch (error) {
      log("Failed to list work events: $error");
      log(error.requestOptions.toString());
      rethrow;
    }
  }

  Future<WorkEvent?> getLatestWorkEvent(final String employeeId) async {
    final cancelToken = CancelToken();
    ref.onDispose(cancelToken.cancel);

    try {
      final response = await tmsApi.getWorkEventsApi().listEmployeeWorkEvents(
        employeeId: employeeId,
        max: 1,
        cancelToken: cancelToken,
      );

      return response.data?.first;
    } on DioException catch (error) {
      log("Failed to get latest work event: $error");
      log(error.requestOptions.toString());
      rethrow;
    }
  }

  Future<void> createWorkEvent(final String employeeId, final WorkEventType workEventType) async {
    try {
      await tmsApi.getWorkEventsApi().createEmployeeWorkEvent(employeeId: employeeId, workEvent: WorkEvent((final builder) =>
        builder
          ..employeeId = employeeId
          ..workEventType = workEventType
          ..time = DateTime.now().toUtc(),
        ),
      );

      ref.invalidateSelf();
    } on DioException catch (error) {
      log("Failed to start new time entry: $error");
      log(error.requestOptions.toString());
      rethrow;
    }
  }
}