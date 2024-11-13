# tms_api.api.EmployeeWorkShiftsApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listEmployeeWorkShifts**](EmployeeWorkShiftsApi.md#listemployeeworkshifts) | **GET** /user-management/v1/employees/{employeeId}/workShifts | List Employees Work Shifts.


# **listEmployeeWorkShifts**
> BuiltList<EmployeeWorkShift> listEmployeeWorkShifts(employeeId, startedAfter, startedBefore, first, max)

List Employees Work Shifts.

Lists Employees work Shifts. Sort by time, latest first.  Employees can only see their own work shifts. Managers can see all employees' work shifts. 

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getEmployeeWorkShiftsApi();
final String employeeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | employee's ID
final DateTime startedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Filter work shifts started after specified date.
final DateTime startedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Filter work shifts started before specified date.
final int first = 56; // int | First result.
final int max = 56; // int | Max results.

try {
    final response = api.listEmployeeWorkShifts(employeeId, startedAfter, startedBefore, first, max);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EmployeeWorkShiftsApi->listEmployeeWorkShifts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **String**| employee's ID | 
 **startedAfter** | **DateTime**| Filter work shifts started after specified date. | [optional] 
 **startedBefore** | **DateTime**| Filter work shifts started before specified date. | [optional] 
 **first** | **int**| First result. | [optional] [default to 0]
 **max** | **int**| Max results. | [optional] [default to 10]

### Return type

[**BuiltList&lt;EmployeeWorkShift&gt;**](EmployeeWorkShift.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

