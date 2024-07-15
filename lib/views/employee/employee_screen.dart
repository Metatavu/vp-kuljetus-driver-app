import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/work_types/work_types_providers.dart";
import "package:vp_kuljetus_driver_app/views/employee/employee_work_type_button.dart";

class EmployeeScreen extends HookConsumerWidget {
  const EmployeeScreen({super.key});


  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final workTypes = ref.watch(listWorkTypesProvider);
    final employeeId = ref.watch(userInfoProvider)?.sub;

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

    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 24),
          child: Column(
            children: [
              for (final workType in data)
                Column(
                  children: [
                    EmployeeWorkTypeButton(workType: workType),
                    const SizedBox(height: 8),
                  ],
                ),
            ],
          ),
        ),
      );
  }
}