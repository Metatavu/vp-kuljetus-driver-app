import "package:flutter/material.dart" hide Route;
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:skeletonizer/skeletonizer.dart";
import "package:tms_api/tms_api.dart" hide Error;
import "package:url_launcher/url_launcher.dart";
import "package:vp_kuljetus_driver_app/providers/sites/sites_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";

class TaskCard extends ConsumerWidget {
  const TaskCard({super.key, required this.tasks});

  final List<Task> tasks;

  @override
  Widget build(final context, final ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);

    if (tasks.isEmpty) throw Exception("No tasks provided for TaskCard");

    final task = tasks.first;

    final customerSite =
        ref.watch(FindSiteProvider(siteId: task.customerSiteId));

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

    return Card(
      elevation: 2,
      color: Colors.white,
      surfaceTintColor: Colors.transparent,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(
              left: 16,
              top: 8,
              right: 8,
              bottom: 0,
            ),
            title: Text(l10n.t(task.type.name.toLowerCase())),
            titleTextStyle: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.primary,
            ),
            subtitle: Skeletonizer(
              enabled: customerSite.isLoading || customerSite.isRefreshing,
              child: Text(
                customerSite.maybeWhen(
                  data: (final value) => value != null ? value.name : "",
                  orElse: () => "",
                ),
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
            trailing: const Icon(
              Icons.chevron_right,
              size: 32,
            ),
          ),
          const Divider(indent: 16, endIndent: 16),
          Skeletonizer(
            enabled: customerSite.isLoading || customerSite.isRefreshing,
            child: customerSite.maybeWhen(
              orElse: () => const SizedBox(height: 48),
              data: (final data) => data != null
                  ? Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (data.additionalInfo != null) ...[
                            Text(data.additionalInfo!),
                            const SizedBox(height: 8),
                          ],
                          GestureDetector(
                            onTap: () => openMapToSiteAddress(data),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: theme.colorScheme.primary,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  getSiteAddressText(data),
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
