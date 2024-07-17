import "package:tms_api/tms_api.dart";

Duration sumTimeEntries(
  final List<TimeEntry> timeEntries,
) => timeEntries.fold(
  Duration.zero, (
    final Duration previousValue,
    final element,
  ) {
    final isRunningTimeEntry = element.endTime == null;
    if (isRunningTimeEntry) {
      final runningTimeEntryDuration = DateTime.now().toUtc().difference(element.startTime);
      return previousValue + runningTimeEntryDuration;
    } else {
      return previousValue + element.endTime!.difference(element.startTime);
    }
  });