# tms_api.model.Vehicle

## Load the model package
```dart
import 'package:tms_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**truckId** | **String** | Truck that towing the vehicle | 
**towableIds** | **BuiltList&lt;String&gt;** | List of attached towables to vehicle. Order of towables should reflect the order of towables in the vehicle where first towable is the closest to the truck.  | 
**id** | **String** |  | [optional] 
**creatorId** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**lastModifierId** | **String** |  | [optional] 
**modifiedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**archivedAt** | [**DateTime**](DateTime.md) | Setting the archivedAt time marks the vehicle as archived. Vehicles marked as archived will not appear in list requests unless archived filter is set to true. Archived vehicle cannot be updated, unless archivedAt is first set to null.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


