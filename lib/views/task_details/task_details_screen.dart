import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:go_router/go_router.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:skeletonizer/skeletonizer.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/models/views/task_details_screen.dart";
import "package:vp_kuljetus_driver_app/providers/views/task_details_screen/task_details_screen_providers.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";
import "package:vp_kuljetus_driver_app/utils/task.dart";
import "package:vp_kuljetus_driver_app/views/task_details/action_button.dart";
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

    final taskDetailsScreenData = ref.watch(
      taskDetailsScreenDataProvider(TaskIdList(list: taskIds)),
    );

    final task = taskDetailsScreenData.valueOrNull?.tasks.firstOrNull;

    useEffect(
      () {
        final taskStatus = task?.status;
        if (taskStatus == null) return null;

        if (taskStatus == TaskStatus.IN_PROGRESS) {
          store.setStringList(
            ongoingTaskDataStoreKey,
            [task!.routeId!, ...taskIds],
          );
        } else {
          store.remove(ongoingTaskDataStoreKey);
        }

        return null;
      },
      [task],
    );

    onStartTasks() {
      ref
          .read(
            taskDetailsScreenDataProvider(TaskIdList(list: taskIds)).notifier,
          )
          .updateTasksStatus(TaskStatus.IN_PROGRESS);
      if (task != null) {
        setTaskGroupStartedAt(DateTime.now(), getTaskGroupKey(task), task.type);
      }
    }

    onEndTasks() {
      ref
          .read(
            taskDetailsScreenDataProvider(TaskIdList(list: taskIds)).notifier,
          )
          .updateTasksStatus(TaskStatus.DONE);
      if (task != null) {
        setTaskGroupEndedAt(DateTime.now(), getTaskGroupKey(task), task.type);
      }
    }

    onBackPressed() async {
      if (task == null || task.status != TaskStatus.IN_PROGRESS) {
        context.go(previousRoute);
        return;
      }

      final confirmMarkTasksAsDone = await showDialog(
            context: context,
            builder: (final context) => AlertDialog(
              insetPadding: const EdgeInsets.symmetric(horizontal: 16),
              actionsAlignment: MainAxisAlignment.spaceBetween,
              actionsPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              title: Text("${l10n.t("taskIsInProgress")}!"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(l10n.t("doYouWantToReturnToTaskList")),
                  const SizedBox(height: 8),
                  Text(
                    l10n.t(
                      "youCannotModifyTaskWayBillsAnymoreAfterConfirmation",
                    ),
                  ),
                ],
              ),
              actions: [
                OutlinedButton.icon(
                  onPressed: () => Navigator.of(context).pop(false),
                  label: Text(l10n.t("cancel")),
                  icon: const Icon(Icons.close),
                ),
                ActionButton(
                  label: l10n.t("checkOutAsDone"),
                  icon: const Icon(Icons.check),
                  backgroundColor: Colors.red,
                  color: Colors.white,
                  onPressed: () => Navigator.of(context).pop(true),
                ),
              ],
            ),
          ) ??
          false;

      if (confirmMarkTasksAsDone) {
        onEndTasks();
        if (context.mounted) context.go(previousRoute);
      }
    }

    return BackButtonListener(
      onBackButtonPressed: () async {
        await onBackPressed();
        return true;
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BlockBackButton(
            onPressed: onBackPressed,
            label: l10n.t("backToTaskList"),
          ),
          Material(
            child: ColoredBox(
              color: Colors.white,
              child: taskDetailsScreenData.when(
                data: (final data) => Column(
                  children: [
                    TaskTitleArea(
                      task: data.tasks.first,
                      onStartTasks: onStartTasks,
                      onEndTasks: onEndTasks,
                    ),
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
                readOnly: data.tasks.first.status == TaskStatus.DONE,
              ),
              orElse: () => const Center(child: CircularProgressIndicator()),
            ),
          ),
        ],
      ),
    );
  }
}
