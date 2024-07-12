# tms_api.api.WorkTypesApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listWorkTypes**](WorkTypesApi.md#listworktypes) | **GET** /user-management/v1/workTypes | List Work Types.


# **listWorkTypes**
> BuiltList<WorkType> listWorkTypes(category)

List Work Types.

Lists Work Types.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getWorkTypesApi();
final WorkTypeCategory category = ; // WorkTypeCategory | Filter work types by category

try {
    final response = api.listWorkTypes(category);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkTypesApi->listWorkTypes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**WorkTypeCategory**](.md)| Filter work types by category | [optional] 

### Return type

[**BuiltList&lt;WorkType&gt;**](WorkType.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

