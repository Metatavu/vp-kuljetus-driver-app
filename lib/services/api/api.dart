import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/app/env.gen.dart";

late final TmsApi tmsApi;

initTmsApi() {
  tmsApi = TmsApi(basePathOverride: Env.apiBaseUrl);
  tmsApi.dio.options.connectTimeout = const Duration(seconds: 10);
  tmsApi.dio.options.receiveTimeout = const Duration(seconds: 10);
  tmsApi.setApiKey("X-API-Key", Env.);
}
