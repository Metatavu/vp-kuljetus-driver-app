import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:go_router/go_router.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/app_authentication/app_authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/work_events/work_events_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/views/employee/employee_work_event_type_button.dart";

final workEventTypes = [
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
  WorkEventType.OFFICE,
];

class EmployeeScreen extends HookConsumerWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);
    final appAuth = ref.watch(appAuthNotifierProvider);
    final employeeId = appAuth.value?.accessToken.sub;
    final employeeName = appAuth.value?.accessToken.name;
    final appAuthNotifier = ref.watch(appAuthNotifierProvider.notifier);

    final loading = useState(false);

    if (employeeId == null) {
      return const Center(child: Text("Employee not found"));
    }

    Future<void> onFinishWorkDayPressed(final BuildContext context) async {
      log("Finishing work day...");
      loading.value = true;
      try {
        await ref
            .read(workEventsProvider(employeeId).notifier)
            .createWorkEvent(
              employeeId,
              WorkEventType.SHIFT_END,
              DateTime.now(),
            );
        log("Created logout work event. Logging out...");
        await appAuthNotifier.logout();
        log("Logged out");
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.t("workShiftEndedSuccessfully")),
              margin: const EdgeInsets.all(10),
              behavior: SnackBarBehavior.floating,
            ),
          );
          context.goNamed("login");
          log("Navigated to login screen");
        }
      } catch (error) {
        log("Failed to finish work day: $error");
      }
      loading.value = false;
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              l10n.t("greeting", variables: {"name": employeeName ?? ""}),
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            for (final workEventType in workEventTypes)
              Column(
                children: [
                  EmployeeWorkEventTypeButton(
                    workEventType: workEventType,
                    loading: loading,
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ElevatedButton(
              onPressed: loading.value
                  ? null
                  : () => onFinishWorkDayPressed(context),
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
