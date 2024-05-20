# tms_api.api.PublicTrucksApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listPublicTrucks**](PublicTrucksApi.md#listpublictrucks) | **GET** /vehicle-management/v1/publicTrucks | List PublicTrucks.


# **listPublicTrucks**
> BuiltList<PublicTruck> listPublicTrucks(vin, first, max)

List PublicTrucks.

Lists public info about each truck.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getPublicTrucksApi();
final String vin = vin_example; // String | Filter results by vin
final int first = 56; // int | First result.
final int max = 56; // int | Max results.

try {
    final response = api.listPublicTrucks(vin, first, max);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PublicTrucksApi->listPublicTrucks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **String**| Filter results by vin | [optional] 
 **first** | **int**| First result. | [optional] 
 **max** | **int**| Max results. | [optional] 

### Return type

[**BuiltList&lt;PublicTruck&gt;**](PublicTruck.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

