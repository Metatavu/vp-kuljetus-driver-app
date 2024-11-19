import "dart:async";
import "dart:math";
import "dart:ui";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";

class VpKuljetusAppBarMainRow extends HookConsumerWidget {
  const VpKuljetusAppBarMainRow({
    super.key,
    required this.animation,
    required this.title,
    this.initialDuration = Duration.zero,
  });

  final Animation animation;
  final String title;
  final Duration initialDuration;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);

    final totalDuration = useState(initialDuration);

    useEffect(
      () {
        final timer = Timer.periodic(const Duration(seconds: 1), (final _) {
          totalDuration.value =
              totalDuration.value + const Duration(seconds: 1);
        });

        return timer.cancel;
      },
      [],
    );

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Expanded(
            flex: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatDurationToPaddedHhMmSs(totalDuration.value),
                  style: theme.textTheme.titleLarge,
                ),
                Transform.rotate(
                  angle: lerpDouble(0, pi, animation.value)!,
                  child: const Icon(Icons.keyboard_arrow_down_sharp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
