import "dart:developer";

import "package:dio/dio.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/utils/provider_cache.dart";

part "vehicles_providers.g.dart";

@riverpod
Future<List<Vehicle>> listVehicles(
  final Ref ref, {
  final String? truckId,
  final bool? archived,
  final int? first,
  final int? max,
}) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getVehiclesApi().listVehicles(
          cancelToken: cancelToken,
          truckId: truckId,
          archived: archived,
          first: first,
          max: max,
        );

    ref.cacheFor(const Duration(minutes: 5));

    return response.data!.asList();
  } on DioException catch (error) {
    log("Failed to list vehicles: $error");
    log(error.requestOptions.toString());
    return [];
  }
}

@riverpod
class CreateVehicle extends _$CreateVehicle {
  @override
  build() async => "";

  Future<Vehicle> mutate(final Vehicle vehicle) async {
    try {
      final response = await tmsApi.getVehiclesApi().createVehicle(
            vehicle: vehicle,
          );

      ref.invalidate(
        listVehiclesProvider(
          truckId: vehicle.truckId,
          max: 1,
        ),
      );

      return response.data!;
    } on DioException catch (error) {
      log("Failed to create vehicle: $error");
      log(error.requestOptions.toString());
      rethrow;
    }
  }
}
