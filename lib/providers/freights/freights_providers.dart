import "dart:developer";

import "package:dio/dio.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/utils/provider_cache.dart";

part "freights_providers.g.dart";

@riverpod
Future<Freight> findFreight(
  final Ref ref, {
  required final String freightId,
}) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getFreightsApi().findFreight(
          cancelToken: cancelToken,
          freightId: freightId,
        );

    ref.cacheFor(const Duration(minutes: 5));
    return response.data!;
  } on DioException catch (error) {
    log("Failed to find freight: $error");
    log(error.requestOptions.toString());
    rethrow;
  }
}
