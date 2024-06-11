import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class HardwareBackHandler extends StatelessWidget {
  const HardwareBackHandler({
    super.key,
    required this.gotoPath,
    required this.child,
  });

  final String gotoPath;
  final Widget child;

  @override
  Widget build(final context) => BackButtonListener(
        onBackButtonPressed: () async {
          context.go(gotoPath);
          return true;
        },
        child: child,
      );
}
