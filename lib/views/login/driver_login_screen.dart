import "dart:developer";

import "package:collection/collection.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/trucks/trucks_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";
import "package:vp_kuljetus_driver_app/views/login/public_truck_select.dart";

class DriverLoginScreen extends HookConsumerWidget {
  const DriverLoginScreen({super.key});

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final publicTrucks = ref.watch(listPublicTrucksProvider);

    final selectedPublicTruck = useState<PublicTruck?>(null);

    useEffect(
      () {
        final lastSelectedTruckId =
            store.getString(lastSelectedTruckIdStoreKey);

        selectedPublicTruck.value = publicTrucks.value?.firstWhereOrNull(
          (final truck) => truck.id == lastSelectedTruckId,
        );

        if (lastSelectedTruckId == null &&
            publicTrucks.valueOrNull?.firstOrNull?.id != null) {
          store.setString(
            lastSelectedTruckIdStoreKey,
            publicTrucks.requireValue.first.id!,
          );
        }

        return null;
      },
      [publicTrucks.hasValue],
    );

    Future<void> initLogin(final PublicTruck selectedTruck) async {
      try {
        await authNotifier.login(selectedTruck.id!);
        final sessionStartedAt = DateTime.now().millisecondsSinceEpoch;
        await store.setInt(sessionStartedTimestampStoreKey, sessionStartedAt.toInt());
      } catch (error) {
        log(
          "Failed to login to truck ${selectedTruck.name} (ID ${selectedTruck.id}, VIN ${selectedTruck.vin})",
          error: error,
        );
      }
    }

    void onSelectTruck(final PublicTruck? publicTruck) {
      selectedPublicTruck.value = publicTruck;
      if (publicTruck?.id != null) {
        store.setString(lastSelectedTruckIdStoreKey, publicTruck!.id!);
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          l10n.t("selectVehicle"),
          textAlign: TextAlign.left,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        switch (publicTrucks) {
          AsyncData(:final value) => PublicTruckSelect(
            publicTrucks: value,
            initialValue: selectedPublicTruck.value,
            onSelectTruck: onSelectTruck,
          ),
          AsyncError() => Text(l10n.t("errors.listPublicTrucks")),
          _ => const SizedBox(
            width: double.infinity,
            height: 80,
            child: Center(child: CircularProgressIndicator()),
          ),
        },
        const SizedBox(height: 16),
        Text(
          textAlign: TextAlign.left,
          l10n.t("loginInstructions"),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: selectedPublicTruck.value != null
              ? () => initLogin(selectedPublicTruck.value!)
              : null,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            fixedSize: const Size.fromHeight(35),
            padding: const EdgeInsets.all(0),
            backgroundColor: const Color(0xFF1B4649),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
          ),
          child: Text(
            l10n.t("login"),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}