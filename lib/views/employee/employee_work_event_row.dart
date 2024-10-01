import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";
import "package:vp_kuljetus_driver_app/utils/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/work_events.dart";

class WorkEventRow extends HookConsumerWidget {
  const WorkEventRow({super.key, required this.workEvent, required this.workEvents});

  final WorkEvent workEvent;
  final List<WorkEvent> workEvents;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Text(formatDateToPaddedHhMm(workEvent.time), style: theme.textTheme.titleMedium),
                const SizedBox(width: 16),
                Text(l10n.t(getWorkEventTypeKey(workEvent.workEventType)), style: theme.textTheme.titleMedium),
              ],
            ),
          ),
          Expanded(
            flex: 0,
            child: Text(formatDurationToPaddedHhMmSs(calculateWorkEventDuration(workEvent, workEvents)), style: theme.textTheme.titleMedium),
          ),
        ],
      ),
    );
  }
}