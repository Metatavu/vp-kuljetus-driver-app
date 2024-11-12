import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

// tests for EmployeeWorkShift
void main() {
  final instance = EmployeeWorkShiftBuilder();
  // TODO add properties to the builder and call build()

  group(EmployeeWorkShift, () {
    // Work shift date.
    // Date date
    test('to test the property `date`', () async {
      // TODO
    });

    // Employee's ID
    // String employeeId
    test('to test the property `employeeId`', () async {
      // TODO
    });

    // Whether the work shift has been approved by a supervisor. Work shift hours cannot be updated if the work shift is approved.
    // bool approved
    test('to test the property `approved`', () async {
      // TODO
    });

    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Work shift start time
    // Date startedAt
    test('to test the property `startedAt`', () async {
      // TODO
    });

    // Work shift end time
    // Date endedAt
    test('to test the property `endedAt`', () async {
      // TODO
    });

    // List of truck IDs used during the work shift. Derived from work events in the shift.
    // BuiltList<String> truckIds
    test('to test the property `truckIds`', () async {
      // TODO
    });

    // Day off work allowance is used to mark the day when the work shift started as a day off for the employee. This means that all the work hours done during that day will be also added to the HOLIDAY_ALLOWANCE work type during work shift hours calculation.
    // bool dayOffWorkAllowance
    test('to test the property `dayOffWorkAllowance`', () async {
      // TODO
    });

    // AbsenceType absence
    test('to test the property `absence`', () async {
      // TODO
    });

    // PerDiemAllowanceType perDiemAllowance
    test('to test the property `perDiemAllowance`', () async {
      // TODO
    });

    // Additional notes for the work shift. For example, if the employee was sick during the shift.
    // String notes
    test('to test the property `notes`', () async {
      // TODO
    });
  });
}
