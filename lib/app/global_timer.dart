import "dart:async";
import "dart:developer";

import "package:flutter_hooks/flutter_hooks.dart";

/// Starts a global timer that ticks every second.
///
/// Used in screens where there are multiple timers that need to be synchronized.
Timer startGlobalTimer() =>
    Timer.periodic(const Duration(seconds: 1), (final _) {
      timerTickStreamController.add(null);
    });

final timerTickStreamController = StreamController.broadcast();

StreamSubscription? useTimerTick(final Function(dynamic) onEvent) =>
    useOnStreamChange(
      timerTickStreamController.stream,
      onData: onEvent,
      onError: (final error, final stackTrace) {
        log("Error in timer tick stream", error: error, stackTrace: stackTrace);
      },
    );
