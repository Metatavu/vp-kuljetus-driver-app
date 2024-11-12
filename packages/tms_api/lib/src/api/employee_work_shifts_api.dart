//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:tms_api/src/api_util.dart';
import 'package:tms_api/src/model/employee_work_shift.dart';
import 'package:tms_api/src/model/error.dart';

class EmployeeWorkShiftsApi {
  final Dio _dio;

  final Serializers _serializers;

  const EmployeeWorkShiftsApi(this._dio, this._serializers);

  /// List Employees Work Shifts.
  /// Lists Employees work Shifts. Sort by time, latest first.  Employees can only see their own work shifts. Managers can see all employees&#39; work shifts.
  ///
  /// Parameters:
  /// * [employeeId] - employee's ID
  /// * [startedAfter] - Filter work shifts started after specified date.
  /// * [startedBefore] - Filter work shifts started before specified date.
  /// * [first] - First result.
  /// * [max] - Max results.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<EmployeeWorkShift>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<EmployeeWorkShift>>> listEmployeeWorkShifts({
    required String employeeId,
    DateTime? startedAfter,
    DateTime? startedBefore,
    int? first = 0,
    int? max = 10,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/user-management/v1/employees/{employeeId}/workShifts'
        .replaceAll(
            '{' r'employeeId' '}',
            encodeQueryParameter(
                    _serializers, employeeId, const FullType(String))
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
      if (startedAfter != null)
        r'startedAfter': encodeQueryParameter(
            _serializers, startedAfter, const FullType(DateTime)),
      if (startedBefore != null)
        r'startedBefore': encodeQueryParameter(
            _serializers, startedBefore, const FullType(DateTime)),
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

    BuiltList<EmployeeWorkShift>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType:
                  const FullType(BuiltList, [FullType(EmployeeWorkShift)]),
            ) as BuiltList<EmployeeWorkShift>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<EmployeeWorkShift>>(
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
