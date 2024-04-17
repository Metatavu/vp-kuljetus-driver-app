# tms_api.model.Driver

## Load the model package
```dart
import 'package:tms_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**displayName** | **String** | Driver display name | [optional] 
**archivedAt** | [**DateTime**](DateTime.md) | Setting the archivedAt time marks the driver as archived. Drivers marked as archived will not appear in list requests unless archived filter is set to true. Archived driver cannot be updated, unless archivedAt is first set to null.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


