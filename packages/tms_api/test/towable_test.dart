import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

// tests for Towable
void main() {
  final instance = TowableBuilder();
  // TODO add properties to the builder and call build()

  group(Towable, () {
    // String plateNumber
    test('to test the property `plateNumber`', () async {
      // TODO
    });

    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // Towable identification number. This is unique for each towable and should be used as a hardware identifier for this specific towable.
    // String vin
    test('to test the property `vin`', () async {
      // TODO
    });

    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // String creatorId
    test('to test the property `creatorId`', () async {
      // TODO
    });

    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // String lastModifierId
    test('to test the property `lastModifierId`', () async {
      // TODO
    });

    // DateTime modifiedAt
    test('to test the property `modifiedAt`', () async {
      // TODO
    });

    // Setting the archivedAt time marks the towable as archived. Towables marked as archived will not appear in list requests unless archived filter is set to true. Archived towable cannot be updated, unless archivedAt is first set to null.
    // DateTime archivedAt
    test('to test the property `archivedAt`', () async {
      // TODO
    });
  });
}
