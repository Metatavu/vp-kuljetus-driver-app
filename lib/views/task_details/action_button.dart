import "package:flutter/material.dart";

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.label,
    required this.icon,
    this.backgroundColor,
    this.onPressed,
  });

  final String label;
  final Icon icon;
  final Color? backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(final context) => Directionality(
        textDirection: TextDirection.rtl,
        child: FilledButton.icon(
          style: ButtonStyle(
            visualDensity: VisualDensity.compact,
            backgroundColor: backgroundColor != null
                ? MaterialStateProperty.all(Colors.white)
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
