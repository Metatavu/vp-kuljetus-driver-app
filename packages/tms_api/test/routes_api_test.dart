import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for RoutesApi
void main() {
  final instance = TmsApi().getRoutesApi();

  group(RoutesApi, () {
    // Find a route.
    //
    // Finds a route by id.
    //
    //Future<Route> findRoute(String routeId) async
    test('test findRoute', () async {
      // TODO
    });

    // List Routes.
    //
    // Lists Routes.
    //
    //Future<BuiltList<Route>> listRoutes({ String truckId, String driverId, DateTime departureAfter, DateTime departureBefore, int first, int max }) async
    test('test listRoutes', () async {
      // TODO
    });

    // Updates routes
    //
    // Updates single route
    //
    //Future<Route> updateRoute(String routeId, Route route) async
    test('test updateRoute', () async {
      // TODO
    });
  });
}
