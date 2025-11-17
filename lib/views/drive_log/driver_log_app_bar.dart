import "dart:async";

import "package:collection/collection.dart";
import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:top_modal_sheet/top_modal_sheet.dart";
import "package:vp_kuljetus_driver_app/providers/app_authentication/app_authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/drive_states/drive_states_provider.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
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
    final l10n = L10n.of(context);
    final theme = Theme.of(context);

    final selectedTruckId = store.getString(lastSelectedTruckIdStoreKey);
    final sessionStartedAt = store.getInt(sessionStartedTimestampStoreKey);
    final driverId = ref.watch(appAuthNotifierProvider).value?.accessToken.sub;

    if (driverId == null ||
        selectedTruckId == null ||
        sessionStartedAt == null) {
      return buildPlaceholderContainer(defaultPanelHeight, context, null);
    }

    final sessionDriveStatesWithTasks = ref.watch(
      listSessionDriveStatesWithTasksProvider(
        truckId: selectedTruckId,
        driverId: driverId,
        sessionStartedAt: sessionStartedAt,
      ),
    );

    if (sessionDriveStatesWithTasks.isLoading &&
        !sessionDriveStatesWithTasks.isRefreshing) {
      return buildPlaceholderContainer(
        defaultPanelHeight,
        context,
        const Center(child: CircularProgressIndicator()),
      );
    }

    if (sessionDriveStatesWithTasks.hasError) {
      return buildPlaceholderContainer(
        defaultPanelHeight,
        context,
        Center(
          child: Text(
            l10n.t("errors.listDriveStates"),
            style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white),
          ),
        ),
      );
    }

    if (sessionDriveStatesWithTasks.requireValue.isEmpty) {
      return buildPlaceholderContainer(
        defaultPanelHeight,
        context,
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Text(
              l10n.t("no_drive_states"),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      );
    }

    final driveStatesWithTasks = sessionDriveStatesWithTasks.requireValue;

    Future<dynamic> showTopModal(final BuildContext context) =>
        showTopModalSheet(
          backgroundColor: Colors.white,
          context,
          Consumer(
            builder: (final context, final ref, _) {
              final sessionDriveStatesWithTasks = ref.watch(
                listSessionDriveStatesWithTasksProvider(
                  truckId: selectedTruckId,
                  driverId: driverId,
                  sessionStartedAt: sessionStartedAt,
                ),
              );

              final driveStatesWithTasks =
                  sessionDriveStatesWithTasks.valueOrNull ?? [];

              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.5,
                child: ListView.separated(
                  reverse: true,
                  itemCount: driveStatesWithTasks.length,
                  separatorBuilder: (final context, final index) =>
                      const Divider(height: 0),
                  itemBuilder: (final context, final index) => DriveLogRow(
                    driveState: driveStatesWithTasks.elementAtOrNull(index)!,
                    nextDriveState: index == 0
                        ? null
                        : driveStatesWithTasks.elementAtOrNull(index - 1),
                    isExpanded: true,
                  ),
                ),
              );
            },
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
          driveState: driveStatesWithTasks.first,
          nextDriveState: null,
          isExpanded: false,
        ),
      ),
    );
  }
}
