import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";

class TerminalLoginScreen extends HookConsumerWidget {
  const TerminalLoginScreen({super.key});

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);

    final textEditingController = useTextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          l10n.t("loginWithPinCode"),
          textAlign: TextAlign.left,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            labelText: l10n.t("pinCode"),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: const Color(0xFFF2F2F2),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: ()  {},
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