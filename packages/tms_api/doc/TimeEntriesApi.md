# tms_api.api.TimeEntriesApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmployeeTimeEntry**](TimeEntriesApi.md#createemployeetimeentry) | **POST** /user-management/v1/employees/{employeeId}/timeEntries | Create Employees Time Entry.
[**findEmployeeTimeEntry**](TimeEntriesApi.md#findemployeetimeentry) | **GET** /user-management/v1/employees/{employeeId}/timeEntries/{timeEntryId} | Find an employee&#39;s time entry.
[**listEmployeeTimeEntries**](TimeEntriesApi.md#listemployeetimeentries) | **GET** /user-management/v1/employees/{employeeId}/timeEntries | List Employees Time Entries.
[**updateEmployeeTimeEntry**](TimeEntriesApi.md#updateemployeetimeentry) | **PUT** /user-management/v1/employees/{employeeId}/timeEntries/{timeEntryId} | Update Employee&#39;s Time Entry.


# **createEmployeeTimeEntry**
> TimeEntry createEmployeeTimeEntry(employeeId, timeEntry)

Create Employees Time Entry.

Creates Employees Time Entry.  Attempt to create new time entry should fail if:   1) New time entry does not have endTime but there is already one time entry without endTime for the same employee. This is because time entries without endTime are considered to be running timers and only one is allowed at a time.   2) If time new entry intersects with an existing time entry. 

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getTimeEntriesApi();
final String employeeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | employee's id
final TimeEntry timeEntry = ; // TimeEntry | 

try {
    final response = api.createEmployeeTimeEntry(employeeId, timeEntry);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TimeEntriesApi->createEmployeeTimeEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **String**| employee's id | 
 **timeEntry** | [**TimeEntry**](TimeEntry.md)|  | 

### Return type

[**TimeEntry**](TimeEntry.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEmployeeTimeEntry**
> TimeEntry findEmployeeTimeEntry(employeeId, timeEntryId)

Find an employee's time entry.

Finds an employee's time entry by id.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getTimeEntriesApi();
final String employeeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | employee's id
final String timeEntryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | time entry's id

try {
    final response = api.findEmployeeTimeEntry(employeeId, timeEntryId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TimeEntriesApi->findEmployeeTimeEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **String**| employee's id | 
 **timeEntryId** | **String**| time entry's id | 

### Return type

[**TimeEntry**](TimeEntry.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEmployeeTimeEntries**
> BuiltList<TimeEntry> listEmployeeTimeEntries(employeeId, start, end, first, max)

List Employees Time Entries.

Lists Employees Time Entries. Sort by start time, latest first.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getTimeEntriesApi();
final String employeeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | employee's id
final DateTime start = 2013-10-20T19:20:30+01:00; // DateTime | Start time for time entries.
final DateTime end = 2013-10-20T19:20:30+01:00; // DateTime | End time for time entries.
final int first = 56; // int | First result.
final int max = 56; // int | Max results.

try {
    final response = api.listEmployeeTimeEntries(employeeId, start, end, first, max);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TimeEntriesApi->listEmployeeTimeEntries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **String**| employee's id | 
 **start** | **DateTime**| Start time for time entries. | [optional] 
 **end** | **DateTime**| End time for time entries. | [optional] 
 **first** | **int**| First result. | [optional] [default to 0]
 **max** | **int**| Max results. | [optional] [default to 10]

### Return type

[**BuiltList&lt;TimeEntry&gt;**](TimeEntry.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmployeeTimeEntry**
> TimeEntry updateEmployeeTimeEntry(employeeId, timeEntryId, timeEntry)

Update Employee's Time Entry.

Updates Employee's Time Entry.  Update should fail, when: 1) Modified entry does not have endTime but there is already another entry without endTime present in the system for same employee.  This is because time entries without endTime are considered to be running timers and only one is allowed at a time. 2) If modifying the entry would lead it to intersect with another time entry. 

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getTimeEntriesApi();
final String employeeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | employee's id
final String timeEntryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | time entry's id
final TimeEntry timeEntry = ; // TimeEntry | 

try {
    final response = api.updateEmployeeTimeEntry(employeeId, timeEntryId, timeEntry);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TimeEntriesApi->updateEmployeeTimeEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **String**| employee's id | 
 **timeEntryId** | **String**| time entry's id | 
 **timeEntry** | [**TimeEntry**](TimeEntry.md)|  | 

### Return type

[**TimeEntry**](TimeEntry.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

