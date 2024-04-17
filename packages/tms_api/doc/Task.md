# tms_api.model.Task

## Load the model package
```dart
import 'package:tms_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**freightId** | **String** | Freight id | 
**customerSiteId** | **String** | Customer site id | 
**type** | [**TaskType**](TaskType.md) |  | 
**groupNumber** | **int** | Group number of the task. Gets a value of 0 by default. Can be updated from the management UI. All tasks with the same freightId, customerSiteId, type and group number are shown as grouped together in the driver app.  | 
**status** | [**TaskStatus**](TaskStatus.md) |  | 
**id** | **String** |  | [optional] 
**orderNumber** | **int** | Order number of the task. Tasks have order numbers when being part of a route (having a routeId). Unallocated tasks (not having a routeId) do not have order numbers. When creating/updating a route with a routeId, the order number MUST also be in place. Negative order numbers are not allowed. If a number higher than the current amount of tasks in the route is used, it will be silently updated to be one higher than the current maximum. When either routeId or orderNumber is updated to a task, order numbers of other tasks with the same routeId are also updated accordingly. This means all of the tasks in a route should be reloaded when order number of a single task is updated. When updating a task to have an order number that already exists in the same route, the existing task is placed after the updated task. Tasks are also displayed as grouped, when they have the same routeId, customerSiteId, type and groupNumber. Order of tasks inside a group does not matter, so a new task added to the group will be the last task in the group. When order is updated, the grouping should be taken into account in order numbers. All of the grouped tasks should be next to each other. A task after the grouped tasks should have the next order number from the highest one of the group.  | [optional] 
**remarks** | **String** | Task remarks | [optional] 
**routeId** | **String** | Route id | [optional] 
**startedAt** | [**DateTime**](DateTime.md) | Time the task was started at. Filled when task status is changed from TODO to IN_PROGRESS.  | [optional] 
**finishedAt** | [**DateTime**](DateTime.md) | Time the task was finished at. Filled when task status is changed from IN_PROGRESS to DONE.  | [optional] 
**creatorId** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**lastModifierId** | **String** |  | [optional] 
**modifiedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


