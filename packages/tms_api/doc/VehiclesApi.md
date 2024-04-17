# tms_api.api.VehiclesApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createVehicle**](VehiclesApi.md#createvehicle) | **POST** /vehicle-management/v1/vehicles | Create vehicle
[**findVehicle**](VehiclesApi.md#findvehicle) | **GET** /vehicle-management/v1/vehicles/{vehicleId} | Find a vehicle.
[**listVehicles**](VehiclesApi.md#listvehicles) | **GET** /vehicle-management/v1/vehicles | List Vehicles.


# **createVehicle**
> Vehicle createVehicle(vehicle)

Create vehicle

Create new vehicle. Vehicles are the history of the combinations of towables behind a truck. When a vehicle structure needs to be updated, a new vehicle with updated structure should be created. This updates the active vehicle for the truck and archives the previous one. 

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getVehiclesApi();
final Vehicle vehicle = ; // Vehicle | Payload

try {
    final response = api.createVehicle(vehicle);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VehiclesApi->createVehicle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicle** | [**Vehicle**](Vehicle.md)| Payload | 

### Return type

[**Vehicle**](Vehicle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findVehicle**
> Vehicle findVehicle(vehicleId)

Find a vehicle.

Finds a vehicle by id.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getVehiclesApi();
final String vehicleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | vehicles id

try {
    final response = api.findVehicle(vehicleId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VehiclesApi->findVehicle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **String**| vehicles id | 

### Return type

[**Vehicle**](Vehicle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVehicles**
> BuiltList<Vehicle> listVehicles(truckId, archived, first, max)

List Vehicles.

Lists Vehicles.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getVehiclesApi();
final String truckId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter results by truck id
final bool archived = true; // bool | Filter results by archived status
final int first = 56; // int | First result.
final int max = 56; // int | Max results.

try {
    final response = api.listVehicles(truckId, archived, first, max);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VehiclesApi->listVehicles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **truckId** | **String**| Filter results by truck id | [optional] 
 **archived** | **bool**| Filter results by archived status | [optional] 
 **first** | **int**| First result. | [optional] 
 **max** | **int**| Max results. | [optional] 

### Return type

[**BuiltList&lt;Vehicle&gt;**](Vehicle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

