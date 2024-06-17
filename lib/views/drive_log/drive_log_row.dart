import "dart:async";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/l10n.dart";

class DriveLogRow extends HookConsumerWidget {

  const DriveLogRow({
    super.key,
    required this.driveState,
    required this.nextDriveState,
    required this.isLatest,
  });

  final TruckDriveState driveState;
  final TruckDriveState? nextDriveState;
  final bool isLatest;

  String formatDuration(final Duration duration) {
    final hours = duration.inHours.toString().padLeft(2, "0");
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, "0");
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, "0");

    return "$hours:$minutes:$seconds";
  }

  Duration getNonLatestDriveStateDuration() {
    if (nextDriveState == null) {
      return Duration.zero;
    }

    return Duration(seconds: driveState.timestamp - nextDriveState!.timestamp);
  }

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final currentStateDuration = useState(Duration(seconds: DateTime.now().millisecondsSinceEpoch ~/ 1000 - driveState.timestamp));

    useEffect(() {
    final timer = Timer.periodic(const Duration(seconds: 1), (final _) {
      currentStateDuration.value = currentStateDuration.value + const Duration(seconds: 1);
    });
      return timer.cancel;
    }, [],);

    final l10n = L10n.of(context);
    return ListTile(
      contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
      title: Text(
          l10n.t(getDriveStateLocaleKey(driveState.state)),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      trailing: Text(
        formatDuration(isLatest ? currentStateDuration.value : getNonLatestDriveStateDuration()),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
    );
  }
}