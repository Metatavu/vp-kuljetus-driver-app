import "dart:async";

import "package:collection/collection.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/time_entries/time_entries_providers.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";

class EmployeeWorkTypeButton extends HookConsumerWidget {
  const EmployeeWorkTypeButton({super.key, required this.workType});

  final WorkType workType;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);
    final employeeId = ref.watch(userInfoProvider)?.sub;

    if (employeeId == null) {
      throw Error((final builder) => builder.message = "Attempted to render EmployeeWorkTypeButton without an employeeId");
    }

    final timeEntries = ref.watch(timeEntriesProvider(employeeId)).asData?.value;

    if (timeEntries == null) {
      return const SizedBox.shrink();
    }

    Duration calculateTotalWorkTypeDuration() {
      final workTypeTimeEntries = timeEntries.where((final timeEntry) => timeEntry.workTypeId == workType.id);
      return workTypeTimeEntries.fold(Duration.zero, (final Duration previousValue, final element) {
        final isRunningTimeEntry = element.endTime == null;
        if (isRunningTimeEntry) {
          final runningTimeEntryDuration = DateTime.now().toUtc().difference(element.startTime);
          return previousValue + runningTimeEntryDuration;
        } else {
          return previousValue + element.endTime!.difference(element.startTime);
        }
      });
    }

    final totalWorkTypeDuration = useState(calculateTotalWorkTypeDuration());

    useEffect(() {
      final timer = Timer.periodic(const Duration(minutes: 1), (final _) {
        totalWorkTypeDuration.value = calculateTotalWorkTypeDuration();
      });

      return timer.cancel;
    }, [timeEntries],);

    Color? getBackgroundColor(final WorkType workType) {
      final lastStartedTimeEntryId = store.getString(lastStartedTimeEntryStoreKey);
      final lastStartedTimeEntry = timeEntries.firstWhereOrNull((final element) => element.id == lastStartedTimeEntryId);

      if (lastStartedTimeEntry?.workTypeId == workType.id) {
        return const Color(0xFF1B4649);
      }
      return null;
    }

    Color? getTextColor(final WorkType workType) {
      final lastStartedTimeEntryId = store.getString(lastStartedTimeEntryStoreKey);
      final lastStartedTimeEntry = timeEntries.firstWhereOrNull((final element) => element.id == lastStartedTimeEntryId);

      if (lastStartedTimeEntry?.workTypeId == workType.id) {
        return Colors.white;
      }
      return null;
    }

    IconData getIcon(final WorkType workType) {
      final lastStartedTimeEntryId = store.getString(lastStartedTimeEntryStoreKey);
      final lastStartedTimeEntry = timeEntries.firstWhereOrNull((final element) => element.id == lastStartedTimeEntryId);

      if (lastStartedTimeEntry?.workTypeId == workType.id) {
        return Icons.pause;
      }
      return Icons.play_arrow;
    }

    void onButtonPressed() {
      final lastStartedTimeEntryId = store.getString(lastStartedTimeEntryStoreKey);
      final lastStartedTimeEntry = timeEntries.firstWhereOrNull((final element) => element.id == lastStartedTimeEntryId);

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
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        fixedSize: const Size.fromHeight(53),
        backgroundColor: getBackgroundColor(workType),
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
                color: getTextColor(workType),
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
                    color: getTextColor(workType),
                  ),
                ),
                IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: onButtonPressed,
                  icon: Icon(
                    getIcon(workType),
                    color: getTextColor(workType),
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