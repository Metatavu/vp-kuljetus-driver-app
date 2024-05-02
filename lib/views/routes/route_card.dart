import "package:flutter/material.dart" hide Route;
import "package:go_router/go_router.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:skeletonizer/skeletonizer.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/drivers/drivers_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";

class RouteCard extends ConsumerWidget {
  const RouteCard({super.key, required this.route});

  final Route route;

  @override
  Widget build(final context, final ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);

    final driver = route.driverId != null
        ? ref.watch(findDriverProvider(driverId: route.driverId!))
        : null;

    return InkWell(
      onTap: () => context.go("/routes/${route.id}/tasks"),
      child: Card(
        elevation: 2,
        color: Colors.white,
        surfaceTintColor: Colors.transparent,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.only(
            left: 16,
            top: 8,
            right: 8,
            bottom: 8,
          ),
          title: Text(route.name),
          titleTextStyle: theme.textTheme.titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          subtitle: driver != null
              ? Skeletonizer(
                  enabled: driver.isLoading || driver.isRefreshing,
                  child: driver.maybeWhen(
                    data: (final value) => Text(
                      value != null
                          ? value.displayName ?? l10n.t("namelessDriver")
                          : l10n.t("noAllocatedDriver"),
                    ),
                    orElse: () => Text(l10n.t("noAllocatedDriver")),
                  ),
                )
              : null,
          trailing: const Icon(Icons.chevron_right, size: 32),
        ),
      ),
    );
  }
}
