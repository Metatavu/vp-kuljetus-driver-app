import "dart:async";

import "package:collection/collection.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:top_modal_sheet/top_modal_sheet.dart";
import "package:vp_kuljetus_driver_app/models/truck_drive_state_with_task_type.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/drive_states/drive_states_provider.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";
import "package:vp_kuljetus_driver_app/views/drive_log/drive_log_row.dart";

class DriverLogAppBar extends HookConsumerWidget {
  const DriverLogAppBar({super.key});

  Widget buildPlaceholderContainer(
    final double panelHeight,
    final BuildContext context,
    final Widget? child,
  ) => Container(
    decoration: BoxDecoration(color: Theme.of(context).primaryColor),
    height: panelHeight,
    child: child,
  );

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final defaultPanelHeight = statusBarHeight + 54;

    final selectedTruckId = store.getString(lastSelectedTruckIdStoreKey);
    final sessionStartedAt = store.getInt(sessionStartedTimestampStoreKey);
    final driverId = ref.watch(userInfoProvider)?.sub;

    final tasksStartedAts = useState(getTaskGroupTimestamps());

    useEffect(() {
      final timer = Timer.periodic(const Duration(seconds: 1), (final _) {
        tasksStartedAts.value = getTaskGroupTimestamps();
      });

      return timer.cancel;
    }, []);

    if (driverId == null ||
        selectedTruckId == null ||
        sessionStartedAt == null) {
      return buildPlaceholderContainer(defaultPanelHeight, context, null);
    }

    final driveStates = ref.watch(
      listDriveStatesProvider(
        truckId: selectedTruckId,
        driverId: driverId,
        max: 1,
      ),
    );

    if (driveStates.isLoading && !driveStates.isReloading) {
      return buildPlaceholderContainer(
        defaultPanelHeight,
        context,
        const Center(child: CircularProgressIndicator()),
      );
    }

    if (driveStates.hasError) {
      return buildPlaceholderContainer(
        defaultPanelHeight,
        context,
        const Center(child: Text("Failed to load drive states")),
      );
    }

    final data = driveStates.requireValue;

    if (data.isEmpty) {
      return buildPlaceholderContainer(
        defaultPanelHeight,
        context,
        const Center(child: Text("")),
      );
    }

    final List<TruckDriveStateWithTaskType> driveStatesWithTasks = data
        .map(TruckDriveStateWithTaskType.fromTruckDriveState)
        .toList();

    driveStatesWithTasks.addAll(
      tasksStartedAts.value.map(TruckDriveStateWithTaskType.fromTaskTimestamps),
    );

    driveStatesWithTasks.sort(
      (final a, final b) => b.timestamp.compareTo(a.timestamp),
    );

    final List<TruckDriveStateWithTaskType> finalDriveStatesWithTasks = [];

    for (final (index, state) in driveStatesWithTasks.indexed) {
      if (state.taskType != null && state.endedAt != null) {
        finalDriveStatesWithTasks.add(
          driveStatesWithTasks.elementAt(index + 1),
        );
      }
      finalDriveStatesWithTasks.add(state);
    }

    Future<dynamic> showTopModal(final BuildContext context) =>
        showTopModalSheet(
          backgroundColor: Colors.white,
          context,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            child: ListView(
              reverse: true,
              children: ListTile.divideTiles(
                context: context,
                tiles: finalDriveStatesWithTasks
                    .mapIndexed(
                      (final index, final driveState) => DriveLogRow(
                        driveState: driveState,
                        nextDriveState: finalDriveStatesWithTasks
                            .elementAtOrNull(index == 0 ? 0 : index - 1),
                        isLatest: index == 0,
                        isExpanded: true,
                        isTask: driveState.taskType != null,
                      ),
                    )
                    .toList(),
              ).toList(),
            ),
          ),
        );

    return Container(
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      width: MediaQuery.of(context).size.width,
      height: defaultPanelHeight,
      child: GestureDetector(
        onVerticalDragUpdate: (final details) => showTopModal(context),
        onTap: () => showTopModal(context),
        child: DriveLogRow(
          driveState: finalDriveStatesWithTasks.first,
          nextDriveState: finalDriveStatesWithTasks.elementAtOrNull(1),
          isLatest: true,
          isExpanded: false,
          isTask: finalDriveStatesWithTasks.first.taskType != null,
        ),
      ),
    );
  }
}
