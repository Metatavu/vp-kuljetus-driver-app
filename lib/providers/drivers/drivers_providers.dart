import "dart:developer";

import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/utils/provider_cache.dart";

part "drivers_providers.g.dart";

@riverpod
Future<Driver?> findDriver(
  final FindDriverRef ref, {
  required final String driverId,
}) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getDriversApi().findDriver(
          cancelToken: cancelToken,
          driverId: driverId,
        );

    ref.cacheFor(const Duration(minutes: 5));
    return response.data!;
  } on DioException catch (error) {
    log("Failed to find driver: $error");
    log(error.requestOptions.toString());
    return null;
  }
}
