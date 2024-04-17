import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for DriversApi
void main() {
  final instance = TmsApi().getDriversApi();

  group(DriversApi, () {
    // Find a driver.
    //
    // Finds a driver by id.
    //
    //Future<Driver> findDriver(String driverId) async
    test('test findDriver', () async {
      // TODO
    });
  });
}
