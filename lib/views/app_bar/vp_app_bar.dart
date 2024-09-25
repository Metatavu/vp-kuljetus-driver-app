import "package:flutter/material.dart";
import "package:top_modal_sheet/top_modal_sheet.dart";

class VpAppBar extends StatelessWidget {

  const VpAppBar({
    super.key,
    required this.child,
    required this.tiles,
    this.height = 54,
    this.backgroundColor,
  });

  final Widget child;
  final List<Widget> tiles;
  final int height;
  final Color? backgroundColor;

  Future<dynamic> showTopModal(final BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return showTopModalSheet(
      backgroundColor: Colors.white,
      context,
      SizedBox(
        width: screenSize.width,
        height: screenSize.height / 2,
        child: ListView(
          reverse: true,
          children: ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    final screenSize = mediaQuery.size;
    final statusBarHeight = mediaQuery.viewPadding.top;
    final defaultPanelHeight = statusBarHeight + height;

    return Container(
      decoration: BoxDecoration(color: backgroundColor ?? theme.primaryColor),
      width: screenSize.width,
      height: defaultPanelHeight,
      child: GestureDetector(
        onVerticalDragUpdate: (final details) => showTopModal(context),
        onTap: () => showTopModal(context),
        child: child,
      ),
    );
  }
}