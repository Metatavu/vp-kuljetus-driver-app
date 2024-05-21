import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/vehicles/vehicles_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/layout.dart";
import "package:vp_kuljetus_driver_app/widgets/towable_dialog_option.dart";

class TowableCard extends ConsumerWidget {
  const TowableCard({
    super.key,
    required this.towableId,
    required this.vehicle,
    required this.towables,
  });

  final String towableId;
  final Vehicle vehicle;
  final List<Towable> towables;

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);

    final createVehicle = ref.watch(createVehicleProvider.notifier);

    final towable = towables.firstWhere(
      (final towable) => towable.id == towableId,
    );

    swapTowable() async {
      final availableTowables = towables.where(
        (final towable) =>
            !vehicle.towableIds.contains(towable.id) && towable.id != towableId,
      );

      final selectedTowableId = await showDialog<String>(
        context: context,
        builder: (final context) => SimpleDialog(
          title: Text(
            l10n.t(
              "swapTowableTo",
              variables: {
                "name": towable.name,
                "plateNumber": towable.plateNumber,
              },
            ),
          ),
          children: withDividers(
            availableTowables.map(
              (final towable) => TowableDialogOption(
                towable: towable,
                onPressed: () => Navigator.of(context).pop(towable.id),
              ),
            ),
          ),
        ),
      );

      if (selectedTowableId == null) return;

      await createVehicle.mutate(
        vehicle.rebuild(
          (final b) => b
            ..towableIds.replaceRange(
              vehicle.towableIds.indexOf(towableId),
              vehicle.towableIds.indexOf(towableId) + 1,
              [selectedTowableId],
            ),
        ),
      );
    }

    removeTowable() async {
      await createVehicle.mutate(
        vehicle.rebuild(
          (final b) => b..towableIds.remove(towableId),
        ),
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.t(getTowableTypeLocaleKey(towable.type)),
                  style: theme.textTheme.titleLarge,
                ),
                Text(
                  "${towable.name} / ${towable.plateNumber}",
                  style: theme.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Divider(height: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextButton.icon(
                    onPressed: removeTowable,
                    icon: const Icon(Icons.close),
                    label: Text(l10n.t("remove")),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: 12,
                      ),
                    ),
                  ),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextButton.icon(
                    onPressed: swapTowable,
                    icon: const Icon(Icons.swap_horiz),
                    label: Text(l10n.t("swap")),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
