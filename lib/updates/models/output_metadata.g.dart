// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OutputMetadata _$OutputMetadataFromJson(Map<String, dynamic> json) =>
    OutputMetadata(
      (json['version'] as num).toInt(),
      ArtifactType.fromJson(json['artifactType'] as Map<String, dynamic>),
      json['applicationId'] as String,
      json['variantName'] as String,
      json['elementType'] as String,
      (json['elements'] as List<dynamic>)
          .map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OutputMetadataToJson(OutputMetadata instance) =>
    <String, dynamic>{
      'version': instance.version,
      'artifactType': instance.artifactType,
      'applicationId': instance.applicationId,
      'variantName': instance.variantName,
      'elementType': instance.elementType,
      'elements': instance.elements,
    };

Filter _$FilterFromJson(Map<String, dynamic> json) => Filter(
      json['filterType'] as String,
      json['value'] as String,
    );

Map<String, dynamic> _$FilterToJson(Filter instance) => <String, dynamic>{
      'filterType': instance.filterType,
      'value': instance.value,
    };

Element _$ElementFromJson(Map<String, dynamic> json) => Element(
      json['type'] as String,
      json['attributes'] as List<dynamic>,
      (json['versionCode'] as num).toInt(),
      json['versionName'] as String,
      json['outputFile'] as String,
      (json['filters'] as List<dynamic>)
          .map((e) => Filter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ElementToJson(Element instance) => <String, dynamic>{
      'type': instance.type,
      'attributes': instance.attributes,
      'versionCode': instance.versionCode,
      'versionName': instance.versionName,
      'outputFile': instance.outputFile,
      'filters': instance.filters,
    };

ArtifactType _$ArtifactTypeFromJson(Map<String, dynamic> json) => ArtifactType(
      json['type'] as String,
      json['kind'] as String,
    );

Map<String, dynamic> _$ArtifactTypeToJson(ArtifactType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'kind': instance.kind,
    };
