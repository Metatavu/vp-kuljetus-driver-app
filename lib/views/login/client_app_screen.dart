import "dart:developer";
import "dart:io";

import "package:android_id/android_id.dart";
import "package:device_info_plus/device_info_plus.dart";
import "package:dio/dio.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:go_router/go_router.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:package_info_plus/package_info_plus.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/app/env.gen.dart";
import "package:vp_kuljetus_driver_app/providers/device/device_id_provider.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/services/localization/l10n.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";

class ClientAppScreen extends HookConsumerWidget {
  const ClientAppScreen({super.key});

  @override
  Widget build(final context, final ref) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);

    final textEditingController = useTextEditingController();
    final deviceIdProvider = ref.watch(getDeviceIdProvider);

    Future<ClientApp> constructClientApp() async {
      if (!Platform.isAndroid) {
        throw UnimplementedError(
          "This feature is only available on Android devices.",
        );
      }

      final packageInfo = await PackageInfo.fromPlatform();
      final appVersion = packageInfo.version;
      final deviceId = await const AndroidId().getId();
      final osVersion = (await DeviceInfoPlugin().androidInfo).version.release;
      final clientAppMetatadataBuilder = ClientAppMetadataBuilder()
        ..deviceOSVersion = osVersion
        ..appVersion = appVersion
        ..deviceOS = ClientAppMetadataDeviceOSEnum.ANDROID;

      return ClientApp(
        (final builder) => builder
          ..deviceId = deviceId
          ..status = ClientAppStatus.WAITING_FOR_APPROVAL
          ..name = textEditingController.text
          ..metadata = clientAppMetatadataBuilder,
      );
    }

    String getDeviceIdentifier() {
      final deviceId = deviceIdProvider.value;
      if (deviceId == null) {
        return "";
      }

      final idLength = deviceId.length;

      if (idLength < 4) {
        return deviceId;
      }

      return deviceId.substring(idLength - 4);
    }

    Future<void> onCreateClientAppPressed(final BuildContext context) async {
      try {
        final clientApp = await constructClientApp();
        tmsApi.dio.options.headers["X-DriverApp-API-Key"] = Env.apiKey;
        ClientApp? createdClientApp;

        String errorMessage = l10n.t("failed_to_register_client_app");
        try {
          createdClientApp = (await tmsApi.getClientAppsApi().createClientApp(
            clientApp: clientApp,
          )).data;
        } on DioException catch (error) {
          if (error.response?.statusCode == 409) {
            errorMessage = l10n.t(
              "client_app_already_registered",
              variables: {"deviceId": getDeviceIdentifier()},
            );
          }
        } catch (error) {
          log("Error while creating client app: $error");
        }

        if (createdClientApp == null) {
          log("Failed to create client app");

          if (context.mounted) {
            await showDialog(
              context: context,
              builder: (final ctx) => AlertDialog(
                title: Text(l10n.t("error")),
                content: Text(errorMessage),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(ctx).pop(),
                    child: const Text("OK"),
                  ),
                ],
              ),
            );
          }
          return;
        }

        await setClientAppCreated(true);

        if (!context.mounted) return;

        context.goNamed(
          "confirmClientApp",
          pathParameters: {"deviceId": createdClientApp.deviceId},
          queryParameters: {"clientAppName": createdClientApp.name},
        );
      } catch (error) {
        log("Error while getting device info: $error");
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(l10n.t("registerClientApp"), style: theme.textTheme.titleLarge),
        const SizedBox(height: 16),
        Text(
          l10n.t("registerClientAppHelper"),
          style: theme.textTheme.bodySmall,
        ),
        const SizedBox(height: 5),
        Text(
          "${l10n.t("clientAppIdentifier")}: ${getDeviceIdentifier()}",
          style: theme.textTheme.bodySmall,
        ),
        const SizedBox(height: 16),
        TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            labelText: l10n.t("clientAppName"),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 8,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: const Color(0xFFF2F2F2),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () => onCreateClientAppPressed(context),
          child: Text(l10n.t("registerClientApp")),
        ),
      ],
    );
  }
}
