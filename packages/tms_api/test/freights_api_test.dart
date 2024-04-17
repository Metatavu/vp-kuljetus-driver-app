import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for FreightsApi
void main() {
  final instance = TmsApi().getFreightsApi();

  group(FreightsApi, () {
    // Find a freight.
    //
    // Finds a freight by id.
    //
    //Future<Freight> findFreight(String freightId) async
    test('test findFreight', () async {
      // TODO
    });

    // List Freights.
    //
    // Lists Freights.
    //
    //Future<BuiltList<Freight>> listFreights({ int first, int max }) async
    test('test listFreights', () async {
      // TODO
    });
  });
}
