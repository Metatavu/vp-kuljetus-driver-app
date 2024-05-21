import "package:flutter/material.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/utils/l10n.dart";
import "package:vp_kuljetus_driver_app/views/task_details/action_button.dart";

class TaskTitleArea extends StatelessWidget {
  const TaskTitleArea({super.key, required this.task});

  final Task task;

  @override
  Widget build(final context) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);

    final localizedTaskType = l10n.t(getTaskTypeLocaleKey(task.type));

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
          if (task.status == TaskStatus.TODO)
            ActionButton(
              label: "${l10n.t("start")} ${localizedTaskType.toLowerCase()}",
              icon: const Icon(Icons.play_arrow),
              onPressed: () {},
            ),
          if (task.status == TaskStatus.IN_PROGRESS)
            ActionButton(
              label: "${l10n.t("end")} ${localizedTaskType.toLowerCase()}",
              icon: const Icon(Icons.stop),
              backgroundColor: Theme.of(context).colorScheme.error,
              onPressed: () {},
            ),
        ],
      ),
    );
  }
}
