import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for ClientAppsApi
void main() {
  final instance = TmsApi().getClientAppsApi();

  group(ClientAppsApi, () {
    // Create a client app.
    //
    // Creates a client app.  Client app can only be created in the status 'WAITING_FOR_APPROVAL'. If the client app with the same deviceId already exists with status other than 'WAITING_FOR_APPROVAL', the creation fails with conflict. Otherwise, the existing client app is returned with OK response.
    //
    //Future<ClientApp> createClientApp(ClientApp clientApp) async
    test('test createClientApp', () async {
      // TODO
    });
  });
}
