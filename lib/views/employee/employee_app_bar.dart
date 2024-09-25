import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/work_events/work_events_providers.dart";
import "package:vp_kuljetus_driver_app/utils/work_events.dart";
import "package:vp_kuljetus_driver_app/views/app_bar/vp_app_bar.dart";
import "package:vp_kuljetus_driver_app/views/employee/total_working_time_row.dart";
import "package:vp_kuljetus_driver_app/views/employee/work_event_row.dart";

class EmployeeAppBar extends HookConsumerWidget {
  const EmployeeAppBar({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final employeeId = ref.watch(userInfoProvider)?.sub;
    final workEvents = ref
      .watch(workEventsProvider(employeeId))
      .asData
      ?.value
      .toList();

    if (workEvents == null) {
      return const SizedBox.shrink();
    }

    final totalWorkingTime = sumWorkEvents(workEvents);

    return Material(
      elevation: 5,
      child: VpAppBar(
        backgroundColor: Colors.white,
        height: 77,
        tiles: [
          TotalWorkingTimeRow(initialTotalWorkingTime: totalWorkingTime, expanded: true),
          ...workEvents.map((final workEvent) => WorkEventRow(workEvent: workEvent, workEvents: workEvents)),
        ],
        child: TotalWorkingTimeRow(initialTotalWorkingTime: totalWorkingTime,),
      ),
    );
  }
}