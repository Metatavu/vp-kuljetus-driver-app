import "dart:async";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:top_modal_sheet/top_modal_sheet.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/time_entries/time_entries_providers.dart";
import "package:vp_kuljetus_driver_app/providers/work_types/work_types_providers.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";

class EmployeeAppBar extends HookConsumerWidget {
  const EmployeeAppBar({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final defaultPanelHeight = statusBarHeight + 77;

    final employeeId = ref.watch(userInfoProvider)?.sub;

    if (employeeId == null) {
      return Container(
        decoration: BoxDecoration(color: theme.primaryColor),
        height: defaultPanelHeight,
      );
    }

    final timeEntries = ref.watch(
      timeEntriesProvider(employeeId),
    );

    final workTypes = ref.watch(listWorkTypesProvider);

    if ((timeEntries.isLoading && !timeEntries.isReloading) || (workTypes.isLoading && !workTypes.isReloading)) {
      return Container(
        decoration: BoxDecoration(color: theme.primaryColor),
        height: defaultPanelHeight,
        child: const Center(child: CircularProgressIndicator()),
      );
    }

    if (timeEntries.hasError || workTypes.hasError) {
      return Container(
        decoration: BoxDecoration(color: theme.primaryColor),
        height: defaultPanelHeight,
        child: const Center(child: Text("Failed to load time entries")),
      );
    }

    final data = timeEntries.requireValue;
    final workTypesData = workTypes.requireValue;

    Duration calculateTotalWorkingTime() => data.fold(Duration.zero, (final Duration previousValue, final element) {
        final isRunningTimeEntry = element.endTime == null;
        if (isRunningTimeEntry) {
          final runningTimeEntryDuration = DateTime.now().toUtc().difference(element.startTime);
          return previousValue + runningTimeEntryDuration;
        } else {
        final timeEntryDuration = element.endTime!.difference(element.startTime);
        return previousValue + timeEntryDuration;
        }
      });

    final totalWorkingTime = useState(calculateTotalWorkingTime());

    useEffect(() {
      final timer = Timer.periodic(const Duration(minutes: 1), (final _) {
        totalWorkingTime.value = calculateTotalWorkingTime();
      });

      return timer.cancel;
    }, [],);

    Widget renderWorkingTime(final bool expanded) =>
      Padding(
        padding: EdgeInsets.fromLTRB(24, statusBarHeight + 24, 24, 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                "Työaika",
                style: theme.textTheme.titleLarge,
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    formatDurationToPaddedHhMm(totalWorkingTime.value),
                    style: theme.textTheme.titleLarge,
                  ),
                  Icon(expanded ? Icons.keyboard_arrow_up_sharp : Icons.keyboard_arrow_down_sharp),
                ],
              ),
            ),
          ],
        ),
      );

    Future<dynamic> showTopModal(final BuildContext context) =>
      showTopModalSheet(
        backgroundColor: Colors.white,
        context,
        SizedBox(
          width: screenSize.width,
          height: screenSize.height / 2,
          child: ListView(
            reverse: true,
            children: ListTile.divideTiles(
              context: context,
              tiles: data.map((final element) {
                final foundWorkType = workTypesData.firstWhere((final workType) => workType.id == element.workTypeId);

                return ListTile(
                  tileColor: Colors.white,
                  leading: Text(formatDateToPaddedHhMm(element.startTime)),
                  title: Text(foundWorkType.name),

                );
              }).toList(),
            ).toList(),
          ),
        ),
      );

    return Material(
      elevation: 5,
      child: SizedBox(
        width: screenSize.width,
        height: defaultPanelHeight,
        child: GestureDetector(
          onTap: () => showTopModal(context),
          onVerticalDragUpdate: (final details) => showTopModal(context),
          child: renderWorkingTime(false),
        ),
      ),
    );
  }
}