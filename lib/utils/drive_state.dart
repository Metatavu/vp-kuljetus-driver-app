import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/l10n.dart";

String getDriveStateTitle(
  final L10n l10n,
  final TruckDriveState driveState,
  final bool isLatest,
  final Task? associatedTask,
) {
  final driveStateLocaleKey = getDriveStateLocaleKey(driveState.state);
  final driveStateWorkTypeKey = getDriveStateWorkTypeKey(associatedTask?.type, isLatest);

  return l10n.t(driveStateLocaleKey,
    variables: {
      "stopType": l10n.t(driveStateWorkTypeKey),
    },
  );
}