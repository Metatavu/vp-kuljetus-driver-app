import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for TrucksApi
void main() {
  final instance = TmsApi().getTrucksApi();

  group(TrucksApi, () {
    // Find a truck.
    //
    // Finds a truck by id.
    //
    //Future<Truck> findTruck(String truckId) async
    test('test findTruck', () async {
      // TODO
    });

    // List drive states.
    //
    // Lists drive states for truck.
    //
    //Future<BuiltList<TruckDriveState>> listDriveStates(String truckId, { String driverId, BuiltList<TruckDriveStateEnum> state, DateTime after, DateTime before, int first, int max }) async
    test('test listDriveStates', () async {
      // TODO
    });

    // Lists truck driver cards
    //
    // Lists truck driver cards. Used to check if a truck has a driver card inserted.
    //
    //Future<BuiltList<TruckDriverCard>> listTruckDriverCards(String truckId) async
    test('test listTruckDriverCards', () async {
      // TODO
    });

    // List Trucks.
    //
    // Lists Trucks.
    //
    //Future<BuiltList<Truck>> listTrucks({ String plateNumber, bool archived, TruckSortByField sortBy, SortOrder sortDirection, int first, int max }) async
    test('test listTrucks', () async {
      // TODO
    });
  });
}
