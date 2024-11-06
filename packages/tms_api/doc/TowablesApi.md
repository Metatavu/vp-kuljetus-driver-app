# tms_api.api.TowablesApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findTowable**](TowablesApi.md#findtowable) | **GET** /vehicle-management/v1/towables/{towableId} | Find a towable.
[**listTowables**](TowablesApi.md#listtowables) | **GET** /vehicle-management/v1/towables | List Towables.


# **findTowable**
> Towable findTowable(towableId)

Find a towable.

Finds a towable by id.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getTowablesApi();
final String towableId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | towables id

try {
    final response = api.findTowable(towableId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TowablesApi->findTowable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **towableId** | **String**| towables id | 

### Return type

[**Towable**](Towable.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTowables**
> BuiltList<Towable> listTowables(plateNumber, archived, first, max)

List Towables.

Lists Towables.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getTowablesApi();
final String plateNumber = plateNumber_example; // String | Filter results by plate number
final bool archived = true; // bool | Filter results by archived status
final int first = 56; // int | First result.
final int max = 56; // int | Max results.

try {
    final response = api.listTowables(plateNumber, archived, first, max);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TowablesApi->listTowables: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plateNumber** | **String**| Filter results by plate number | [optional] 
 **archived** | **bool**| Filter results by archived status | [optional] 
 **first** | **int**| First result. | [optional] 
 **max** | **int**| Max results. | [optional] 

### Return type

[**BuiltList&lt;Towable&gt;**](Towable.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

