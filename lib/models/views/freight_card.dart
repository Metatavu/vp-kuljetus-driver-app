import "package:tms_api/tms_api.dart";

class FreightCardData {
  const FreightCardData({
    required this.freight,
    required this.senderSite,
    required this.recipientSite,
    required this.pointOfDepartureSite,
    required this.destinationSite,
    required this.freightUnits,
  });

  final Freight freight;
  final Site senderSite;
  final Site recipientSite;
  final Site pointOfDepartureSite;
  final Site destinationSite;
  final List<FreightUnit> freightUnits;
}
