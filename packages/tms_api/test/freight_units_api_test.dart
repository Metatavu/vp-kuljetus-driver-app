import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for FreightUnitsApi
void main() {
  final instance = TmsApi().getFreightUnitsApi();

  group(FreightUnitsApi, () {
    // Create freight unit
    //
    // Create new freight unit
    //
    //Future<FreightUnit> createFreightUnit(FreightUnit freightUnit) async
    test('test createFreightUnit', () async {
      // TODO
    });

    // Find a freight unit.
    //
    // Finds a freight unit by id.
    //
    //Future<FreightUnit> findFreightUnit(String freightUnitId) async
    test('test findFreightUnit', () async {
      // TODO
    });

    // List FreightUnits.
    //
    // Lists FreightUnits.
    //
    //Future<BuiltList<FreightUnit>> listFreightUnits({ String freightId, int first, int max }) async
    test('test listFreightUnits', () async {
      // TODO
    });

    // Updates freight unit
    //
    // Updates single freight unit
    //
    //Future<FreightUnit> updateFreightUnit(String freightUnitId, FreightUnit freightUnit) async
    test('test updateFreightUnit', () async {
      // TODO
    });
  });
}
