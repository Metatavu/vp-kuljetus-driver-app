import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/models/views/freight_card.dart";
import "package:vp_kuljetus_driver_app/providers/freight_units/freight_units_providers.dart";
import "package:vp_kuljetus_driver_app/providers/freights/freights_providers.dart";
import "package:vp_kuljetus_driver_app/providers/sites/sites_providers.dart";

part "freight_card_providers.g.dart";

@riverpod
Future<FreightCardModel> freightCardData(
  final FreightCardDataRef ref,
  final String freightId,
) async {
  final freight =
      await ref.watch(findFreightProvider(freightId: freightId).future);

  final sites = await Future.wait<Site>([
    ref.watch(findSiteProvider(siteId: freight.senderSiteId).future),
    ref.watch(findSiteProvider(siteId: freight.recipientSiteId).future),
    ref.watch(findSiteProvider(siteId: freight.pointOfDepartureSiteId).future),
    ref.watch(findSiteProvider(siteId: freight.destinationSiteId).future),
  ]);

  final freightUnits =
      await ref.watch(listFreightUnitsProvider(freightId: freightId).future);

  return FreightCardModel(
    freight: freight,
    senderSite: sites[0],
    recipientSite: sites[1],
    pointOfDepartureSite: sites[2],
    destinationSite: sites[3],
    freightUnits: freightUnits,
  );
}
