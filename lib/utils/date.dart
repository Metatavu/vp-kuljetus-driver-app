DateTime startOfToday() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day).toUtc();
}

DateTime endOfToday() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day, 23, 59, 59, 999).toUtc();
}

String formatDateToPaddedHhMm(final DateTime date) {
  final hour = date.toLocal().hour.toString().padLeft(2, "0");
  final minute = date.toLocal().minute.toString().padLeft(2, "0");

  return "$hour:$minute";
}

String formatDurationToPaddedHhMmSs(final Duration duration) {
  final hours = duration.inHours.toString().padLeft(2, "0");
  final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, "0");
  final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, "0");

  return "$hours:$minutes:$seconds";
}

String formatDurationToPaddedHhMm(final Duration duration) {
  final hours = duration.inHours.toString().padLeft(2, "0");
  final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, "0");

  return "$hours:$minutes";
}

extension SecondsSinceEpoch on DateTime {
  int get secondsSinceEpoch =>
      toUtc().millisecondsSinceEpoch ~/ Duration.millisecondsPerSecond;
}
