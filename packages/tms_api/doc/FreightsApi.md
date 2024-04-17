# tms_api.api.FreightsApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findFreight**](FreightsApi.md#findfreight) | **GET** /delivery-info/v1/freights/{freightId} | Find a freight.
[**listFreights**](FreightsApi.md#listfreights) | **GET** /delivery-info/v1/freights | List Freights.


# **findFreight**
> Freight findFreight(freightId)

Find a freight.

Finds a freight by id.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getFreightsApi();
final String freightId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | freight id

try {
    final response = api.findFreight(freightId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FreightsApi->findFreight: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **freightId** | **String**| freight id | 

### Return type

[**Freight**](Freight.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFreights**
> BuiltList<Freight> listFreights(first, max)

List Freights.

Lists Freights.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getFreightsApi();
final int first = 56; // int | First result.
final int max = 56; // int | Max results.

try {
    final response = api.listFreights(first, max);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FreightsApi->listFreights: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first** | **int**| First result. | [optional] 
 **max** | **int**| Max results. | [optional] 

### Return type

[**BuiltList&lt;Freight&gt;**](Freight.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

