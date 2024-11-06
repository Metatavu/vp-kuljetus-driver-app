import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for WorkEventsApi
void main() {
  final instance = TmsApi().getWorkEventsApi();

  group(WorkEventsApi, () {
    // Create Employees Work Event.
    //
    // Creates Employees Work Event.  If the work event starts a new shift, a new employee work shift is also created automatically.
    //
    //Future<WorkEvent> createEmployeeWorkEvent(String employeeId, WorkEvent workEvent) async
    test('test createEmployeeWorkEvent', () async {
      // TODO
    });

    // Find an employee's work event.
    //
    // Finds an employee's work event by ID.
    //
    //Future<WorkEvent> findEmployeeWorkEvent(String employeeId, String workEventId) async
    test('test findEmployeeWorkEvent', () async {
      // TODO
    });

    // List Employees Work Events.
    //
    // Lists Employees Work Events. Sort by time, latest first.
    //
    //Future<BuiltList<WorkEvent>> listEmployeeWorkEvents(String employeeId, { String employeeWorkShiftId, DateTime after, DateTime before, int first, int max }) async
    test('test listEmployeeWorkEvents', () async {
      // TODO
    });

    // Update Employee's Work Event.
    //
    // Updates Employee's Work Event.
    //
    //Future<WorkEvent> updateEmployeeWorkEvent(String employeeId, String workEventId, WorkEvent workEvent) async
    test('test updateEmployeeWorkEvent', () async {
      // TODO
    });
  });
}
