import "package:tms_api/tms_api.dart";

class VehicleScreenData {
  const VehicleScreenData({
    required this.vehicle,
    required this.truck,
    required this.towables,
  });

  final Vehicle vehicle;
  final Truck truck;
  final List<Towable> towables;
}
