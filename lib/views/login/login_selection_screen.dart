import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";

class LoginSelectionScreen extends StatelessWidget {
  const LoginSelectionScreen({super.key});

  @override
  Widget build(final context) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);

    return Column(
      children: [
        Text(
          l10n.t("loginSelectionTitle"),
          textAlign: TextAlign.left,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () => context.goNamed("driverLogin"),
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  l10n.t("driver"),
                  style: theme.textTheme.titleMedium,
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () => context.goNamed("employeeLogin"),
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  l10n.t("terminalOrOffice"),
                  style: theme.textTheme.titleMedium,
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}