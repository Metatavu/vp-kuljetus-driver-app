import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for PublicTrucksApi
void main() {
  final instance = TmsApi().getPublicTrucksApi();

  group(PublicTrucksApi, () {
    // List PublicTrucks.
    //
    // Lists public info about each truck.
    //
    //Future<BuiltList<PublicTruck>> listPublicTrucks({ int first, int max }) async
    test('test listPublicTrucks', () async {
      // TODO
    });
  });
}
