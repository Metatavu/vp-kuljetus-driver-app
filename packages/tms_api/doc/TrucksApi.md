# tms_api.api.TrucksApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findTruck**](TrucksApi.md#findtruck) | **GET** /vehicle-management/v1/trucks/{truckId} | Find a truck.
[**listDriveStates**](TrucksApi.md#listdrivestates) | **GET** /vehicle-management/v1/trucks/{truckId}/driveStates | List drive states.
[**listTrucks**](TrucksApi.md#listtrucks) | **GET** /vehicle-management/v1/trucks | List Trucks.


# **findTruck**
> Truck findTruck(truckId)

Find a truck.

Finds a truck by id.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getTrucksApi();
final String truckId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | trucks id

try {
    final response = api.findTruck(truckId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrucksApi->findTruck: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **truckId** | **String**| trucks id | 

### Return type

[**Truck**](Truck.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDriveStates**
> BuiltList<TruckDriveState> listDriveStates(truckId, driverId, state, after, before, first, max)

List drive states.

Lists drive states for truck.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getTrucksApi();
final String truckId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | truck id
final String driverId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter results by driver ID
final BuiltList<TruckDriveStateEnum> state = ; // BuiltList<TruckDriveStateEnum> | Filter results by driver state
final DateTime after = 2013-10-20T19:20:30+01:00; // DateTime | Filter results after given date-time
final DateTime before = 2013-10-20T19:20:30+01:00; // DateTime | Filter results before given date-time
final int first = 56; // int | First result.
final int max = 56; // int | Max results.

try {
    final response = api.listDriveStates(truckId, driverId, state, after, before, first, max);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrucksApi->listDriveStates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **truckId** | **String**| truck id | 
 **driverId** | **String**| Filter results by driver ID | [optional] 
 **state** | [**BuiltList&lt;TruckDriveStateEnum&gt;**](TruckDriveStateEnum.md)| Filter results by driver state | [optional] 
 **after** | **DateTime**| Filter results after given date-time | [optional] 
 **before** | **DateTime**| Filter results before given date-time | [optional] 
 **first** | **int**| First result. | [optional] 
 **max** | **int**| Max results. | [optional] 

### Return type

[**BuiltList&lt;TruckDriveState&gt;**](TruckDriveState.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTrucks**
> BuiltList<Truck> listTrucks(plateNumber, archived, first, max)

List Trucks.

Lists Trucks.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getTrucksApi();
final String plateNumber = plateNumber_example; // String | Filter results by plate number
final bool archived = true; // bool | Filter results by archived status
final int first = 56; // int | First result.
final int max = 56; // int | Max results.

try {
    final response = api.listTrucks(plateNumber, archived, first, max);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrucksApi->listTrucks: $e\n');
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

[**BuiltList&lt;Truck&gt;**](Truck.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

