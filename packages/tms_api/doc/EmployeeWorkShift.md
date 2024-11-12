# tms_api.model.EmployeeWorkShift

## Load the model package
```dart
import 'package:tms_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | [**Date**](Date.md) | Work shift date. | 
**employeeId** | **String** | Employee's ID | 
**approved** | **bool** | Whether the work shift has been approved by a supervisor. Work shift hours cannot be updated if the work shift is approved.  | 
**id** | **String** |  | [optional] 
**startedAt** | [**Date**](Date.md) | Work shift start time | [optional] 
**endedAt** | [**Date**](Date.md) | Work shift end time | [optional] 
**truckIds** | **BuiltList&lt;String&gt;** | List of truck IDs used during the work shift. Derived from work events in the shift. | [optional] 
**dayOffWorkAllowance** | **bool** | Day off work allowance is used to mark the day when the work shift started as a day off for the employee. This means that all the work hours done during that day will be also added to the HOLIDAY_ALLOWANCE work type during work shift hours calculation.  | [optional] 
**absence** | [**AbsenceType**](AbsenceType.md) |  | [optional] 
**perDiemAllowance** | [**PerDiemAllowanceType**](PerDiemAllowanceType.md) |  | [optional] 
**notes** | **String** | Additional notes for the work shift. For example, if the employee was sick during the shift. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


