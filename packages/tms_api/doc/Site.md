# tms_api.model.Site

## Load the model package
```dart
import 'package:tms_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Site name | 
**location** | **String** | Site location as well-known text Point | 
**address** | **String** | Address of the site | 
**postalCode** | **String** | Postal code of the site | 
**locality** | **String** | Locality of the site | 
**id** | **String** |  | [optional] 
**additionalInfo** | **String** | additional information about the site, e.g. delivery instructions. This is shown in the task for the driver.  | [optional] 
**creatorId** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**lastModifierId** | **String** |  | [optional] 
**modifiedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**archivedAt** | [**DateTime**](DateTime.md) | Setting the archivedAt time marks the site as archived. Sites marked as archived will not appear in list requests unless archived filter is set to true. Archived site cannot be updated, unless archivedAt is first set to null.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


