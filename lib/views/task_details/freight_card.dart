import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:skeletonizer/skeletonizer.dart";
import "package:vp_kuljetus_driver_app/providers/views/freight_card/freight_card_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/views/task_details/freight_card_site.dart";
import "package:vp_kuljetus_driver_app/views/task_details/freight_units_table.dart";

class FreightCard extends ConsumerWidget {
  const FreightCard({super.key, required this.freightId});

  final String freightId;

  @override
  Widget build(final BuildContext context, final ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);

    final freightCardData = ref.watch(fetchFreightCardDataProvider(freightId));
    final data = freightCardData.valueOrNull;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      elevation: 6,
      shadowColor: Colors.black38,
      color: Colors.white,
      surfaceTintColor: Colors.transparent,
      child: Skeletonizer(
        enabled: freightCardData.isLoading || freightCardData.isRefreshing,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    l10n.t("waybill"),
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    "${freightCardData.value?.freight.freightNumber}",
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            FreightUnitsTable(freightUnits: data?.freightUnits ?? []),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  FreightCardSite(
                    title: l10n.t("sender").toUpperCase(),
                    site: data?.senderSite,
                  ),
                  const Divider(),
                  FreightCardSite(
                    title: l10n.t("pointOfDeparture").toUpperCase(),
                    site: data?.pointOfDepartureSite,
                  ),
                  const Divider(),
                  FreightCardSite(
                    title: l10n.t("recipient").toUpperCase(),
                    site: data?.recipientSite,
                  ),
                  const Divider(),
                  FreightCardSite(
                    title: l10n.t("destination").toUpperCase(),
                    site: data?.destinationSite,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
