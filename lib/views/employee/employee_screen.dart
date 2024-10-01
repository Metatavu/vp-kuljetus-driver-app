import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:go_router/go_router.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/work_events/work_events_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/views/employee/employee_work_event_type_button.dart";

final workEventTypes = [
  // TODO: ADD OFFICE WORK TO SPECS
  WorkEventType.BREAK,
  WorkEventType.OTHER_WORK,
  WorkEventType.GREASE,
  WorkEventType.VEGETABLE,
  WorkEventType.DRY,
  WorkEventType.BREWERY,
  WorkEventType.PALTE,
  WorkEventType.MEAT_CELLAR,
  WorkEventType.MEIRA,
  WorkEventType.FROZEN,
];

class EmployeeScreen extends HookConsumerWidget {
  const EmployeeScreen({super.key});


  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);
    final employeeId = ref.watch(userInfoProvider)?.sub;
    final authNotifier = ref.watch(authNotifierProvider.notifier);

    final loading = useState(false);

    if (employeeId == null) {
        return const Center(child: Text("Employee not found"));
    }

    /// TODO: Define whether finishing work day should send a lougout event or both logout and shift end events.
    Future<void> onFinishWorkDayPressed(final BuildContext context) async {
      log("Finishing work day...");
      await ref.read(workEventsProvider(employeeId).notifier).createWorkEvent(employeeId, WorkEventType.LOGOUT);
      log("Created logout work event. Logging out...");
      await authNotifier.logout();
      log("Logged out");
      if (context.mounted) {
        context.goNamed("login");
        log("Navigated to login screen");
      }
    }

    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (final workEventType in workEventTypes)
                Column(
                  children: [
                    EmployeeWorkEventTypeButton(workEventType: workEventType, loading: loading,),
                    const SizedBox(height: 8),
                  ],
                ),
              ElevatedButton(
                onPressed: loading.value ? null : () => onFinishWorkDayPressed(context),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                  fixedSize: const Size.fromHeight(35),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                ),
                child: Text(
                  l10n.t("finishWorkDay"),
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      );
  }
}