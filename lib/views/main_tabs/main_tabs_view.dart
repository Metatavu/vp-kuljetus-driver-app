import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";

class MainTabsView extends StatelessWidget {
  const MainTabsView({super.key, required this.child});

  final Widget child;

  @override
  Widget build(final BuildContext context) {
    final routerState = GoRouterState.of(context);
    final l10n = L10n.of(context);

    ButtonStyle getTabStyle(final bool selected, final BuildContext context) {
      final theme = Theme.of(context);

      return TextButton.styleFrom(
        minimumSize: const Size.fromHeight(48),
        maximumSize: const Size.fromHeight(48),
        shape: const ContinuousRectangleBorder(),
        backgroundColor: selected ? null : theme.colorScheme.secondary,
        foregroundColor: selected ? theme.colorScheme.primary : Colors.white,
        textStyle:
            theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
      );
    }

    if (!["/vehicle", "/routes"].contains(routerState.matchedLocation)) {
      return child;
    }

    return Column(
      children: [
        SizedBox(
          height: 48,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () => context.go("/vehicle"),
                  style: getTabStyle(
                    routerState.matchedLocation == "/vehicle",
                    context,
                  ),
                  child: Text(l10n.t("equipment")),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () => context.go("/routes"),
                  style: getTabStyle(
                    routerState.matchedLocation == "/routes",
                    context,
                  ),
                  child: Text(l10n.t("routes")),
                ),
              ),
            ],
          ),
        ),
        Expanded(child: child),
      ],
    );
  }
}
