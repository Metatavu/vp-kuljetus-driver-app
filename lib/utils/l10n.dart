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
    switch (taskType) {
      TaskType.LOAD => "stopType.loading",
      TaskType.UNLOAD => "stopType.unloading",
      _ => "stopType.other",
    };

getWorkEventTypeKey(final WorkEventType workEventType) =>
    switch (workEventType) {
      WorkEventType.BREAK => "workEventType.break",
      WorkEventType.VEGETABLE => "workEventType.vegetable",
      WorkEventType.PALTE => "workEventType.palte",
      WorkEventType.MEIRA => "workEventType.meira",
      WorkEventType.BREWERY => "workEventType.brewery",
      WorkEventType.DRY => "workEventType.dry",
      WorkEventType.MEAT_CELLAR => "workEventType.meatCellar",
      WorkEventType.FROZEN => "workEventType.frozen",
      WorkEventType.GREASE => "workEventType.grease",
      WorkEventType.OTHER_WORK => "workEventType.otherWork",
      WorkEventType.LOGIN => "workEventType.login",
      WorkEventType.LOGOUT => "workEventType.logout",
      WorkEventType.SHIFT_START => "workEventType.shiftStart",
      WorkEventType.SHIFT_END => "workEventType.shiftEnd",
      WorkEventType.OFFICE => "workEventType.office",
      _ => throw Exception("Unknown work event type: $workEventType")
    };
