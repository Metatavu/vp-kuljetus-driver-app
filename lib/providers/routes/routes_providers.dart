import "dart:developer";

import "package:dio/dio.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tms_api/tms_api.dart" hide Date;
import "package:vp_kuljetus_driver_app/services/api/api.dart";
import "package:vp_kuljetus_driver_app/utils/provider_cache.dart";

part "routes_providers.g.dart";

@riverpod
Future<List<Route>> listRoutes(
  final ListRoutesRef ref, {
  final String? truckId,
  final String? driverId,
  final DateTime? departureAfter,
  final DateTime? departureBefore,
  final int? first,
  final int? max,
}) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getRoutesApi().listRoutes(
          cancelToken: cancelToken,
          truckId: truckId,
          driverId: driverId,
          departureAfter: departureAfter,
          departureBefore: departureBefore,
          first: first,
          max: max,
        );

    return response.data!.asList();
  } on DioException catch (error) {
    log("Failed to list routes: $error");
    log(error.requestOptions.toString());
    return [];
  }
}

@riverpod
Future<Route> findRoute(
  final FindRouteRef ref, {
  required final String routeId,
}) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  try {
    final response = await tmsApi.getRoutesApi().findRoute(
          cancelToken: cancelToken,
          routeId: routeId,
        );

    ref.cacheFor(const Duration(minutes: 5));

    return response.data!;
  } on DioException catch (error) {
    log("Failed to find route: $error");
    log(error.requestOptions.toString());
    rethrow;
  }
}
