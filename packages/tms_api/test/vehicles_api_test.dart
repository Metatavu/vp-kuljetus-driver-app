import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for VehiclesApi
void main() {
  final instance = TmsApi().getVehiclesApi();

  group(VehiclesApi, () {
    // Create vehicle
    //
    // Create new vehicle. Vehicles are the history of the combinations of towables behind a truck. When a vehicle structure needs to be updated, a new vehicle with updated structure should be created. This updates the active vehicle for the truck and archives the previous one.
    //
    //Future<Vehicle> createVehicle(Vehicle vehicle) async
    test('test createVehicle', () async {
      // TODO
    });

    // Find a vehicle.
    //
    // Finds a vehicle by id.
    //
    //Future<Vehicle> findVehicle(String vehicleId) async
    test('test findVehicle', () async {
      // TODO
    });

    // List Vehicles.
    //
    // Lists Vehicles.
    //
    //Future<BuiltList<Vehicle>> listVehicles({ String truckId, bool archived, int first, int max }) async
    test('test listVehicles', () async {
      // TODO
    });
  });
}
