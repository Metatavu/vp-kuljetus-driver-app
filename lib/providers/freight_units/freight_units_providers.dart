import "dart:developer";

import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/utils/provider_cache.dart";

part "freight_units_providers.g.dart";

@riverpod
Future<List<FreightUnit>> listFreightUnits(
  final ListFreightUnitsRef ref, {
  required final String freightId,
}) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getFreightUnitsApi().listFreightUnits(
          cancelToken: cancelToken,
          freightId: freightId,
        );

    ref.cacheFor(const Duration(minutes: 5));
    return response.data!.asList();
  } on DioException catch (error) {
    log("Failed to list freight units: $error");
    log(error.requestOptions.toString());
    rethrow;
  }
}
