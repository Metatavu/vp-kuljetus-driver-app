import "package:tms_api/tms_api.dart";
import "package:url_launcher/url_launcher.dart";

getSiteAddressText(final Site site) =>
    "${site.address}, ${site.postalCode} ${site.locality}";

Future<void> openMapToSiteAddress(final Site site) async {
  final mapUrl = Uri(
    scheme: "https",
    host: "www.google.com",
    path: "/maps/search/",
    queryParameters: {
      "api": "1",
      "query": getSiteAddressText(site),
    },
  );

  if (await canLaunchUrl(mapUrl)) await launchUrl(mapUrl);
}
