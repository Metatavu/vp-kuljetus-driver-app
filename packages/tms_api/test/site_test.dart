import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

// tests for Site
void main() {
  final instance = SiteBuilder();
  // TODO add properties to the builder and call build()

  group(Site, () {
    // Site name
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Site location as well-known text Point
    // String location
    test('to test the property `location`', () async {
      // TODO
    });

    // Address of the site
    // String address
    test('to test the property `address`', () async {
      // TODO
    });

    // Postal code of the site
    // String postalCode
    test('to test the property `postalCode`', () async {
      // TODO
    });

    // Locality of the site
    // String locality
    test('to test the property `locality`', () async {
      // TODO
    });

    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // additional information about the site, e.g. delivery instructions. This is shown in the task for the driver.
    // String additionalInfo
    test('to test the property `additionalInfo`', () async {
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

    // Setting the archivedAt time marks the site as archived. Sites marked as archived will not appear in list requests unless archived filter is set to true. Archived site cannot be updated, unless archivedAt is first set to null.
    // DateTime archivedAt
    test('to test the property `archivedAt`', () async {
      // TODO
    });
  });
}
