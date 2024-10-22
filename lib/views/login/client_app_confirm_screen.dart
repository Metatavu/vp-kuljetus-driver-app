import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";

class ConfirmClientAppScreen extends StatelessWidget {
  const ConfirmClientAppScreen({
    super.key,
    this.clientAppName,
    required this.deviceId,
  });

  final String? clientAppName;
  final String deviceId;

  String get clientAppIdentifier {
    final deviceIdLength = deviceId.length;
    return deviceId.substring(deviceIdLength - 4, deviceIdLength);
  }

  @override
  Widget build(final context) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          l10n.t("registeredClientApp"),
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        Text(
          l10n.t("registeredClientAppHelper"),
          style: theme.textTheme.bodySmall,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.t("clientAppName"),
              style: theme.textTheme.bodyMedium,
            ),
            Text(
              clientAppName ?? "",
              style: theme.textTheme.bodyMedium?.copyWith(color: Colors.grey),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.t("clientAppIdentifier"),
              style: theme.textTheme.bodyMedium,
            ),
            Text(
              clientAppIdentifier,
              style: theme.textTheme.bodyMedium?.copyWith(color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: () => context.goNamed("login"),
          child: Text(l10n.t("continue")),
        ),
      ],
    );
  }
}