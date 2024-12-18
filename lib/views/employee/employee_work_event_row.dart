import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/app/global_timer.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";
import "package:vp_kuljetus_driver_app/utils/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/work_events.dart";

final metaWorkEvents = [
  WorkEventType.SHIFT_START,
  WorkEventType.SHIFT_END,
  WorkEventType.LOGIN,
  WorkEventType.LOGOUT,
];

class WorkEventRow extends HookConsumerWidget {
  const WorkEventRow({
    super.key,
    required this.workEvent,
    required this.workEvents,
    required this.isLatest,
  });

  final WorkEvent workEvent;
  final List<WorkEvent> workEvents;
  final bool isLatest;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);

    final duration =
        useState(calculateWorkEventDuration(workEvent, workEvents));

    useEffect(
      () {
        duration.value = calculateWorkEventDuration(workEvent, workEvents);
        return null;
      },
      [workEvents],
    );

    useTimerTick((final _) {
      if (isLatest) {
        duration.value = duration.value + const Duration(seconds: 1);
      }
    });

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Text(
                  formatDateToPaddedHhMm(workEvent.time),
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(width: 16),
                Text(
                  l10n.t(getWorkEventTypeKey(workEvent.workEventType)),
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 0,
            child: Text(
              !metaWorkEvents.contains(workEvent.workEventType)
                  ? formatDurationToPaddedHhMmSs(duration.value)
                  : "",
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
