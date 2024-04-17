import "package:flutter/material.dart";
import "package:i18next/i18next.dart";

const List<Locale> locales = [
  Locale("fi", "FI"),
];

class L10n {
  const L10n(this.i18next);

  final I18Next i18next;

  static L10n of(final BuildContext context) => L10n(I18Next.of(context)!);

  String t(
    final String key, {
    final Locale? locale,
    final String? context,
    final int? count,
    final Map<String, dynamic>? variables,
    final I18NextOptions? options,
    final String Function(String)? orElse,
  }) =>
      i18next.t(
        key.isEmpty || key.contains(i18next.options.namespaceSeparator!)
            ? key
            : "localizations:$key",
        locale: locale,
        context: context,
        count: count,
        variables: variables,
        options: options,
        orElse: orElse,
      );
}
