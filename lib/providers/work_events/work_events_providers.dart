import "dart:developer";

import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";

part "work_events_providers.g.dart";

@Riverpod(keepAlive: true)
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

      final workShifts = (await tmsApi
        .getEmployeeWorkShiftsApi()
        .listEmployeeWorkShifts(
          employeeId: employeeId,
          first: 0,
          max: 1,

          cancelToken: cancelToken,
        )).data;


      if (workShifts == null || workShifts.isEmpty) {
        return [];
      }

      final latestWorkShift = workShifts.first;

      final response = await tmsApi
        .getWorkEventsApi()
        .listEmployeeWorkEvents(
          employeeId: employeeId,
          employeeWorkShiftId: latestWorkShift.id,
          max: 1000,
          cancelToken: cancelToken,
        );

      return response.data?.toList() ?? [];
    } on DioException catch (error) {
      log("Failed to list work events: $error");
      log(error.requestOptions.toString());
      rethrow;
    }
  }

  WorkEvent? getLatestWorkEvent(final String employeeId) => state.asData?.value.firstOrNull;

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