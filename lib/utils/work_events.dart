import "package:tms_api/tms_api.dart";

Duration sumWorkEventsByType(
  final WorkEventType workEventType,
  final List<WorkEvent> workEvents,
) =>
    workEvents.fold(
      Duration.zero,
      (
        final Duration previousValue,
        final workEvent,
      ) =>
          workEvent.workEventType == workEventType
              ? previousValue +
                  calculateWorkEventDuration(workEvent, workEvents)
              : previousValue,
    );

Duration sumWorkEvents(
  final List<WorkEvent> workEvents,
) =>
    workEvents.fold(
      Duration.zero,
      (
        final Duration previousValue,
        final workEvent,
      ) =>
          previousValue + calculateWorkEventDuration(workEvent, workEvents),
    );

Duration calculateWorkEventDuration(
  final WorkEvent workEvent,
  final List<WorkEvent> workEvents,
) {
  final index = workEvents.indexOf(workEvent);
  final previousElement =
      index == 0 ? null : workEvents.elementAtOrNull(index - 1);

  return previousElement != null
      ? previousElement.time.difference(workEvent.time)
      : DateTime.now().difference(workEvent.time);
}
