# tms_api.model.Towable

## Load the model package
```dart
import 'package:tms_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**plateNumber** | **String** |  | 
**type** | **String** |  | 
**vin** | **String** | Towable identification number. This is unique for each towable and should be used as a hardware identifier for this specific towable.  | 
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**creatorId** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**lastModifierId** | **String** |  | [optional] 
**modifiedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**archivedAt** | [**DateTime**](DateTime.md) | Setting the archivedAt time marks the towable as archived. Towables marked as archived will not appear in list requests unless archived filter is set to true. Archived towable cannot be updated, unless archivedAt is first set to null.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


