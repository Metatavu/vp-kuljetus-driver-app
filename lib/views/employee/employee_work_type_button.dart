import "dart:async";
import "dart:developer";

import "package:collection/collection.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/time_entries/time_entries_providers.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";
import "package:vp_kuljetus_driver_app/utils/time_entries.dart";

class EmployeeWorkTypeButton extends HookConsumerWidget {
  const EmployeeWorkTypeButton({super.key, required this.workType});

  final WorkType workType;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);
    final employeeId = ref.watch(userInfoProvider)?.sub;
    final lastStartedTimeEntryId = store.getString(lastStartedTimeEntryStoreKey);

    final timeEntries = ref
      .watch(timeEntriesProvider(employeeId))
      .asData
      ?.value
      .where((final timeEntry) => timeEntry.workTypeId == workType.id)
      .toList();

    if (timeEntries == null) {
      return const SizedBox.shrink();
    }

    final lastStartedTimeEntry = useMemoized(() => timeEntries.firstWhereOrNull((final timeEntry) => timeEntry.id == lastStartedTimeEntryId), [ timeEntries, lastStartedTimeEntryId]);
    final isRunning = useState(lastStartedTimeEntry?.workTypeId == workType.id);

    final totalWorkTypeDuration = useState(sumTimeEntries(timeEntries));

    useEffect(() {
      isRunning.value = lastStartedTimeEntry?.workTypeId == workType.id;

      return null;
    }, [lastStartedTimeEntry],);

    useEffect(() {
      final timer = Timer.periodic(const Duration(minutes: 1), (final _) {
        totalWorkTypeDuration.value = sumTimeEntries(timeEntries);
      });

      return timer.cancel;
    }, [timeEntries],);

    void onButtonPressed() {
      final lastStartedTimeEntryId = store.getString(lastStartedTimeEntryStoreKey);
      final lastStartedTimeEntry = timeEntries.firstWhereOrNull((final element) => element.id == lastStartedTimeEntryId);

      if (employeeId == null) {
        log("Attempted to start or end a time entry with $employeeId employeeId");
        return;
      }

      if (lastStartedTimeEntry?.workTypeId == workType.id) {
        ref
          .read(timeEntriesProvider(employeeId).notifier)
          .endTimeEntry(employeeId);
      } else {
        ref
          .read(timeEntriesProvider(employeeId).notifier)
          .startNewTimeEntry(employeeId, workType);
      }
    }

    return OutlinedButton(
      // TODO: Do we want to also use the button itself for user interactions?
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        fixedSize: const Size.fromHeight(53),
        backgroundColor: isRunning.value ? const Color(0xFF1B4649) : null,
        padding: const EdgeInsets.all(12),
        side: BorderSide(color: Colors.black.withOpacity(0.2), width: 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              workType.name,
              style: theme.textTheme.titleMedium?.copyWith(
                color: isRunning.value ? Colors.white : null,
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatDurationToPaddedHhMm(totalWorkTypeDuration.value),
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: isRunning.value ? Colors.white : null,
                  ),
                ),
                IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: onButtonPressed,
                  icon: Icon(
                    isRunning.value ? Icons.pause : Icons.play_arrow,
                    color: isRunning.value ? Colors.white : null,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}