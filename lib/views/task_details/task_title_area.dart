import "package:flutter/material.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/l10n.dart";
import "package:vp_kuljetus_driver_app/views/task_details/action_button.dart";

class TaskTitleArea extends StatelessWidget {
  const TaskTitleArea({
    super.key,
    required this.task,
    required this.onStartTasks,
    required this.onEndTasks,
  });

  final Task task;
  final Function() onStartTasks;
  final Function() onEndTasks;

  @override
  Widget build(final context) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);

    final taskTypeDisplayName = l10n.t(getTaskTypeLocaleKey(task.type));

    onStartTasksPressed() async {
      final confirmed = await showDialog<bool>(
            context: context,
            builder: (final context) => AlertDialog(
              title: Text(
                "${l10n.t("start")} $taskTypeDisplayName?",
              ),
              content: Text(l10n.t("doYouWantToStartTask")),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text(l10n.t("cancel")),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text(l10n.t("start")),
                ),
              ],
            ),
          ) ??
          false;

      if (confirmed) onStartTasks();
    }

    onEndTasksPressed() async {
      final confirmed = await showDialog<bool>(
            context: context,
            builder: (final context) => AlertDialog(
              title: Text(
                "${l10n.t("end")} $taskTypeDisplayName?",
              ),
              content: Text(
                l10n.t("youCannotModifyTaskWayBillsAnymoreAfterConfirmation"),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text(l10n.t("cancel")),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text(l10n.t("checkOutAsDone")),
                ),
              ],
            ),
          ) ??
          false;

      if (confirmed) onEndTasks();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            l10n.t(getTaskTypeLocaleKey(task.type)),
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          switch (task.status) {
            TaskStatus.TODO => ActionButton(
                label: "${l10n.t("start")} $taskTypeDisplayName",
                icon: const Icon(Icons.play_arrow),
                onPressed: onStartTasksPressed,
              ),
            TaskStatus.IN_PROGRESS => ActionButton(
                label: "${l10n.t("end")} $taskTypeDisplayName",
                icon: const Icon(Icons.stop),
                backgroundColor: theme.colorScheme.error,
                onPressed: onEndTasksPressed,
              ),
            TaskStatus.DONE => ActionButton(
                label: l10n.t("done"),
                icon: const Icon(Icons.check),
                backgroundColor: Colors.black26,
                color: Colors.white,
                onPressed: null,
              ),
            _ => const SizedBox(),
          },
        ],
      ),
    );
  }
}
