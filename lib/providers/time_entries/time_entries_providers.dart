import "dart:developer";

import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";

part "time_entries_providers.g.dart";

@riverpod
class TimeEntries extends _$TimeEntries {

  @override
  Future<List<TimeEntry>> build(final String employeeId) async {
    final cancelToken = CancelToken();
    ref.onDispose(cancelToken.cancel);

    try {
      final response = await tmsApi.getTimeEntriesApi().listEmployeeTimeEntries(
            employeeId: employeeId,
            cancelToken: cancelToken,
          );

      return response.data?.toList() ?? [];
    } on DioException catch (error) {
      log("Failed to list work types: $error");
      log(error.requestOptions.toString());
      rethrow;
    }
  }

  Future<void> startNewTimeEntry(final String employeeId, final WorkType workType) async {
    try {
      final runningTimeEntryId = store.getString(lastStartedTimeEntryStoreKey);
      if (runningTimeEntryId != null) {
        log("Time entry already running: $runningTimeEntryId");
        return;
      }
      final response = await tmsApi.getTimeEntriesApi().createEmployeeTimeEntry(
        employeeId: employeeId,
        timeEntry: TimeEntry((final builder) =>
          builder
            ..workTypeId = workType.id
            ..employeeId = employeeId
            ..startTime = DateTime.now().toUtc(),
          ),
      );

      await store.setString(lastStartedTimeEntryStoreKey, response.data!.id!);
      ref.invalidateSelf();
    } on DioException catch (error) {
      log("Failed to start new time entry: $error");
      log(error.requestOptions.toString());
      rethrow;
    }
  }

  Future<TimeEntry?> findTimeEntry(final String employeeId, final String timeEntryId) async {
    try {
      final response = await tmsApi.getTimeEntriesApi().findEmployeeTimeEntry(
        employeeId: employeeId,
        timeEntryId: timeEntryId,
      );

      return response.data;
    } on DioException catch (error) {
      log("Failed to find time entry: $error");
      log(error.requestOptions.toString());
      rethrow;
    }
  }

  Future<void> endTimeEntry(final String employeeId) async {
    final runningTimeEntryId = store.getString(lastStartedTimeEntryStoreKey);
    if (runningTimeEntryId == null) {
      log("lastStartedTimeEntryStoreKey was null");
      return;
    }
    final runningTimeEntry = await findTimeEntry(employeeId, runningTimeEntryId);
    if (runningTimeEntry == null) {
      log("Failed to find running time entry");
      await store.remove(lastStartedTimeEntryStoreKey);
      log("lastStartedTimeEntryStoreKey removed");
      return;
    }
    if (runningTimeEntry.endTime != null) {
      log("Time entry already ended");
      await store.remove(lastStartedTimeEntryStoreKey);
      log("lastStartedTimeEntryStoreKey removed");
      return;
    }

    try {
      await tmsApi.getTimeEntriesApi().updateEmployeeTimeEntry(
        employeeId: employeeId,
        timeEntryId: runningTimeEntry.id!,
        timeEntry: runningTimeEntry.rebuild((final builder) => builder.endTime = DateTime.now().toUtc()),
      );

      await store.remove(lastStartedTimeEntryStoreKey);
      log("lastStartedTimeEntryStoreKey removed");
      ref.invalidateSelf();
    } on DioException catch (error) {
      log("Failed to end time entry: $error");
      log(error.requestOptions.toString());
      rethrow;
    }
  }
}