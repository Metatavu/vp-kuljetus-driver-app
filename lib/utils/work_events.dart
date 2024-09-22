import "package:tms_api/tms_api.dart";

Duration sumWorkEvents(
  final List<WorkEvent> timeEntries,
) => timeEntries.fold(
  Duration.zero, (
    final Duration previousValue,
    final element,
  ) {
    // TODO: Refactor this
      final index = timeEntries.indexOf(element);
      final nextElement = timeEntries.elementAt(index + 1);
      return previousValue + nextElement.time.difference(element.time);
  });