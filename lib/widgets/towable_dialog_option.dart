import "package:flutter/material.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/l10n.dart";

class TowableDialogOption extends StatelessWidget {
  const TowableDialogOption({
    super.key,
    required this.towable,
    required this.onPressed,
  });

  final Towable towable;
  final Function() onPressed;

  @override
  Widget build(final context) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);

    return SimpleDialogOption(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(l10n.t(getTowableTypeLocaleKey(towable.type))),
          Text(
            "${towable.name} / ${towable.plateNumber}",
            style: theme.textTheme.bodyMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
