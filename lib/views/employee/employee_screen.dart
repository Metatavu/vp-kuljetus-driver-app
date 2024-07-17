import "dart:developer";

import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/time_entries/time_entries_providers.dart";
import "package:vp_kuljetus_driver_app/providers/work_types/work_types_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/views/employee/employee_work_type_button.dart";

class EmployeeScreen extends HookConsumerWidget {
  const EmployeeScreen({super.key});


  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);
    final workTypes = ref.watch(listWorkTypesProvider);
    final employeeId = ref.watch(userInfoProvider)?.sub;
    final authNotifier = ref.watch(authNotifierProvider.notifier);

    if (employeeId == null) {
        return const Center(child: Text("Employee not found"));
    }

    if (workTypes.isLoading && !workTypes.isReloading) {
        return const Center(child: CircularProgressIndicator());
    }

    if (workTypes.hasError) {
      return const Center(child: Text("Failed to load work types"));
    }

    final data = workTypes.requireValue;

    if (data.isEmpty) {
        return const Center(child: Text("No work types available"));
    }

    Future<void> onFinishWorkDayPressed(final BuildContext context) async {
      log("Finishing work day...");
      await ref.read(timeEntriesProvider(employeeId).notifier).endTimeEntry(employeeId);
      log("Ended time entry. Logging out...");
      await authNotifier.logout();
      log("Logged out");
      if (context.mounted) {
        context.goNamed("login");
        log("Navigated to login screen");
      }
    }

    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (final workType in data)
                Column(
                  children: [
                    EmployeeWorkTypeButton(workType: workType),
                    const SizedBox(height: 8),
                  ],
                ),
              ElevatedButton(
                onPressed: () => onFinishWorkDayPressed(context),
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