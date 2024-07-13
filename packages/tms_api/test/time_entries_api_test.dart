import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for TimeEntriesApi
void main() {
  final instance = TmsApi().getTimeEntriesApi();

  group(TimeEntriesApi, () {
    // Create Employees Time Entry.
    //
    // Creates Employees Time Entry.  Attempt to create new time entry should fail if:   1) New time entry does not have endTime but there is already one time entry without endTime for the same employee. This is because time entries without endTime are considered to be running timers and only one is allowed at a time.   2) If time new entry intersects with an existing time entry.
    //
    //Future<TimeEntry> createEmployeeTimeEntry(String employeeId, TimeEntry timeEntry) async
    test('test createEmployeeTimeEntry', () async {
      // TODO
    });

    // Find an employee's time entry.
    //
    // Finds an employee's time entry by id.
    //
    //Future<TimeEntry> findEmployeeTimeEntry(String employeeId, String timeEntryId) async
    test('test findEmployeeTimeEntry', () async {
      // TODO
    });

    // List Employees Time Entries.
    //
    // Lists Employees Time Entries. Sort by start time, latest first.
    //
    //Future<BuiltList<TimeEntry>> listEmployeeTimeEntries(String employeeId, { DateTime start, DateTime end, int first, int max }) async
    test('test listEmployeeTimeEntries', () async {
      // TODO
    });
  });
}
