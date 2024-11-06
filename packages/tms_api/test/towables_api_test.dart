import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for TowablesApi
void main() {
  final instance = TmsApi().getTowablesApi();

  group(TowablesApi, () {
    // Find a towable.
    //
    // Finds a towable by id.
    //
    //Future<Towable> findTowable(String towableId) async
    test('test findTowable', () async {
      // TODO
    });

    // List Towables.
    //
    // Lists Towables.
    //
    //Future<BuiltList<Towable>> listTowables({ String plateNumber, bool archived, int first, int max }) async
    test('test listTowables', () async {
      // TODO
    });
  });
}
