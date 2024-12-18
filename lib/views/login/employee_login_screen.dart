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

    Future<bool?> showExistingShiftDialog() async => showDialog<bool>(
          context: context,
          builder: (final context) => AlertDialog(
            title: Text(l10n.t("existingShiftDialog.title")),
            content: Text(
              l10n.t("existingShiftDialog.description"),
              style: theme.textTheme.bodyMedium,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child:
                    Text(l10n.t("existingShiftDialog.continueExistingShift")),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text(l10n.t("existingShiftDialog.startNewShift")),
              ),
            ],
          ),
        );

    Future<void> login() async {
      try {
        final oidcUser = await authNotifier.login(null);
        final userId = oidcUser?.uid;
        if (userId == null) {
          throw Exception("oidcUser.uid is null");
        }
        final workEventsProviderNotifier =
            ref.read(workEventsProvider(userId).notifier);

        final latestWorkEventType =
            (await workEventsProviderNotifier.getLatestWorkEventFuture(userId))
                ?.workEventType;

        bool startShift = true;
        final shiftStartTime = DateTime.now();

        if (latestWorkEventType != null &&
            latestWorkEventType != WorkEventType.SHIFT_END) {
          startShift = await showExistingShiftDialog() ?? true;
        }

        if (startShift) {
          await workEventsProviderNotifier.createWorkEvent(
            userId,
            WorkEventType.OTHER_WORK,
            shiftStartTime,
          );
        }
      } catch (exception) {
        log("Failed to login with pin code: $exception");
      }
    }

    useEffect(
      () {
        context.loaderOverlay.show();
        login().then((final _) {
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
      },
      [],
    );

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
