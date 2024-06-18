import "package:vp_kuljetus_driver_app/models/truck_drive_state_with_task_type.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/l10n.dart";

String getDriveStateTitle(
  final L10n l10n,
  final TruckDriveStateWithTaskType driveState,
  final bool isLatest,
) {
  final driveStateLocaleKey = getDriveStateLocaleKey(driveState.state);
  final driveStateWorkTypeKey = getDriveStateWorkTypeKey(driveState.taskType, isLatest);

  return l10n.t(driveStateLocaleKey,
    variables: {
      "stopType": l10n.t(driveStateWorkTypeKey),
    },
  );
}