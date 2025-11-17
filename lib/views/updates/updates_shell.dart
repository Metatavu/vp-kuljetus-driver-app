import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:vp_kuljetus_driver_app/app/env.gen.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/updates/updater.dart";

class UpdatesShell extends HookConsumerWidget {
  const UpdatesShell({super.key, required this.child});

  final Widget child;

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final updater = Updater();

    final installingUpdate = useState(false);

    /// Installs the update
    Future<void> installUpdate() async {
      installingUpdate.value = true;

      try {
        log("Installing update...");
        await updater.updateApp();
      } catch (error) {
        log("Failed to install update", error: error);
      }

      if (context.mounted) installingUpdate.value = false;
    }

    Future<void> promptUpdateIfAvailable() async {
      try {
        final updateAvailable = await updater.isUpdateAvailable();

        if (!updateAvailable || !context.mounted) return;

        await showDialog(
          context: context,
          barrierDismissible: false,
          builder: (final context) => ValueListenableBuilder(
            valueListenable: installingUpdate,
            builder: (final context, final isInstalling, _) => AlertDialog(
              title: Text(l10n.t("updateAvailableTitle")),
              content: Text(l10n.t("updateAvailableContent")),
              actions: [
                Row(
                  spacing: 16,
                  children: [
                    if (Env.updatesSkippable)
                      Expanded(
                        child: ElevatedButton(
                          onPressed: !isInstalling
                              ? () => Navigator.of(context).pop()
                              : null,
                          child: Text(l10n.t("skip")),
                        ),
                      ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: !isInstalling
                            ? () async {
                                await installUpdate();
                                if (!context.mounted) return;
                                Navigator.of(context).pop();
                              }
                            : null,
                        child: Text(
                          l10n.t(isInstalling ? "installing" : "install"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      } catch (error) {
        log("Failed to check for updates", error: error);
      }
    }

    useEffect(() {
      promptUpdateIfAvailable();
      return null;
    }, []);

    return child;
  }
}
