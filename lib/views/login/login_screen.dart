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
import "package:vp_kuljetus_driver_app/updates/updater.dart";
import "package:vp_kuljetus_driver_app/views/login/public_truck_select.dart";

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final publicTrucks = ref.watch(listPublicTrucksProvider);
    final updater = Updater();

    final selectedPublicTruck = useState<PublicTruck?>(null);
    final checkingUpdates = useState(false);
    final updateAvailable = useState(false);
    final installingUpdate = useState(false);

    useEffect(
      () {
        final lastSelectedTruckId =
            store.getString(lastSelectedTruckIdStoreKey);
        selectedPublicTruck.value = publicTrucks.value?.firstWhereOrNull(
          (final truck) => truck.id == lastSelectedTruckId,
        );
        return null;
      },
      [publicTrucks.hasValue],
    );

    /// Checks for updates
    Future<void> checkUpdates() async {
      checkingUpdates.value = true;
      try {
        log("Checking for updates...");
        updateAvailable.value = await updater.isUpdateAvailable();
      } finally {
        checkingUpdates.value = false;
      }
    }

    /// Installs the update
    Future<void> installUpdate() async {
      installingUpdate.value = true;
      try {
        log("Installing update...");
        await updater.updateApp();
      } catch (error) {
        log("Failed to install update", error: error);
      } finally {
        installingUpdate.value = false;
      }
    }

    Future<void> initLogin(final PublicTruck selectedTruck) async {
      try {
        await authNotifier.login(selectedTruck.id!);
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

    useEffect(() {
      checkUpdates();
      return null;
    }, [],);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
        child: checkingUpdates.value || updateAvailable.value
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage("assets/images/vp-kuljetus-logo.jpeg"),
                    width: double.infinity,
                  ),
                  const SizedBox(height: 32),
                  updateAvailable.value
                      ? Column(
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              l10n.t("updateAvailable"),
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 32),
                            ElevatedButton(
                              onPressed: !installingUpdate.value
                                  ? installUpdate
                                  : null,
                              child: Text(l10n.t(installingUpdate.value
                                  ? "installingUpdate"
                                  : "installUpdate",),),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              l10n.t("checkingUpdates"),
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 32),
                            const CircularProgressIndicator(),
                          ],
                        ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Image(
                    image: AssetImage("assets/images/vp-kuljetus-logo.jpeg"),
                    width: double.infinity,
                  ),
                  const SizedBox(height: 32),
                  Text(
                    textAlign: TextAlign.left,
                    l10n.t("selectVehicle"),
                    style: Theme.of(context).textTheme.headlineLarge,
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
                  const Spacer(),
                  ElevatedButton(
                    onPressed: selectedPublicTruck.value != null
                        ? () => initLogin(selectedPublicTruck.value!)
                        : null,
                    child: Text(l10n.t("login")),
                  ),
                ],
              ),
      ),
    );
  }
}
