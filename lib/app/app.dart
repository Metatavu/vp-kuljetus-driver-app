import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:i18next/i18next.dart";
import "package:vp_kuljetus_driver_app/app/router.dart";
import "package:vp_kuljetus_driver_app/app/theme.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final routerConfig = ref.watch(routerProvider);

    return MaterialApp.router(
      title: "VP-kuljetus Driver App",
      theme: getTheme(context),
      localizationsDelegates: [
        ...GlobalMaterialLocalizations.delegates,
        I18NextLocalizationDelegate(
          locales: locales,
          dataSource:
              AssetBundleLocalizationDataSource(bundlePath: "assets/l10n"),
          options: const I18NextOptions(),
        ),
      ],
      locale: locales.first,
      supportedLocales: locales,
      routerConfig: routerConfig,
    );
  }
}
