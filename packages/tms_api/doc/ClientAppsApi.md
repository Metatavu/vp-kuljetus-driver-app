# tms_api.api.ClientAppsApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createClientApp**](ClientAppsApi.md#createclientapp) | **POST** /user-management/v1/clientApps | Create a client app.


# **createClientApp**
> ClientApp createClientApp(clientApp)

Create a client app.

Creates a client app.  Client app can only be created in the status 'WAITING_FOR_APPROVAL'. If the client app with the same deviceId already exists with status other than 'WAITING_FOR_APPROVAL', the creation fails with conflict. Otherwise, the existing client app is returned with OK response. 

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getClientAppsApi();
final ClientApp clientApp = ; // ClientApp | 

try {
    final response = api.createClientApp(clientApp);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ClientAppsApi->createClientApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientApp** | [**ClientApp**](ClientApp.md)|  | 

### Return type

[**ClientApp**](ClientApp.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

