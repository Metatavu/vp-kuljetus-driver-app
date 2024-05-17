import "dart:developer";

import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/utils/provider_cache.dart";

part "towables_providers.g.dart";

@riverpod
Future<List<Towable>> listTowables(
  final ListTowablesRef ref, {
  final String? plateNumber,
  final bool? archived,
  final int? first,
  final int? max,
}) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getTowablesApi().listTowables(
          cancelToken: cancelToken,
          plateNumber: plateNumber,
          archived: archived,
          first: first,
          max: max,
        );

    return response.data!.asList();
  } on DioException catch (error) {
    log("Failed to list towables: $error");
    log(error.requestOptions.toString());
    return [];
  }
}

@riverpod
Future<Towable> findTowable(
  final FindTowableRef ref,
  final String towableId,
) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getTowablesApi().findTowable(
          cancelToken: cancelToken,
          towableId: towableId,
        );

    ref.cacheFor(const Duration(minutes: 5));

    return response.data!;
  } on DioException catch (error) {
    log("Failed to find towable: $error");
    log(error.requestOptions.toString());
    rethrow;
  }
}
