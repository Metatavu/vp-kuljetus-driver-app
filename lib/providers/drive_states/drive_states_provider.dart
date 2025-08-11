import "dart:developer";

import "package:dio/dio.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart";
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/utils/provider_cache.dart";

part "drive_states_provider.g.dart";

@riverpod
Future<List<TruckDriveState>> listDriveStates(
  final Ref ref, {
  required final String truckId,
  final String? driverId,
  final DateTime? after,
}) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getTrucksApi().listDriveStates(
          truckId: truckId,
          after: after,
          driverId: driverId,
        );

    ref.cacheFor(const Duration(minutes: 1));

    return response.data!.asList();
  } on DioException catch (error) {
    log("Failed to list drive states: $error");
    log(error.requestOptions.toString());

    return [];
  }
}
