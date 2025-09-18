import "package:android_id/android_id.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "device_id_provider.g.dart";

@riverpod
Future<String?> getDeviceId(final Ref ref) async {
  final String? deviceId = await AndroidId().getId();
  return deviceId;
}
