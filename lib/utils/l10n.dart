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

getDriveStateLocaleKey(final TruckDriveStateEnum driveState) =>
  switch (driveState) {
    TruckDriveStateEnum.REST => "rest",
    TruckDriveStateEnum.DRIVER_AVAILABLE => "available",
    TruckDriveStateEnum.WORK => "work",
    TruckDriveStateEnum.DRIVE => "driving",
    TruckDriveStateEnum.ERROR => "driveStateError",
    TruckDriveStateEnum.NOT_AVAILABLE => "notAvailable",
    _ => throw Exception("Unknown drive state: $driveState"),
  };

getDriveStateWorkTypeKey(final TaskType? taskType, final bool isLatest) =>
  isLatest ? switch (taskType) {
    TaskType.LOAD => "stopType.loading",
    TaskType.UNLOAD => "stopType.unloading",
    _ => "stopType.other",
  } : "stopType.other";
