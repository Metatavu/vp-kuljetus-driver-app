import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/models/views/vehicle_screen.dart";
import "package:vp_kuljetus_driver_app/providers/towables/towables_providers.dart";
import "package:vp_kuljetus_driver_app/providers/trucks/trucks_providers.dart";
import "package:vp_kuljetus_driver_app/providers/vehicles/vehicles_providers.dart";

part "vehicle_screen_providers.g.dart";

@riverpod
Future<VehicleScreenData> fetchVehicleScreenData(
  final FetchVehicleScreenDataRef ref,
  final String truckId,
) async {
  final data = await Future.wait([
    ref.watch(findTruckProvider(truckId).future),
    ref
        .watch(listVehiclesProvider(truckId: truckId, max: 1).future)
        .then((final value) => value.first),
    ref.watch(listTowablesProvider().future),
  ]);

  return VehicleScreenData(
    truck: data[0] as Truck,
    vehicle: data[1] as Vehicle,
    towables: data[2] as List<Towable>,
  );
}
