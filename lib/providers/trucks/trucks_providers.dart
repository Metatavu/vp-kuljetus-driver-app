import "dart:developer";

import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/utils/provider_cache.dart";

part "trucks_providers.g.dart";

@riverpod
Future<List<PublicTruck>> listPublicTrucks(
  final ListPublicTrucksRef ref,
) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi
        .getPublicTrucksApi()
        .listPublicTrucks(cancelToken: cancelToken);

    return response.data!.asList();
  } on DioException catch (error) {
    log("Failed to list public trucks: $error");
    log(error.requestOptions.toString());
    return [];
  }
}

@riverpod
Future<Truck> findTruck(
  final FindTruckRef ref,
  final String truckId,
) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getTrucksApi().findTruck(
          cancelToken: cancelToken,
          truckId: truckId,
        );

    ref.cacheFor(const Duration(minutes: 5));

    return response.data!;
  } on DioException catch (error) {
    log("Failed to find towable: $error");
    log(error.requestOptions.toString());
    rethrow;
  }
}
