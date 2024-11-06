# tms_api.model.Truck

## Load the model package
```dart
import 'package:tms_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**plateNumber** | **String** |  | 
**type** | **String** |  | 
**vin** | **String** | Truck identification number. This is unique for each truck and should be used as a hardware identifier for this specific truck.  | 
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**activeVehicleId** | **String** | Active vehicle id. This is the current vehicle that the truck is part of. It updates whenever the vehicle structure is updated.  | [optional] 
**creatorId** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**lastModifierId** | **String** |  | [optional] 
**modifiedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**archivedAt** | [**DateTime**](DateTime.md) | Setting the archivedAt time marks the truck as archived. Trucks marked as archived will not appear in list requests unless archived filter is set to true. Archived truck cannot be updated, unless archivedAt is first set to null.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


