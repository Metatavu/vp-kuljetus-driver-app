import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:i18next/i18next.dart";
import "package:vp_kuljetus_driver_app/app/router.dart";
import "package:vp_kuljetus_driver_app/app/theme.dart";
import "package:vp_kuljetus_driver_app/providers/drive_states/drive_states_provider.dart";
import "package:vp_kuljetus_driver_app/providers/drivers/drivers_providers.dart";
import "package:vp_kuljetus_driver_app/providers/freight_units/freight_units_providers.dart";
import "package:vp_kuljetus_driver_app/providers/freights/freights_providers.dart";
import "package:vp_kuljetus_driver_app/providers/routes/routes_providers.dart";
import "package:vp_kuljetus_driver_app/providers/sites/sites_providers.dart";
import "package:vp_kuljetus_driver_app/providers/tasks/tasks_providers.dart";
import "package:vp_kuljetus_driver_app/providers/towables/towables_providers.dart";
import "package:vp_kuljetus_driver_app/providers/trucks/trucks_providers.dart";
import "package:vp_kuljetus_driver_app/providers/vehicles/vehicles_providers.dart";
import "package:vp_kuljetus_driver_app/providers/views/freight_card/freight_card_providers.dart";
import "package:vp_kuljetus_driver_app/providers/views/route_task_screen/route_task_screen_providers.dart";
import "package:vp_kuljetus_driver_app/providers/views/task_details_screen/task_details_screen_providers.dart";
import "package:vp_kuljetus_driver_app/providers/views/vehicle_screen/vehicle_screen_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final routerConfig = ref.watch(routerProvider);

    useOnAppLifecycleStateChange((final pref, final state) {
      if (state == AppLifecycleState.resumed) {
        ref.invalidate(listDriveStatesProvider);
        ref.invalidate(findDriverProvider);
        ref.invalidate(listFreightUnitsProvider);
        ref.invalidate(findFreightProvider);
        ref.invalidate(listRoutesProvider);
        ref.invalidate(findRouteProvider);
        ref.invalidate(findSiteProvider);
        ref.invalidate(listTasksProvider);
        ref.invalidate(findTaskProvider);
        ref.invalidate(listTowablesProvider);
        ref.invalidate(findTowableProvider);
        ref.invalidate(listPublicTrucksProvider);
        ref.invalidate(findTruckProvider);
        ref.invalidate(listVehiclesProvider);
        ref.invalidate(freightCardDataProvider);
        ref.invalidate(routeTaskScreenDataProvider);
        ref.invalidate(taskDetailsScreenDataProvider);
        ref.invalidate(vehicleScreenDataProvider);
      }
    });

    return MaterialApp.router(
      title: "VP-kuljetus Driver App",
      theme: getTheme(context),
      localizationsDelegates: [
        ...GlobalMaterialLocalizations.delegates,
        I18NextLocalizationDelegate(
          locales: locales,
          dataSource: AssetBundleLocalizationDataSource(
            bundlePath: "assets/l10n",
          ),
          options: const I18NextOptions(),
        ),
      ],
      locale: locales.first,
      supportedLocales: locales,
      routerConfig: routerConfig,
    );
  }
}
