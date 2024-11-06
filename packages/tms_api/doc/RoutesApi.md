# tms_api.api.RoutesApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findRoute**](RoutesApi.md#findroute) | **GET** /work-planning/v1/routes/{routeId} | Find a route.
[**listRoutes**](RoutesApi.md#listroutes) | **GET** /work-planning/v1/routes | List Routes.
[**updateRoute**](RoutesApi.md#updateroute) | **PUT** /work-planning/v1/routes/{routeId} | Updates routes


# **findRoute**
> Route findRoute(routeId)

Find a route.

Finds a route by id.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getRoutesApi();
final String routeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | routes id

try {
    final response = api.findRoute(routeId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RoutesApi->findRoute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **String**| routes id | 

### Return type

[**Route**](Route.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRoutes**
> BuiltList<Route> listRoutes(truckId, driverId, departureAfter, departureBefore, first, max)

List Routes.

Lists Routes.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getRoutesApi();
final String truckId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter results by truck id
final String driverId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter results by driver id
final DateTime departureAfter = 2013-10-20T19:20:30+01:00; // DateTime | Filter results by departure time same or after this time
final DateTime departureBefore = 2013-10-20T19:20:30+01:00; // DateTime | Filter results by departure time before this time
final int first = 56; // int | First result.
final int max = 56; // int | Max results.

try {
    final response = api.listRoutes(truckId, driverId, departureAfter, departureBefore, first, max);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RoutesApi->listRoutes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **truckId** | **String**| Filter results by truck id | [optional] 
 **driverId** | **String**| Filter results by driver id | [optional] 
 **departureAfter** | **DateTime**| Filter results by departure time same or after this time | [optional] 
 **departureBefore** | **DateTime**| Filter results by departure time before this time | [optional] 
 **first** | **int**| First result. | [optional] 
 **max** | **int**| Max results. | [optional] 

### Return type

[**BuiltList&lt;Route&gt;**](Route.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRoute**
> Route updateRoute(routeId, route)

Updates routes

Updates single route

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getRoutesApi();
final String routeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | route id
final Route route = ; // Route | Payload

try {
    final response = api.updateRoute(routeId, route);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RoutesApi->updateRoute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **String**| route id | 
 **route** | [**Route**](Route.md)| Payload | 

### Return type

[**Route**](Route.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

