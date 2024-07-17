import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:go_router/go_router.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:vp_kuljetus_driver_app/app/env.gen.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/updates/updater.dart";

class LoginScreenShell extends HookConsumerWidget {
  const LoginScreenShell({super.key, required this.child, required this.navigateBackVisible});

  final Widget child;
  final bool navigateBackVisible;

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final updater = Updater();

    final checkingUpdates = useState(false);
    final updateAvailable = useState(false);
    final installingUpdate = useState(false);

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

    /// Skips the update
    void skipUpdate() {
      updateAvailable.value = false;
    }

    useEffect(
      () {
        checkUpdates();
        return null;
      },
      [],
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32, 64, 32, 32),
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
                          Env.updatesSkippable
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      onPressed: !installingUpdate.value
                                          ? installUpdate
                                          : null,
                                      child: Text(
                                        l10n.t(
                                          installingUpdate.value
                                              ? "installingUpdate"
                                              : "installUpdate",
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: !installingUpdate.value
                                          ? skipUpdate
                                          : null,
                                      child: Text(
                                        l10n.t("skipUpdate"),
                                      ),
                                    ),
                                  ],
                                )
                              : ElevatedButton(
                                  onPressed: !installingUpdate.value
                                      ? installUpdate
                                      : null,
                                  child: Text(
                                    l10n.t(
                                      installingUpdate.value
                                          ? "installingUpdate"
                                          : "installUpdate",
                                    ),
                                  ),
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
                Expanded(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    child,
                    if (navigateBackVisible) ElevatedButton(
                      onPressed: () => context.goNamed("login"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        fixedSize: const Size.fromHeight(35),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Text(
                            l10n.t("navigateBackToLoginSelection"),
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ],
            ),
      ),
    );
  }
}
