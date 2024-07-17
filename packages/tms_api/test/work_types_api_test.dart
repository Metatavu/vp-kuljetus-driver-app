import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for WorkTypesApi
void main() {
  final instance = TmsApi().getWorkTypesApi();

  group(WorkTypesApi, () {
    // List Work Types.
    //
    // Lists Work Types.
    //
    //Future<BuiltList<WorkType>> listWorkTypes({ WorkTypeCategory category }) async
    test('test listWorkTypes', () async {
      // TODO
    });
  });
}
