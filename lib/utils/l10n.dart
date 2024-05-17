import "package:tms_api/tms_api.dart";

getTaskTypeLocaleKey(final TaskType taskType) => switch (taskType) {
      TaskType.LOAD => "load",
      TaskType.UNLOAD => "unload",
      _ => throw Exception("Unknown task type: $taskType")
    };

getTowableTypeLocaleKey(final TowableTypeEnum towableType) =>
    switch (towableType) {
      TowableTypeEnum.TRAILER => "trailer",
      TowableTypeEnum.SEMI_TRAILER => "semitrailer",
      TowableTypeEnum.DOLLY => "dolly",
      _ => throw Exception("Unknown towable type: $towableType")
    };
