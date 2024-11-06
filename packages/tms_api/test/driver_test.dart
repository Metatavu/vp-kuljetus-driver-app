import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

// tests for Driver
void main() {
  final instance = DriverBuilder();
  // TODO add properties to the builder and call build()

  group(Driver, () {
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Driver display name
    // String displayName
    test('to test the property `displayName`', () async {
      // TODO
    });

    // Setting the archivedAt time marks the driver as archived. Drivers marked as archived will not appear in list requests unless archived filter is set to true. Archived driver cannot be updated, unless archivedAt is first set to null.
    // DateTime archivedAt
    test('to test the property `archivedAt`', () async {
      // TODO
    });
  });
}
