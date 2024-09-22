import "dart:async";
import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/work_events/work_events_providers.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";
import "package:vp_kuljetus_driver_app/utils/work_events.dart";

class EmployeeWorkEventTypeButton extends HookConsumerWidget {
  const EmployeeWorkEventTypeButton({super.key, required this.workEventType});

  final WorkEventType workEventType;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);
    final employeeId = ref.watch(userInfoProvider)?.sub;

    if (employeeId == null) {
      log("Null employeeId in EmployeeWorkEventTypeButton");
      return const SizedBox.shrink();
    }

    final workEvents = ref
      .watch(workEventsProvider(employeeId))
      .asData
      ?.value
      .where((final timeEntry) => timeEntry.workEventType == workEventType)
      .toList();

    if (workEvents == null) {
      return const SizedBox.shrink();
    }

    final isRunning = ref.watch(workEventsProvider(employeeId).notifier).getLatestWorkEvent(employeeId);

    final totalWorkTypeDuration = useState(sumWorkEvents(workEvents));

    useEffect(() {
      final timer = Timer.periodic(const Duration(minutes: 1), (final _) {
        totalWorkTypeDuration.value = sumWorkEvents(workEvents);
      });

      return timer.cancel;
    }, [workEvents],);

    void onButtonPressed() {

    }

    return OutlinedButton(
      // TODO: Do we want to also use the button itself for user interactions?
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        fixedSize: const Size.fromHeight(53),
        backgroundColor: isRunning ? const Color(0xFF1B4649) : null,
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
              workEventType.name,
              style: theme.textTheme.titleMedium?.copyWith(
                // color: isRunning.value ? Colors.white : null,
                color: Colors.white,
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
                    // color: isRunning.value ? Colors.white : null,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: onButtonPressed,
                  icon: const Icon(
                    // isRunning.value ? Icons.pause : Icons.play_arrow,
                    // color: isRunning.value ? Colors.white : null,
                    Icons.play_arrow,
                    color: Colors.white,
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