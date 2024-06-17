import "dart:async";

import "package:collection/collection.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/tasks/tasks_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";
import "package:vp_kuljetus_driver_app/utils/drive_state.dart";

class DriveLogRow extends HookConsumerWidget {

  const DriveLogRow({
    super.key,
    required this.driveState,
    required this.nextDriveState,
    required this.isLatest,
    required this.isExpanded,
  });

  final TruckDriveState driveState;
  final TruckDriveState? nextDriveState;
  final bool isLatest;
  final bool isExpanded;

  String formatDuration(final Duration duration) {
    final hours = duration.inHours.toString().padLeft(2, "0");
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, "0");
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, "0");

    return "$hours:$minutes:$seconds";
  }

  String formatStartTime(final DateTime startTime) {
    final hours = startTime.hour.toString().padLeft(2, "0");
    final minutes = startTime.minute.toString().padLeft(2, "0");

    return "$hours:$minutes";
  }

  Duration getNonLatestDriveStateDuration() {
    if (nextDriveState == null) {
      return Duration.zero;
    }

    return Duration(seconds: nextDriveState!.timestamp -  driveState.timestamp);
  }

  TextStyle getTextStyle(final bool title, final BuildContext context) => TextStyle(
    color: isLatest ? isExpanded ? Theme.of(context).primaryColor : Colors.white : Colors.black,
    fontWeight: isLatest ? FontWeight.w700 : FontWeight.w400,
    fontSize: title ? 16: 14,
  );

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final onGoingTaskIds = store.getStringList(ongoingTaskDataStoreKey)?.slice(1);
    AsyncValue<Task>? onGoingTask;

    if (onGoingTaskIds?.firstOrNull != null) {
      onGoingTask = ref.watch(findTaskProvider(onGoingTaskIds!.first));
    }
    final currentStateDuration = useState(Duration(seconds: DateTime.now().millisecondsSinceEpoch ~/ 1000 - driveState.timestamp));
    final stateStartedAt = DateTime.fromMillisecondsSinceEpoch(driveState.timestamp * 1000);

    useEffect(() {
    final timer = Timer.periodic(const Duration(seconds: 1), (final _) {
      currentStateDuration.value = currentStateDuration.value + const Duration(seconds: 1);
    });
      return timer.cancel;
    }, [],);

    final l10n = L10n.of(context);
    return ListTile(
      tileColor: driveState.state == TruckDriveStateEnum.DRIVE ? const Color(0xFFE8F5E9) : Colors.white,
      contentPadding: isExpanded ? null :  const EdgeInsets.fromLTRB(24, 20, 24, 0),
      leading: isLatest ? null : Text(formatStartTime(stateStartedAt), style: getTextStyle(false, context),),
      title: Text(
        getDriveStateTitle(l10n, driveState, isLatest, onGoingTask?.value),
        style: getTextStyle(true, context),
      ),
      trailing: Text(
        formatDuration(isLatest ? currentStateDuration.value : getNonLatestDriveStateDuration()),
        style: getTextStyle(false, context),
      ),
    );
  }
}