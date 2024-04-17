# tms_api.api.TasksApi

## Load the API package
```dart
import 'package:tms_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findTask**](TasksApi.md#findtask) | **GET** /delivery-info/v1/tasks/{taskId} | Find a task.
[**listTasks**](TasksApi.md#listtasks) | **GET** /delivery-info/v1/tasks | List Tasks.
[**updateTask**](TasksApi.md#updatetask) | **PUT** /delivery-info/v1/tasks/{taskId} | Updates task


# **findTask**
> Task findTask(taskId)

Find a task.

Finds a task by id.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getTasksApi();
final String taskId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | task id

try {
    final response = api.findTask(taskId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksApi->findTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**| task id | 

### Return type

[**Task**](Task.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTasks**
> BuiltList<Task> listTasks(routeId, assignedToRoute, freightId, customerSiteId, type, first, max)

List Tasks.

Lists Tasks.

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getTasksApi();
final String routeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Route id
final bool assignedToRoute = true; // bool | Has been assigned to a route. Should not be used together with routeId.
final String freightId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Freight id
final String customerSiteId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Customer site id
final TaskType type = ; // TaskType | Task type
final int first = 56; // int | First result.
final int max = 56; // int | Max results.

try {
    final response = api.listTasks(routeId, assignedToRoute, freightId, customerSiteId, type, first, max);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksApi->listTasks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **String**| Route id | [optional] 
 **assignedToRoute** | **bool**| Has been assigned to a route. Should not be used together with routeId. | [optional] 
 **freightId** | **String**| Freight id | [optional] 
 **customerSiteId** | **String**| Customer site id | [optional] 
 **type** | [**TaskType**](.md)| Task type | [optional] 
 **first** | **int**| First result. | [optional] 
 **max** | **int**| Max results. | [optional] 

### Return type

[**BuiltList&lt;Task&gt;**](Task.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTask**
> Task updateTask(taskId, task)

Updates task

Updates single task

### Example
```dart
import 'package:tms_api/api.dart';

final api = TmsApi().getTasksApi();
final String taskId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | task id
final Task task = ; // Task | Payload

try {
    final response = api.updateTask(taskId, task);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksApi->updateTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**| task id | 
 **task** | [**Task**](Task.md)| Payload | 

### Return type

[**Task**](Task.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

