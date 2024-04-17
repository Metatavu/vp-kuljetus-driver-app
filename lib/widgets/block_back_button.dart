import "package:flutter/material.dart";

class BlockBackButton extends StatelessWidget {
  const BlockBackButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  final void Function() onPressed;
  final String label;

  @override
  Widget build(final context) {
    final theme = Theme.of(context);

    return TextButton.icon(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: const ContinuousRectangleBorder(),
        minimumSize: const Size.fromHeight(48),
        backgroundColor: theme.colorScheme.secondary,
        foregroundColor: Colors.white,
        alignment: Alignment.centerLeft,
        textStyle:
            theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
      icon: const Icon(Icons.chevron_left),
      label: Text(label),
    );
  }
}
