import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:go_router/go_router.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:loader_overlay/loader_overlay.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/work_events/work_events_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";

class EmployeeLoginScreen extends HookConsumerWidget {
  const EmployeeLoginScreen({super.key});

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final authNotifier = ref.watch(authNotifierProvider.notifier);

    Future<void> login() async {
      final oidcUser = await authNotifier.login(null);
      final userId = oidcUser?.uid;
      if (userId == null) {
        log("oidcUser is null");
        return;
      }
      final workEventsProviderNotifier = ref.read(workEventsProvider(userId).notifier);
      final latestWorkEventType = workEventsProviderNotifier.getLatestWorkEvent(userId)?.workEventType;
      if (latestWorkEventType == WorkEventType.SHIFT_END) {
        await workEventsProviderNotifier.createWorkEvent(userId, WorkEventType.SHIFT_START);
      }
      await workEventsProviderNotifier.createWorkEvent(userId, WorkEventType.LOGIN);
      await workEventsProviderNotifier.createWorkEvent(userId, WorkEventType.OTHER_WORK);
    }

    useEffect(() {
      context.loaderOverlay.show();
      login()
        .then((final _) {
          if (context.mounted) {
            log("Logged in with pin code");
            context.goNamed("employee");
          }
        }).whenComplete(() {
          if (context.mounted) {
            context.loaderOverlay.hide();
          }
        });
      return null;
    }, [],);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          l10n.t("redirectingToPinCodeLogin"),
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}