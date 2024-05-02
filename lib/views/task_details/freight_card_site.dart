import "package:flutter/material.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/utils/site.dart";

class FreightCardSite extends StatelessWidget {
  const FreightCardSite({
    super.key,
    required this.title,
    this.site,
  });

  final String title;
  final Site? site;

  @override
  Widget build(final context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          Text("${site?.name}"),
          Text(site != null ? getSiteAddressText(site!) : "Address"),
        ],
      );
}
