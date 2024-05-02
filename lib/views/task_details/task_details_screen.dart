import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:skeletonizer/skeletonizer.dart";
import "package:vp_kuljetus_driver_app/models/views/task_details_screen.dart";
import "package:vp_kuljetus_driver_app/providers/views/task_details_screen/task_details_screen_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/views/task_details/freight_card_carousel.dart";
import "package:vp_kuljetus_driver_app/views/task_details/site_details.dart";
import "package:vp_kuljetus_driver_app/views/task_details/task_title_area.dart";
import "package:vp_kuljetus_driver_app/widgets/block_back_button.dart";

class TaskDetailsScreen extends HookConsumerWidget {
  const TaskDetailsScreen({super.key});

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final location = GoRouterState.of(context).matchedLocation;
    final previousRoute = location.substring(0, location.lastIndexOf("/"));

    final taskIds = GoRouterState.of(context).uri.queryParametersAll["taskIds"];
    if (taskIds == null) throw Exception("No taskIds provided");

    final taskDetailsScreenData = ref
        .watch(fetchTaskDetailsScreenDataProvider(TaskIdList(list: taskIds)));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BlockBackButton(
          onPressed: () => context.go(previousRoute),
          label: l10n.t("backToTaskList"),
        ),
        Material(
          child: ColoredBox(
            color: Colors.white,
            child: taskDetailsScreenData.when(
              data: (final data) => Column(
                children: [
                  TaskTitleArea(task: data.tasks.first),
                  const Divider(
                    height: 8,
                    thickness: 0.5,
                    color: Colors.black12,
                  ),
                  SiteDetails(customerSite: data.customerSite),
                ],
              ),
              loading: () => const Skeletonizer(
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                ),
              ),
              error: (final error, final stackTrace) => const SizedBox(),
            ),
          ),
        ),
        Expanded(
          child: taskDetailsScreenData.maybeWhen(
            data: (final data) => FreightCardCarousel(
              freightIds:
                  data.tasks.map((final task) => task.freightId).toList(),
            ),
            orElse: () => const Center(child: CircularProgressIndicator()),
          ),
        ),
      ],
    );
  }
}
