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
    final sessionStartedAt = store.getInt(sessionStartedTimestamp);
    final driverId = ref.watch(userInfoProvider)?.sub;

    if (driverId == null || selectedTruckId == null) {
      return const SizedBox.shrink();
    }

    final driveStates = ref.watch(
      listDriveStatesProvider(
        truckId: selectedTruckId,
      ),
    );

    if (driveStates.isLoading && !driveStates.isReloading) {
      return SizedBox(height: defaultPanelHeight, child: const Center(child: CircularProgressIndicator()));
    }

    if (driveStates.hasError) {
      return SizedBox(height: defaultPanelHeight, child: const Center(child: Text("Failed to load drive states")));
    }

    final data = driveStates.requireValue;

    if (data.isEmpty) {
      return SizedBox(height: defaultPanelHeight, child: const Center(child: Text("")));
    }

    return Container(
      decoration: const BoxDecoration(color: Color.fromRGBO(24, 64, 77, 1)),
      width: MediaQuery.of(context).size.width,
      height: defaultPanelHeight,
      child: GestureDetector(
        onVerticalDragUpdate: (final details) async {
          if (details.delta.dy > 8) {
            await showTopModalSheet(
              backgroundColor: const Color.fromRGBO(24, 64, 77, 1),
              context,
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: ListView(
                  reverse: true,
                  children: data.mapIndexed(
                    (final index, final driveState) =>
                      DriveLogRow(
                        driveState: driveState,
                        nextDriveState: data.elementAtOrNull(index + 1),
                        isLatest: index == 0,

                      ),
                  ).toList(),
                ),
              ),
            );
          }
        },
        child: DriveLogRow(
          driveState: data[0],
          nextDriveState: data.elementAtOrNull(1),
          isLatest: true,
        ),
      ),
    );
  }
}