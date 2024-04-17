import 'package:test/test.dart';
import 'package:tms_api/tms_api.dart';

/// tests for SitesApi
void main() {
  final instance = TmsApi().getSitesApi();

  group(SitesApi, () {
    // Find a site.
    //
    // Finds a site by id.
    //
    //Future<Site> findSite(String siteId) async
    test('test findSite', () async {
      // TODO
    });

    // List Sites.
    //
    // Lists Sites.
    //
    //Future<BuiltList<Site>> listSites({ bool archived, int first, int max }) async
    test('test listSites', () async {
      // TODO
    });
  });
}
