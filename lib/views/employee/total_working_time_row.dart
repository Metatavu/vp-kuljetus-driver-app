import "dart:async";

import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";

class TotalWorkingTimeRow extends HookConsumerWidget {

  const TotalWorkingTimeRow({
    super.key,
    required this.initialTotalWorkingTime,
    this.expanded = false,
  });

  final Duration initialTotalWorkingTime;
  final bool expanded;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final topPadding = expanded ? 24.0 : statusBarHeight + 24;

    final totalWorkingTime = useState(initialTotalWorkingTime);

    useEffect(() {
      final timer = Timer.periodic(const Duration(seconds: 1), (final _) {
        totalWorkingTime.value = totalWorkingTime.value + const Duration(seconds: 1);
      });

      return timer.cancel;
    }, [],);

    return Padding(
      padding: EdgeInsets.fromLTRB(24, topPadding, 24, 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              l10n.t("workingTime"),
              style: theme.textTheme.titleLarge,
            ),
          ),
          Expanded(
            flex: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  kDebugMode ? formatDurationToPaddedHhMmSs(totalWorkingTime.value) : formatDurationToPaddedHhMm(totalWorkingTime.value),
                  style: theme.textTheme.titleLarge,
                ),
                Icon(expanded ? Icons.keyboard_arrow_up_sharp : Icons.keyboard_arrow_down_sharp,),
              ],
            ),
          ),
        ],
      ),
    );
  }

}