# tms_api.model.TimeEntry

## Load the model package
```dart
import 'package:tms_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employeeId** | **String** | Employee's id | 
**startTime** | [**DateTime**](DateTime.md) | Time entry start time | 
**workTypeId** | **String** | Work type id | 
**id** | **String** |  | [optional] 
**endTime** | [**DateTime**](DateTime.md) | Time entry end time. End time is not required for time entries that are still running. If an employee has an existing time entry without an end time and the new entry is missing end time, the new time entry should not be created and instead a bad request is to be returned. When a new entry is created with both start and end times, the existing entry is ignored.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


