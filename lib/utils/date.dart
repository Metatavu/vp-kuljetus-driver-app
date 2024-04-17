DateTime startOfToday() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day).toUtc();
}

DateTime endOfToday() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day, 23, 59, 59, 999).toUtc();
}
