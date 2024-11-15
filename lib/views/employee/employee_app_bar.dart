import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/work_events/work_events_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/work_events.dart";
import "package:vp_kuljetus_driver_app/views/app_bar/vp_kuljetus_app_bar.dart";
import "package:vp_kuljetus_driver_app/views/employee/employee_work_event_row.dart";

class EmployeeAppBar extends HookConsumerWidget {
  const EmployeeAppBar({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final l10n = L10n.of(context);
    final employeeId = ref.watch(userInfoProvider)?.sub;
    final workEvents = ref
      .watch(workEventsProvider(employeeId))
      .asData
      ?.value
      .toList();

    if (workEvents == null) {
      return const SizedBox.shrink();
    }

    return Material(
      elevation: 5,
      child: VpKuljetusAppBar(
        backgroundColor: Colors.white,
        height: 77,
        title: l10n.t("workingTime"),
        initialDuration: sumWorkEvents(workEvents),
        childBuilder: (final _, final int index) => WorkEventRow(workEvent: workEvents[index], workEvents: workEvents, isLatest: index == 0),
        childCount: workEvents.length,
      ),
    );
  }
}