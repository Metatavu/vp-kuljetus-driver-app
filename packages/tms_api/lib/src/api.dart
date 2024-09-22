//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:tms_api/src/serializers.dart';
import 'package:tms_api/src/auth/api_key_auth.dart';
import 'package:tms_api/src/auth/basic_auth.dart';
import 'package:tms_api/src/auth/bearer_auth.dart';
import 'package:tms_api/src/auth/oauth.dart';
import 'package:tms_api/src/api/drivers_api.dart';
import 'package:tms_api/src/api/freight_units_api.dart';
import 'package:tms_api/src/api/freights_api.dart';
import 'package:tms_api/src/api/public_trucks_api.dart';
import 'package:tms_api/src/api/routes_api.dart';
import 'package:tms_api/src/api/sites_api.dart';
import 'package:tms_api/src/api/tasks_api.dart';
import 'package:tms_api/src/api/towables_api.dart';
import 'package:tms_api/src/api/trucks_api.dart';
import 'package:tms_api/src/api/vehicles_api.dart';
import 'package:tms_api/src/api/work_events_api.dart';

class TmsApi {
  static const String basePath = r'http://localhost';

  final Dio dio;
  final Serializers serializers;

  TmsApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor)
              as OAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor)
              as BearerAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor)
              as BasicAuthInterceptor)
          .authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this
                  .dio
                  .interceptors
                  .firstWhere((element) => element is ApiKeyAuthInterceptor)
              as ApiKeyAuthInterceptor)
          .apiKeys[name] = apiKey;
    }
  }

  /// Get DriversApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DriversApi getDriversApi() {
    return DriversApi(dio, serializers);
  }

  /// Get FreightUnitsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FreightUnitsApi getFreightUnitsApi() {
    return FreightUnitsApi(dio, serializers);
  }

  /// Get FreightsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FreightsApi getFreightsApi() {
    return FreightsApi(dio, serializers);
  }

  /// Get PublicTrucksApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PublicTrucksApi getPublicTrucksApi() {
    return PublicTrucksApi(dio, serializers);
  }

  /// Get RoutesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RoutesApi getRoutesApi() {
    return RoutesApi(dio, serializers);
  }

  /// Get SitesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SitesApi getSitesApi() {
    return SitesApi(dio, serializers);
  }

  /// Get TasksApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TasksApi getTasksApi() {
    return TasksApi(dio, serializers);
  }

  /// Get TowablesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TowablesApi getTowablesApi() {
    return TowablesApi(dio, serializers);
  }

  /// Get TrucksApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TrucksApi getTrucksApi() {
    return TrucksApi(dio, serializers);
  }

  /// Get VehiclesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VehiclesApi getVehiclesApi() {
    return VehiclesApi(dio, serializers);
  }

  /// Get WorkEventsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WorkEventsApi getWorkEventsApi() {
    return WorkEventsApi(dio, serializers);
  }
}
