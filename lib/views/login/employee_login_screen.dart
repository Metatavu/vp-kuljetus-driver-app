import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
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

    final textEditingController = useTextEditingController();

    Future<void> onLoginPressed() async {
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          l10n.t("loginWithPinCode"),
          textAlign: TextAlign.left,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            labelText: l10n.t("pinCode"),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: const Color(0xFFF2F2F2),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: onLoginPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            fixedSize: const Size.fromHeight(35),
            padding: const EdgeInsets.all(0),
            backgroundColor: const Color(0xFF1B4649),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
          ),
          child: Text(
            l10n.t("login"),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}