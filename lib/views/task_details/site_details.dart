import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/utils/site.dart";

class SiteDetails extends ConsumerWidget {
  const SiteDetails({super.key, required this.customerSite});

  final Site customerSite;

  @override
  Widget build(final context, final ref) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            customerSite.name,
            style: theme.textTheme.titleMedium?.copyWith(
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8),
          if (customerSite.additionalInfo?.isNotEmpty ?? false)
            Text(customerSite.additionalInfo!),
          if (customerSite.additionalInfo?.isNotEmpty ?? false)
            const SizedBox(height: 8),
          GestureDetector(
            onTap: () => openMapToSiteAddress(customerSite),
            child: Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  getSiteAddressText(customerSite),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
