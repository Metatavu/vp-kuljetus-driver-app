import "package:collection/collection.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:skeletonizer/skeletonizer.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/providers/views/route_task_screen/route_task_screen_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/task.dart";
import "package:vp_kuljetus_driver_app/views/route_tasks/task_card.dart";
import "package:vp_kuljetus_driver_app/widgets/block_back_button.dart";

class RouteTasksScreen extends ConsumerWidget {
  const RouteTasksScreen({super.key});

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final routerState = GoRouterState.of(context);
    final routeId = routerState.pathParameters["routeId"];
    if (routeId == null) throw ArgumentError("routeId is required");

    final data = ref.watch(fetchRouteTaskScreenDataProvider(routeId));

    Widget renderTasks(final List<Task> tasks) {
      if (tasks.isEmpty) {
        return Center(child: Text(l10n.t("noTasksForRoute")));
      }

      final groupedTasks = tasks.groupListsBy(getTaskGroupKey).values.toList();

      return ListView.separated(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        itemCount: groupedTasks.length,
        separatorBuilder: (final context, final index) =>
            const SizedBox(height: 8),
        itemBuilder: (final context, final index) =>
            TaskCard(tasks: groupedTasks[index]),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BlockBackButton(
          onPressed: () => context.go("/routes"),
          label: l10n.t("backToRoutes"),
        ),
        Material(
          elevation: 2,
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.t("tasks"),
                  style: theme.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Skeletonizer(
                  enabled: data.isLoading || data.isRefreshing,
                  child: Text(
                    data.value?.route.name ?? "",
                    style: theme.textTheme.titleSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: data.when(
              data: (final data) => renderTasks(data.tasks),
              loading: () => Skeletonizer(
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: 1,
                  separatorBuilder: (final context, final index) =>
                      const SizedBox(height: 8),
                  itemBuilder: (final context, final index) => Card(
                    child: SizedBox.fromSize(size: const Size.fromHeight(100)),
                  ),
                ),
              ),
              error: (final error, final stackTrace) => Center(
                child: Text(l10n.t("errors.listTasks")),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
