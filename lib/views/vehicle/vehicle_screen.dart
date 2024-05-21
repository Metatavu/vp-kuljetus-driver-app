import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:skeletonizer/skeletonizer.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/vehicles/vehicles_providers.dart";
import "package:vp_kuljetus_driver_app/providers/views/vehicle_screen/vehicle_screen_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";
import "package:vp_kuljetus_driver_app/utils/layout.dart";
import "package:vp_kuljetus_driver_app/views/vehicle/towable_card.dart";
import "package:vp_kuljetus_driver_app/widgets/towable_dialog_option.dart";

class VehicleScreen extends ConsumerWidget {
  const VehicleScreen({super.key});

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);

    final authNotifier = ref.watch(authNotifierProvider.notifier);

    final vehicleScreenData = ref.watch(
      fetchVehicleScreenDataProvider(
        store.getString(lastSelectedTruckIdStoreKey)!,
      ),
    );

    final createVehicle = ref.watch(createVehicleProvider.notifier);

    if (vehicleScreenData.isLoading && !vehicleScreenData.isReloading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (vehicleScreenData.hasError) {
      return const Center(child: Text("Failed to load vehicle data"));
    }

    final data = vehicleScreenData.requireValue;

    addTowable() async {
      final availableTowables = data.towables.where(
        (final towable) => !data.vehicle.towableIds.contains(towable.id),
      );

      final selectedTowableId = await showDialog<String>(
        context: context,
        builder: (final context) => SimpleDialog(
          title: Text(l10n.t("addTowable")),
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
        data.vehicle.rebuild(
          (final b) => b..towableIds.add(selectedTowableId),
        ),
      );
    }

    return Skeletonizer(
      enabled: vehicleScreenData.isReloading,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        l10n.t("truck"),
                        style: theme.textTheme.titleLarge,
                      ),
                      Text(
                        "${data.truck.name} / ${data.truck.plateNumber}",
                        style: theme.textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Divider(height: 0),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextButton.icon(
                      onPressed: authNotifier.logout,
                      icon: const Icon(Icons.logout),
                      label: Text(
                        l10n.t("logout"),
                        style: theme.textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
                        ),
                      ),
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
            ),
          ),
          const SizedBox(height: 16),
          for (final towableId in data.vehicle.towableIds) ...[
            TowableCard(
              towableId: towableId,
              towables: data.towables,
              vehicle: data.vehicle,
            ),
            const SizedBox(height: 16),
          ],
          ElevatedButton(
            onPressed: addTowable,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    l10n.t("addTowable"),
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
