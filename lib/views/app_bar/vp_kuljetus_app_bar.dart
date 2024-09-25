import "dart:ui";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:vp_kuljetus_driver_app/views/app_bar/vp_kuljetus_app_bar_main_row.dart";

class VpKuljetusAppBar extends HookConsumerWidget {

  const VpKuljetusAppBar({
    super.key,
    required this.childBuilder,
    required this.childCount,
    this.height = 54,
    required this.title,
    this.initialDuration = Duration.zero,
    this.backgroundColor,
  });

  final String title;
  final Duration initialDuration;
  final Widget Function(BuildContext, int) childBuilder;
  final int childCount;
  final int height;
  final Color? backgroundColor;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    final screenSize = mediaQuery.size;
    final statusBarHeight = mediaQuery.viewPadding.top;
    final defaultPanelHeight = statusBarHeight + height;

    final animationController = useAnimationController(duration: const Duration(milliseconds: 300),);
    final animation = CurvedAnimation(parent: animationController, curve: Curves.easeOutCubic);

    void onToggleExpand() {
      if (animationController.isCompleted) {
        animationController.reverse();
      } else {
        animationController.forward();
      }
    }

    return AnimatedBuilder(
      animation: animation,
      builder: (final BuildContext context, final _) => GestureDetector(
        onVerticalDragStart: (final _) => animationController.isCompleted ? null : onToggleExpand(),
        onTap: onToggleExpand,
        child: Container(
          decoration: BoxDecoration(color: backgroundColor ?? theme.primaryColor),
          width: screenSize.width,
          height: lerpDouble(defaultPanelHeight, screenSize.height * 0.9, animation.value)!,
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  reverse: true,
                  separatorBuilder: (final _, final __) => const Divider(),
                  itemCount: childCount,
                  itemBuilder: childBuilder,
                  physics: animation.value == 0.0 ? const NeverScrollableScrollPhysics() : const AlwaysScrollableScrollPhysics(),
                ),
              ),
              const Divider(),
              VpKuljetusAppBarMainRow(
                animation: animation,
                title: title,
                initialDuration: initialDuration,
              ),
            ],
          ),
        ),
      ),
    );
  }
}