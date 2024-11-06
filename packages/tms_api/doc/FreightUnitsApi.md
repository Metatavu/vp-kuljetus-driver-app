# tms_api.api.FreightUnitsApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFreightUnit**](FreightUnitsApi.md#createfreightunit) | **POST** /delivery-info/v1/freightUnits | Create freight unit
[**findFreightUnit**](FreightUnitsApi.md#findfreightunit) | **GET** /delivery-info/v1/freightUnits/{freightUnitId} | Find a freight unit.
[**listFreightUnits**](FreightUnitsApi.md#listfreightunits) | **GET** /delivery-info/v1/freightUnits | List FreightUnits.
[**updateFreightUnit**](FreightUnitsApi.md#updatefreightunit) | **PUT** /delivery-info/v1/freightUnits/{freightUnitId} | Updates freight unit


# **createFreightUnit**
> FreightUnit createFreightUnit(freightUnit)

Create freight unit

Create new freight unit

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getFreightUnitsApi();
final FreightUnit freightUnit = ; // FreightUnit | Payload

try {
    final response = api.createFreightUnit(freightUnit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FreightUnitsApi->createFreightUnit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **freightUnit** | [**FreightUnit**](FreightUnit.md)| Payload | 

### Return type

[**FreightUnit**](FreightUnit.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findFreightUnit**
> FreightUnit findFreightUnit(freightUnitId)

Find a freight unit.

Finds a freight unit by id.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getFreightUnitsApi();
final String freightUnitId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | freight unit id

try {
    final response = api.findFreightUnit(freightUnitId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FreightUnitsApi->findFreightUnit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **freightUnitId** | **String**| freight unit id | 

### Return type

[**FreightUnit**](FreightUnit.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFreightUnits**
> BuiltList<FreightUnit> listFreightUnits(freightId, first, max)

List FreightUnits.

Lists FreightUnits.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getFreightUnitsApi();
final String freightId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Freight id
final int first = 56; // int | First result.
final int max = 56; // int | Max results.

try {
    final response = api.listFreightUnits(freightId, first, max);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FreightUnitsApi->listFreightUnits: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **freightId** | **String**| Freight id | [optional] 
 **first** | **int**| First result. | [optional] 
 **max** | **int**| Max results. | [optional] 

### Return type

[**BuiltList&lt;FreightUnit&gt;**](FreightUnit.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFreightUnit**
> FreightUnit updateFreightUnit(freightUnitId, freightUnit)

Updates freight unit

Updates single freight unit

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getFreightUnitsApi();
final String freightUnitId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | freight unit id
final FreightUnit freightUnit = ; // FreightUnit | Payload

try {
    final response = api.updateFreightUnit(freightUnitId, freightUnit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FreightUnitsApi->updateFreightUnit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **freightUnitId** | **String**| freight unit id | 
 **freightUnit** | [**FreightUnit**](FreightUnit.md)| Payload | 

### Return type

[**FreightUnit**](FreightUnit.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

