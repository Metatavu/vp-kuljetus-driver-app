import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:indexed/indexed.dart";
import "package:vp_kuljetus_driver_app/views/employee/employee_app_bar.dart";

class EmployeePage extends NoTransitionPage {
  const EmployeePage({
    super.key,
    required super.child,
  });

  factory EmployeePage.builder(
    final BuildContext context,
    final GoRouterState state,
    final Widget child,
   ) {
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final defaultPanelHeight = statusBarHeight + 77;
    final contentHeight = MediaQuery.of(context).size.height - defaultPanelHeight;

    return EmployeePage(
      key: state.pageKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Indexer(
              children: [
                const Indexed(
                  index: 1,
                  child: EmployeeAppBar(),
                ),
                Indexed(
                  index: 0,
                  child: Column(
                    children: [
                      SizedBox.fromSize(size: Size.fromHeight(defaultPanelHeight)),
                      Container(
                        constraints: BoxConstraints.loose(Size.fromHeight(contentHeight)),
                        child: child,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}