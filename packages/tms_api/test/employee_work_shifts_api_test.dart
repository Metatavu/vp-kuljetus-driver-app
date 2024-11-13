import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for EmployeeWorkShiftsApi
void main() {
  final instance = TmsApi().getEmployeeWorkShiftsApi();

  group(EmployeeWorkShiftsApi, () {
    // List Employees Work Shifts.
    //
    // Lists Employees work Shifts. Sort by time, latest first.  Employees can only see their own work shifts. Managers can see all employees' work shifts.
    //
    //Future<BuiltList<EmployeeWorkShift>> listEmployeeWorkShifts(String employeeId, { DateTime startedAfter, DateTime startedBefore, int first, int max }) async
    test('test listEmployeeWorkShifts', () async {
      // TODO
    });
  });
}
