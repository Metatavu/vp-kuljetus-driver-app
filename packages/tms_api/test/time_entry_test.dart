import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

// tests for TimeEntry
void main() {
  final instance = TimeEntryBuilder();
  // TODO add properties to the builder and call build()

  group(TimeEntry, () {
    // Employee's id
    // String employeeId
    test('to test the property `employeeId`', () async {
      // TODO
    });

    // Time entry start time
    // DateTime startTime
    test('to test the property `startTime`', () async {
      // TODO
    });

    // Work type id
    // String workTypeId
    test('to test the property `workTypeId`', () async {
      // TODO
    });

    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Time entry end time. End time is not required for time entries that are still running. If an employee has an existing time entry without an end time and the new entry is missing end time, the new time entry should not be created and instead a bad request is to be returned. When a new entry is created with both start and end times, the existing entry is ignored.
    // DateTime endTime
    test('to test the property `endTime`', () async {
      // TODO
    });
  });
}
