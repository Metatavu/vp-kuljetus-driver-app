import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";

class LoginScreenShell extends HookConsumerWidget {
  const LoginScreenShell({
    super.key,
    required this.child,
    required this.navigateBackVisible,
  });

  final Widget child;
  final bool navigateBackVisible;

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32, 64, 32, 32),
        child: Column(
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
                  if (navigateBackVisible)
                    ElevatedButton(
                      onPressed: () => context.goNamed("login"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        fixedSize: const Size.fromHeight(35),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      ),
                      child: Text(
                        l10n.t("navigateBackToLoginSelection"),
                        style: theme.textTheme.bodySmall,
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
