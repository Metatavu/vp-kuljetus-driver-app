import "package:flutter_secure_storage/flutter_secure_storage.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";

final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

Future<void> clearStoredRefreshToken() async {
  await _secureStorage.delete(key: "auth_refresh_token");
}

Future<void> storeRefreshToken(final String refreshToken) async {
  await _secureStorage.write(key: "auth_refresh_token", value: refreshToken);
}

Future<String?> readRefreshToken() =>
    _secureStorage.read(key: "auth_refresh_token");

Future<void> storeLastSessionType(final SessionType sessionType) async {
  await store.setString("last_session_type", sessionType.name);
}

Future<SessionType?> readLastSessionType() async {
  final sessionTypeString = store.getString("last_session_type");
  if (sessionTypeString == null) return null;
  return SessionType.values.firstWhere(
    (final e) => e.name == sessionTypeString,
  );
}

Future<void> storeRefreshTokenStoringTime() async {
  await store.setInt(
    "refresh_token_stored_at",
    DateTime.now().millisecondsSinceEpoch,
  );
}

Future<void> clearRefreshTokenStoringTime() async {
  await store.remove("refresh_token_stored_at");
}

Future<int?> readRefreshTokenStoringTime() async =>
    store.getInt("refresh_token_stored_at");
