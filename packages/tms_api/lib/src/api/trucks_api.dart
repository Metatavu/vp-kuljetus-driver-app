//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:tms_api/src/api_util.dart';
import 'package:tms_api/src/model/error.dart';
import 'package:tms_api/src/model/truck.dart';
import 'package:tms_api/src/model/truck_drive_state.dart';
import 'package:tms_api/src/model/truck_drive_state_enum.dart';
import 'package:tms_api/src/model/truck_driver_card.dart';

class TrucksApi {
  final Dio _dio;

  final Serializers _serializers;

  const TrucksApi(this._dio, this._serializers);

  /// Find a truck.
  /// Finds a truck by id.
  ///
  /// Parameters:
  /// * [truckId] - trucks id
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Truck] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Truck>> findTruck({
    required String truckId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/vehicle-management/v1/trucks/{truckId}'.replaceAll(
        '{' r'truckId' '}',
        encodeQueryParameter(_serializers, truckId, const FullType(String))
            .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'BearerAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Truck? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(Truck),
            ) as Truck;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Truck>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// List drive states.
  /// Lists drive states for truck.
  ///
  /// Parameters:
  /// * [truckId] - truck id
  /// * [driverId] - Filter results by driver ID
  /// * [state] - Filter results by driver state
  /// * [after] - Filter results after given date-time
  /// * [before] - Filter results before given date-time
  /// * [first] - First result.
  /// * [max] - Max results.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<TruckDriveState>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<TruckDriveState>>> listDriveStates({
    required String truckId,
    String? driverId,
    BuiltList<TruckDriveStateEnum>? state,
    DateTime? after,
    DateTime? before,
    int? first,
    int? max,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/vehicle-management/v1/trucks/{truckId}/driveStates'
        .replaceAll(
            '{' r'truckId' '}',
            encodeQueryParameter(_serializers, truckId, const FullType(String))
                .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'BearerAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (driverId != null)
        r'driverId': encodeQueryParameter(
            _serializers, driverId, const FullType(String)),
      if (state != null)
        r'state': encodeCollectionQueryParameter<TruckDriveStateEnum>(
          _serializers,
          state,
          const FullType(BuiltList, [FullType(TruckDriveStateEnum)]),
          format: ListFormat.multi,
        ),
      if (after != null)
        r'after':
            encodeQueryParameter(_serializers, after, const FullType(DateTime)),
      if (before != null)
        r'before': encodeQueryParameter(
            _serializers, before, const FullType(DateTime)),
      if (first != null)
        r'first':
            encodeQueryParameter(_serializers, first, const FullType(int)),
      if (max != null)
        r'max': encodeQueryParameter(_serializers, max, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<TruckDriveState>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType:
                  const FullType(BuiltList, [FullType(TruckDriveState)]),
            ) as BuiltList<TruckDriveState>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<TruckDriveState>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Lists truck driver cards
  /// Lists truck driver cards. Used to check if a truck has a driver card inserted.
  ///
  /// Parameters:
  /// * [truckId] - truck ID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<TruckDriverCard>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<TruckDriverCard>>> listTruckDriverCards({
    required String truckId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/vehicle-management/v1/trucks/{truckId}/driverCards'
        .replaceAll(
            '{' r'truckId' '}',
            encodeQueryParameter(_serializers, truckId, const FullType(String))
                .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'BearerAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<TruckDriverCard>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType:
                  const FullType(BuiltList, [FullType(TruckDriverCard)]),
            ) as BuiltList<TruckDriverCard>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<TruckDriverCard>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// List Trucks.
  /// Lists Trucks.
  ///
  /// Parameters:
  /// * [plateNumber] - Filter results by plate number
  /// * [archived] - Filter results by archived status
  /// * [first] - First result.
  /// * [max] - Max results.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<Truck>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<Truck>>> listTrucks({
    String? plateNumber,
    bool? archived,
    int? first,
    int? max,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/vehicle-management/v1/trucks';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'BearerAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (plateNumber != null)
        r'plateNumber': encodeQueryParameter(
            _serializers, plateNumber, const FullType(String)),
      if (archived != null)
        r'archived':
            encodeQueryParameter(_serializers, archived, const FullType(bool)),
      if (first != null)
        r'first':
            encodeQueryParameter(_serializers, first, const FullType(int)),
      if (max != null)
        r'max': encodeQueryParameter(_serializers, max, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<Truck>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(BuiltList, [FullType(Truck)]),
            ) as BuiltList<Truck>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<Truck>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
