import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

// tests for Vehicle
void main() {
  final instance = VehicleBuilder();
  // TODO add properties to the builder and call build()

  group(Vehicle, () {
    // Truck that towing the vehicle
    // String truckId
    test('to test the property `truckId`', () async {
      // TODO
    });

    // List of attached towables to vehicle. Order of towables should reflect the order of towables in the vehicle where first towable is the closest to the truck.
    // BuiltList<String> towableIds
    test('to test the property `towableIds`', () async {
      // TODO
    });

    // String id
    test('to test the property `id`', () async {
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

    // Setting the archivedAt time marks the vehicle as archived. Vehicles marked as archived will not appear in list requests unless archived filter is set to true. Archived vehicle cannot be updated, unless archivedAt is first set to null.
    // DateTime archivedAt
    test('to test the property `archivedAt`', () async {
      // TODO
    });
  });
}
