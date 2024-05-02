import "package:flutter/material.dart" hide Route;
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:skeletonizer/skeletonizer.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/routes/routes_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";
import "package:vp_kuljetus_driver_app/utils/date.dart";
import "package:vp_kuljetus_driver_app/views/routes/route_card.dart";

class RoutesScreen extends HookConsumerWidget {
  const RoutesScreen({super.key});

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final truckId = store.getString(lastSelectedTruckIdStoreKey);
    if (truckId == null) throw Exception("No truck selected");

    final routes = ref.watch(
      listRoutesProvider(
        truckId: truckId,
        departureAfter: startOfToday(),
        departureBefore: endOfToday(),
      ),
    );

    if (routes.isLoading || routes.isRefreshing) {
      final placeholderRoute = Route(
        (final builder) => builder
          ..name = BoneMock.name
          ..departureTime = DateTime.now(),
      );

      return Skeletonizer(
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: 1,
          separatorBuilder: (final context, final index) =>
              const SizedBox(height: 8),
          itemBuilder: (final context, final index) =>
              RouteCard(route: placeholderRoute),
        ),
      );
    }

    if (routes.hasError) {
      return Center(child: Text(l10n.t("errors.listRoutes")));
    }

    final routesList = routes.requireValue.reversed.toList();

    if (routesList.isEmpty) {
      return Center(child: Text(l10n.t("noRoutesForToday")));
    }

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        itemCount: routesList.length,
        separatorBuilder: (final context, final index) =>
            const SizedBox(height: 8),
        itemBuilder: (final context, final index) =>
            RouteCard(route: routesList[index]),
      ),
    );
  }
}
