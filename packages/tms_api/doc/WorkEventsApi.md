# tms_api.api.WorkEventsApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmployeeWorkEvent**](WorkEventsApi.md#createemployeeworkevent) | **POST** /user-management/v1/employees/{employeeId}/workEvents | Create Employees Work Event.
[**findEmployeeWorkEvent**](WorkEventsApi.md#findemployeeworkevent) | **GET** /user-management/v1/employees/{employeeId}/workEvents/{workEventId} | Find an employee&#39;s work event.
[**listEmployeeWorkEvents**](WorkEventsApi.md#listemployeeworkevents) | **GET** /user-management/v1/employees/{employeeId}/workEvents | List Employees Work Events.
[**updateEmployeeWorkEvent**](WorkEventsApi.md#updateemployeeworkevent) | **PUT** /user-management/v1/employees/{employeeId}/workEvents/{workEventId} | Update Employee&#39;s Work Event.


# **createEmployeeWorkEvent**
> WorkEvent createEmployeeWorkEvent(employeeId, workEvent)

Create Employees Work Event.

Creates Employees Work Event.  If the work event starts a new shift, a new employee work shift is also created automatically. 

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getWorkEventsApi();
final String employeeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | employee's ID
final WorkEvent workEvent = ; // WorkEvent | 

try {
    final response = api.createEmployeeWorkEvent(employeeId, workEvent);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkEventsApi->createEmployeeWorkEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **String**| employee's ID | 
 **workEvent** | [**WorkEvent**](WorkEvent.md)|  | 

### Return type

[**WorkEvent**](WorkEvent.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEmployeeWorkEvent**
> WorkEvent findEmployeeWorkEvent(employeeId, workEventId)

Find an employee's work event.

Finds an employee's work event by ID.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getWorkEventsApi();
final String employeeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | employee's ID
final String workEventId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | work event's ID

try {
    final response = api.findEmployeeWorkEvent(employeeId, workEventId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkEventsApi->findEmployeeWorkEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **String**| employee's ID | 
 **workEventId** | **String**| work event's ID | 

### Return type

[**WorkEvent**](WorkEvent.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEmployeeWorkEvents**
> BuiltList<WorkEvent> listEmployeeWorkEvents(employeeId, employeeWorkShiftId, after, before, first, max)

List Employees Work Events.

Lists Employees Work Events. Sort by time, latest first.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getWorkEventsApi();
final String employeeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | employee's ID
final String employeeWorkShiftId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter work events by a specific work shift of the employee
final DateTime after = 2013-10-20T19:20:30+01:00; // DateTime | Filter work events after specified date.
final DateTime before = 2013-10-20T19:20:30+01:00; // DateTime | Filter work events before specified date.
final int first = 56; // int | First result.
final int max = 56; // int | Max results.

try {
    final response = api.listEmployeeWorkEvents(employeeId, employeeWorkShiftId, after, before, first, max);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkEventsApi->listEmployeeWorkEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **String**| employee's ID | 
 **employeeWorkShiftId** | **String**| Filter work events by a specific work shift of the employee | [optional] 
 **after** | **DateTime**| Filter work events after specified date. | [optional] 
 **before** | **DateTime**| Filter work events before specified date. | [optional] 
 **first** | **int**| First result. | [optional] [default to 0]
 **max** | **int**| Max results. | [optional] [default to 10]

### Return type

[**BuiltList&lt;WorkEvent&gt;**](WorkEvent.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmployeeWorkEvent**
> WorkEvent updateEmployeeWorkEvent(employeeId, workEventId, workEvent)

Update Employee's Work Event.

Updates Employee's Work Event.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getWorkEventsApi();
final String employeeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | employee's ID
final String workEventId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | work event's ID
final WorkEvent workEvent = ; // WorkEvent | 

try {
    final response = api.updateEmployeeWorkEvent(employeeId, workEventId, workEvent);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkEventsApi->updateEmployeeWorkEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **String**| employee's ID | 
 **workEventId** | **String**| work event's ID | 
 **workEvent** | [**WorkEvent**](WorkEvent.md)|  | 

### Return type

[**WorkEvent**](WorkEvent.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

