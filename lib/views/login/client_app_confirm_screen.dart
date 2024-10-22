import "package:flutter/widgets.dart";

class ConfirmClientAppScreen extends StatelessWidget {
  const ConfirmClientAppScreen({
    super.key,
    this.clientAppName,
    required this.deviceId,
  });

  final String? clientAppName;
  final String deviceId;

  @override
  Widget build(final context) => const Center(
      child: Text("Confirm client app"),
    );
}