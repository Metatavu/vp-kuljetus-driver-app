import "dart:developer";

import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/utils/provider_cache.dart";

part "work_types_providers.g.dart";

@riverpod
Future<List<WorkType>> listWorkTypes(final ListWorkTypesRef ref) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getWorkTypesApi().listWorkTypes(
          cancelToken: cancelToken,
        );

    ref.cacheFor(const Duration(minutes: 5));
    return response.data?.toList() ?? [];
  } on DioException catch (error) {
    log("Failed to list work types: $error");
    log(error.requestOptions.toString());
    rethrow;
  }
}