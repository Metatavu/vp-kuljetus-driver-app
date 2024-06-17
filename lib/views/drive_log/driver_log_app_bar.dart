import "package:collection/collection.dart";
import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:top_modal_sheet/top_modal_sheet.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/drive_states/drive_states_provider.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";
import "package:vp_kuljetus_driver_app/views/drive_log/drive_log_row.dart";

class DriverLogAppBar extends HookConsumerWidget {
  const DriverLogAppBar({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final defaultPanelHeight = statusBarHeight + 54;

    final selectedTruckId = store.getString(lastSelectedTruckIdStoreKey);
    final sessionStartedAt = store.getInt(sessionStartedTimestampStoreKey);
    final driverId = ref.watch(userInfoProvider)?.sub;

    if (driverId == null || selectedTruckId == null || sessionStartedAt == null) {
      return const SizedBox.shrink();
    }

    final driveStates = ref.watch(
      listDriveStatesProvider(
        truckId: selectedTruckId,
        driverId: driverId,
        // after: DateTime.fromMillisecondsSinceEpoch(sessionStartedAt).toUtc(),
      ),
    );

    if (driveStates.isLoading && !driveStates.isReloading) {
      return Container(decoration: BoxDecoration(color: Theme.of(context).primaryColor), height: defaultPanelHeight, child: const Center(child: CircularProgressIndicator()));
    }

    if (driveStates.hasError) {
      return Container(decoration: BoxDecoration(color: Theme.of(context).primaryColor), height: defaultPanelHeight, child: const Center(child: Text("Failed to load drive states")));
    }

    final data = driveStates.requireValue;

    if (data.isEmpty) {
      return Container(decoration: BoxDecoration(color: Theme.of(context).primaryColor), height: defaultPanelHeight, child: const Center(child: Text("")));
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
              tiles: data.mapIndexed(
              (final index, final driveState) =>
                DriveLogRow(
                  driveState: driveState,
                  nextDriveState: data.elementAtOrNull(index == 0 ? 0 : index - 1 ),
                  isLatest: index == 0,
                  isExpanded: true,

                ),
              ).toList(),
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
          driveState: data.first,
          nextDriveState: data.elementAtOrNull(1),
          isLatest: true,
          isExpanded: false,
        ),
      ),
    );
  }
}