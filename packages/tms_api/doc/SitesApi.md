# tms_api.api.SitesApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSite**](SitesApi.md#findsite) | **GET** /delivery-info/v1/sites/{siteId} | Find a site.
[**listSites**](SitesApi.md#listsites) | **GET** /delivery-info/v1/sites | List Sites.


# **findSite**
> Site findSite(siteId)

Find a site.

Finds a site by id.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getSitesApi();
final String siteId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | site id

try {
    final response = api.findSite(siteId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SitesApi->findSite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| site id | 

### Return type

[**Site**](Site.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSites**
> BuiltList<Site> listSites(archived, first, max)

List Sites.

Lists Sites.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getSitesApi();
final bool archived = true; // bool | Filter sites by archived status
final int first = 56; // int | First result.
final int max = 56; // int | Max results.

try {
    final response = api.listSites(archived, first, max);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SitesApi->listSites: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **archived** | **bool**| Filter sites by archived status | [optional] 
 **first** | **int**| First result. | [optional] 
 **max** | **int**| Max results. | [optional] 

### Return type

[**BuiltList&lt;Site&gt;**](Site.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

