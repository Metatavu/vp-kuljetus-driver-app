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
      WorkEventType.AVAILABILITY => "workEventType.availability",
      WorkEventType.BREAK => "workEventType.break",
      WorkEventType.BREWERY => "workEventType.brewery",
      WorkEventType.DRIVE => "workEventType.drive",
      WorkEventType.DRIVER_CARD_INSERTED => "workEventType.driverCardInserted",
      WorkEventType.DRIVER_CARD_REMOVED => "workEventType.driverCardRemoved",
      WorkEventType.LOADING => "workEventType.loading",
      WorkEventType.DRY => "workEventType.dry",
      WorkEventType.FROZEN => "workEventType.frozen",
      WorkEventType.GREASE => "workEventType.grease",
      WorkEventType.LOGIN => "workEventType.login",
      WorkEventType.LOGOUT => "workEventType.logout",
      WorkEventType.MEAT_CELLAR => "workEventType.meatCellar",
      WorkEventType.MEIRA => "workEventType.meira",
      WorkEventType.OFFICE => "workEventType.office",
      WorkEventType.OTHER_WORK => "workEventType.otherWork",
      WorkEventType.PALTE => "workEventType.palte",
      WorkEventType.SHIFT_END => "workEventType.shiftEnd",
      WorkEventType.SHIFT_START => "workEventType.shiftStart",
      WorkEventType.UNKNOWN => "workEventType.unknown",
      WorkEventType.UNLOADING => "workEventType.unloading",
      WorkEventType.VEGETABLE => "workEventType.vegetable",
      _ => throw Exception("Unknown work event type: $workEventType")
    };
