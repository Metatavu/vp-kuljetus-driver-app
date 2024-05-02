import "dart:async";
import "dart:convert";
import "dart:developer";
import "dart:io";

import "package:flutter_app_installer/flutter_app_installer.dart";
import "package:package_info_plus/package_info_plus.dart";
import "package:path_provider/path_provider.dart";
import "package:typed_data/typed_data.dart";
import "package:vp_kuljetus_driver_app/app/env.gen.dart";
import "package:vp_kuljetus_driver_app/updates/models/output_metadata.dart";

/// App updater
class Updater {

  String? currentVersion;
  String? serverVersion;

  /// Checks if update is available
  /// 
  /// Returns true if update is available, false otherwise
  Future<bool> isUpdateAvailable() async {
    final String currentVersion = await _getCurrentVersion();
    final String? serverVersion = await _getServerVersion();

    if (serverVersion == null) {
      log("Couldn't get server version. Skipping update check.");
      return false;
    }

    return currentVersion != serverVersion;
  }

  /// Updates the app to latest version
  Future<void> updateApp() async {
    if (Platform.isAndroid) {
      final String? version = await _getServerVersion();
      if (version == null) {
        log("Couldn't get server version. Skipping update.");
        return;
      }

      await _updateAndroidApp(version);
    } else {
      log("Attempted to invoke Updater::updateApp unsupported platform.",);
    }
  }

  /// Gets applications current version number
  Future<String> _getCurrentVersion() async {
    if (currentVersion == null) {
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      currentVersion = packageInfo.version;
    }

    return currentVersion!;
  }

  /// Gets latest version from the server
  Future<String?> _getServerVersion() async {
    if (serverVersion != null) {
      return serverVersion;
    }

    try {
      log("Checking version available on server...");
      if (Platform.isAndroid) {
        serverVersion = await _getAndroidServerVersion();
      } else {
        log("Platform not supported for version updates.");
      }
    } catch (exception) {
      log("Couldn't get version from server: $exception");
    }
    
    return serverVersion;
  }

  /// Gets latest Android version from the server
  Future<String?> _getAndroidServerVersion() async {
    final Int8Buffer fileContent = await _doRequest("/android/output-metadata.json");
    final OutputMetadata outputMetadata =
        OutputMetadata.fromJson(jsonDecode(utf8.decode(fileContent)));
    final String? foundVersion = outputMetadata.elements.firstOrNull?.versionName;

    return foundVersion;
  }

  /// Updates the Android app to [version]
  Future<void> _updateAndroidApp(final String version) async {
    log("Downloading new version...");
    final Int8Buffer fileContent = await _doRequest("/android/$version/app-release.apk");
    final String? storageDir = (await getExternalStorageDirectory())?.absolute.path;
    final File apkFile = File("$storageDir/fi.metatavu.noheva_visitor_ui.apk");

    log("Creating new .apk file...");

    if (await apkFile.exists()) {
      await apkFile.delete();
    }
    await apkFile.create();

    log("Writing content to the .apk file...");
    await apkFile.writeAsBytes(fileContent);

    log("Installing the new .apk file...");

    final FlutterAppInstaller appInstaller = FlutterAppInstaller();
    await appInstaller.installApk(
      filePath: apkFile.path,
      silently: false,
    );

    log("Installed!");
  }

  /// Does HTTP request to given [url] and return the response as ByteArray
  Future<Int8Buffer> _doRequest(final String url) async {
    final Uri uri = Uri.parse((Env.updatesUrl + url).replaceAll("\n", ""));
    final HttpClient httpClient = HttpClient();
    final HttpClientRequest request = await httpClient.getUrl(uri);
    final HttpClientResponse response = await request.close();

    return _readResponseToBytes(response);
  }

  /// Reads [response] to bytes and awaits for it to be ready.
  Future<Int8Buffer> _readResponseToBytes(final HttpClientResponse response) {
    final completer = Completer<Int8Buffer>();
    final byteBuffer = Int8Buffer();
    response.listen(byteBuffer.addAll,
        onDone: () => completer.complete(byteBuffer),);

    return completer.future;
  }

}
