# tms_api.api.DriversApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findDriver**](DriversApi.md#finddriver) | **GET** /user-management/v1/drivers/{driverId} | Find a driver.


# **findDriver**
> Driver findDriver(driverId)

Find a driver.

Finds a driver by id.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getDriversApi();
final String driverId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | driver's id

try {
    final response = api.findDriver(driverId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DriversApi->findDriver: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **driverId** | **String**| driver's id | 

### Return type

[**Driver**](Driver.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

