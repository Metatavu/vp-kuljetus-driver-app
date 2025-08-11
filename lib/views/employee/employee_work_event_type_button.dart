import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:loader_overlay/loader_overlay.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/app/global_timer.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/work_events/work_events_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";
import "package:vp_kuljetus_driver_app/utils/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/work_events.dart";

class EmployeeWorkEventTypeButton extends HookConsumerWidget {
  const EmployeeWorkEventTypeButton({
    super.key,
    required this.workEventType,
    required this.loading,
  });

  final WorkEventType workEventType;
  final ValueNotifier<bool> loading;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);
    final employeeId = ref.watch(userInfoProvider)?.sub;
    final workEventsProviderNotifier =
        ref.watch(workEventsProvider(employeeId).notifier);
    final l10n = L10n.of(context);

    if (employeeId == null) {
      log("Null employeeId in EmployeeWorkEventTypeButton");
      return const SizedBox.shrink();
    }

    final workEvents =
        ref.watch(workEventsProvider(employeeId)).asData?.value.toList();

    if (workEvents == null) {
      return const SizedBox.shrink();
    }

    final latestWorkEvent =
        workEventsProviderNotifier.getLatestWorkEvent(employeeId);
    final isRunning = useState(latestWorkEvent?.workEventType == workEventType);
    final isPaused =
        useState(latestWorkEvent?.workEventType == WorkEventType.BREAK);

    useEffect(
      () {
        isRunning.value = latestWorkEvent?.workEventType == workEventType;
        isPaused.value = latestWorkEvent?.workEventType == WorkEventType.BREAK;
        return null;
      },
      [latestWorkEvent],
    );

    final totalWorkTypeDuration =
        useState(sumWorkEventsByType(workEventType, workEvents));

    useTimerTick(
      (final _) {
        if (isRunning.value) {
          totalWorkTypeDuration.value =
              totalWorkTypeDuration.value + const Duration(seconds: 1);
        }
      },
    );

    useEffect(
      () {
        loading.value
            ? context.loaderOverlay.show()
            : context.loaderOverlay.hide();
        return null;
      },
      [loading.value],
    );

    Future<void> onButtonPressed() async {
      if (isRunning.value) {
        log("Work event $workEventType already running.");
        return;
      }

      loading.value = true;
      try {
        await workEventsProviderNotifier.createWorkEvent(
          employeeId,
          workEventType,
          DateTime.now(),
        );
      } catch (error) {
        log("Failed to create work event: $error");
      }
      loading.value = false;
    }

    Future<void> onPausePressed() async {
      if (isPaused.value) {
        log("Work event $workEventType already running.");
        return;
      }

      loading.value = true;
      try {
        await workEventsProviderNotifier.createWorkEvent(
          employeeId,
          WorkEventType.BREAK,
          DateTime.now(),
        );
      } catch (error) {
        log("Failed to create work event: $error");
      }
      loading.value = false;
    }

    return OutlinedButton(
      onPressed: loading.value ? null : onButtonPressed,
      style: OutlinedButton.styleFrom(
        fixedSize: const Size.fromHeight(53),
        backgroundColor: isRunning.value ? const Color(0xFF1B4649) : null,
        padding: const EdgeInsets.all(12),
        side: BorderSide(
          color: Colors.black.withAlpha((255 * 0.2).toInt()),
          width: 1,
        ),
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
              l10n.t(getWorkEventTypeKey(workEventType)),
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
                  formatDurationToPaddedHhMmSs(totalWorkTypeDuration.value),
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: isRunning.value ? Colors.white : null,
                  ),
                ),
                IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: loading.value
                      ? null
                      : workEventType == WorkEventType.BREAK
                          ? onPausePressed
                          : onButtonPressed,
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
