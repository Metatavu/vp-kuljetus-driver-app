import "dart:async";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/work_events/work_events_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";
import "package:vp_kuljetus_driver_app/utils/work_events.dart";

class EmployeeAppBar extends HookConsumerWidget {
  const EmployeeAppBar({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);
    final screenSize = MediaQuery.of(context).size;
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final defaultPanelHeight = statusBarHeight + 77;

    final employeeId = ref.watch(userInfoProvider)?.sub;
    final workEvents = ref.watch(
      workEventsProvider(employeeId),
    );

    final totalWorkingTime = useState(sumWorkEvents(workEvents.valueOrNull ?? []));

    useEffect(() {
      final timer = Timer.periodic(const Duration(minutes: 1), (final _) {
        totalWorkingTime.value = sumWorkEvents(workEvents.valueOrNull ?? []);
      });

      return timer.cancel;
    }, [],);

    useEffect(() {
      totalWorkingTime.value = sumWorkEvents(workEvents.valueOrNull ?? []);
      return null;
    }, [workEvents.valueOrNull],);

    return Material(
      elevation: 5,
      child: SizedBox(
        width: screenSize.width,
        height: defaultPanelHeight,
        child: GestureDetector(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24, statusBarHeight + 24, 24, 24),
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
                        formatDurationToPaddedHhMm(totalWorkingTime.value),
                        style: theme.textTheme.titleLarge,
                      ),
                      const Icon(Icons.keyboard_arrow_down_sharp),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}