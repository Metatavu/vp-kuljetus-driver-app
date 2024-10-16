import "dart:io";

import "package:android_id/android_id.dart";
import "package:device_info_plus/device_info_plus.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:package_info_plus/package_info_plus.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";

class ClientAppScreen extends HookConsumerWidget {
  const ClientAppScreen({super.key});

  Future<ClientApp> constructClientApp() async {
    if (!Platform.isAndroid) {
      throw UnimplementedError("This feature is only available on Android devices.");
    }

    final packageInfo = await PackageInfo.fromPlatform();
    final appVersion = packageInfo.version;
    final deviceId = await const AndroidId().getId();
    final osVersion = (await DeviceInfoPlugin().androidInfo).version.release;
    final clientAppMetatadataBuilder = ClientAppMetadataBuilder()
      ..deviceOSVersion = osVersion
      ..appVersion = appVersion
      ..deviceOS = ClientAppMetadataDeviceOSEnum.ANDROID;
    return ClientApp((final builder) =>
      builder
        ..deviceId = deviceId
        ..status = ClientAppStatus.WAITING_FOR_APPROVAL
        ..metadata = clientAppMetatadataBuilder,
    );
  }

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);

    final clientAppPairingHelper = useState("");

    Future<void> onCreateClientAppPressed() async {
      try {
        final clientApp = await constructClientApp();
        final createdClientApp = (await tmsApi.getClientAppsApi().createClientApp(clientApp: clientApp)).data;
        print("Created client app: $createdClientApp");
        clientAppPairingHelper.value = createdClientApp?.deviceId.substring(0, 3) ?? "";
      } catch (error) {
        print("Error while getting device info: $error");
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          l10n.t("clientApp"),
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        const Text("Laitetta ei ole vielä otettu käyttöön."),
        const SizedBox(height: 16),
        Text(
          clientAppPairingHelper.value,
          style: theme.textTheme.titleLarge,
        ),
        ElevatedButton(
          onPressed: onCreateClientAppPressed,
          child: const Text("Ota laite käyttöön"),
        ),
      ],
    );
  }
}