import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/app/global_timer.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";
import "package:vp_kuljetus_driver_app/utils/drive_state.dart";

class DriveLogRow extends HookConsumerWidget {
  const DriveLogRow({
    super.key,
    required this.driveState,
    required this.nextDriveState,
    required this.isExpanded,
  });

  final DriveStateWithTaskType driveState;
  final DriveStateWithTaskType? nextDriveState;
  final bool isExpanded;

  Duration _getStateDuration(
    final bool isLatest,
    final DriveStateWithTaskType driveState,
    final DriveStateWithTaskType? nextState,
  ) {
    if (isLatest) {
      return Duration(
        seconds: DateTime.now().secondsSinceEpoch - driveState.$1.timestamp,
      );
    }

    if (nextState != null) {
      return Duration(
        seconds: nextState.$1.timestamp - driveState.$1.timestamp,
      );
    }

    return Duration.zero;
  }

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final l10n = L10n.of(context);
    final isLatest = useMemoized(() => nextDriveState == null, [
      nextDriveState,
    ]);

    final stateDuration = useState(
      _getStateDuration(isLatest, driveState, nextDriveState),
    );

    final stateStartedAt = useMemoized(
      () => DateTime.fromMillisecondsSinceEpoch(driveState.$1.timestamp * 1000),
      [driveState.$1.timestamp],
    );

    useEffect(() {
      stateDuration.value = _getStateDuration(
        isLatest,
        driveState,
        nextDriveState,
      );
      return null;
    }, [isLatest, driveState, nextDriveState]);

    useTimerTick((final _) {
      if (isLatest) {
        stateDuration.value = stateDuration.value + const Duration(seconds: 1);
      }
    });

    final getTextStyle = useCallback(
      (final bool title, final BuildContext context) => TextStyle(
        color: isLatest
            ? isExpanded
                  ? Theme.of(context).primaryColor
                  : Colors.white
            : Colors.black,
        fontWeight: isLatest ? FontWeight.w700 : FontWeight.w400,
        fontSize: title ? 16 : 14,
      ),
      [isLatest, isExpanded],
    );

    return ListTile(
      tileColor: driveState.$1.state == TruckDriveStateEnum.DRIVE
          ? const Color(0xFFE8F5E9)
          : Colors.white,
      contentPadding: isExpanded
          ? null
          : const EdgeInsets.fromLTRB(24, 20, 24, 0),
      leading: isLatest
          ? null
          : Text(
              formatDateToPaddedHhMm(stateStartedAt),
              style: getTextStyle(false, context),
            ),
      title: Text(
        getDriveStateTitle(l10n, driveState.$1, driveState.$2, isLatest),
        style: getTextStyle(true, context),
      ),
      trailing: Text(
        formatDurationToPaddedHhMmSs(stateDuration.value),
        style: getTextStyle(false, context),
      ),
    );
  }
}
