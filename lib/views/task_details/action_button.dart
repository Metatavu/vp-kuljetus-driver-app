import "package:flutter/material.dart";

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.label,
    required this.icon,
    this.backgroundColor,
    this.color,
    this.onPressed,
  });

  final String label;
  final Icon icon;
  final Color? backgroundColor;
  final Color? color;
  final void Function()? onPressed;

  @override
  Widget build(final context) => Directionality(
        textDirection: TextDirection.rtl,
        child: FilledButton.icon(
          style: ButtonStyle(
            visualDensity: VisualDensity.compact,
            foregroundColor:
                color != null ? WidgetStatePropertyAll(color) : null,
            backgroundColor: backgroundColor != null
                ? WidgetStateProperty.all(backgroundColor)
                : null,
          ),
          onPressed: onPressed,
          label: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          icon: icon,
        ),
      );
}
