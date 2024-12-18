import "package:json_annotation/json_annotation.dart";

part "output_metadata.g.dart";

/// Output Metadata class
///
/// Used for deserializing Android build versioning file.
@JsonSerializable()
class OutputMetadata {
  OutputMetadata(
    this.version,
    this.artifactType,
    this.applicationId,
    this.variantName,
    this.elementType,
    this.elements,
  );

  factory OutputMetadata.fromJson(final Map<String, dynamic> json) =>
      _$OutputMetadataFromJson(json);

  int version;
  ArtifactType artifactType;
  String applicationId;
  String variantName;
  String elementType;
  List<Element> elements;
  Map<String, dynamic> toJson() => _$OutputMetadataToJson(this);
}

/// Filter class
///
/// Used for deserializing Android build versioning file.
@JsonSerializable()
class Filter {
  Filter(this.filterType, this.value);

  factory Filter.fromJson(final Map<String, dynamic> json) =>
      _$FilterFromJson(json);

  String filterType;
  String value;
  Map<String, dynamic> toJson() => _$FilterToJson(this);
}

/// Element class
///
/// Used for deserializing Android build versioning file.
@JsonSerializable()
class Element {
  Element(
    this.type,
    this.attributes,
    this.versionCode,
    this.versionName,
    this.outputFile,
    this.filters,
  );

  factory Element.fromJson(final Map<String, dynamic> json) =>
      _$ElementFromJson(json);

  String type;
  List<dynamic> attributes;
  int versionCode;
  String versionName;
  String outputFile;
  List<Filter> filters;
  Map<String, dynamic> toJson() => _$ElementToJson(this);
}

/// Artifact Type class
///
/// Used for deserializing Android build versioning file.
@JsonSerializable()
class ArtifactType {
  ArtifactType(this.type, this.kind);

  factory ArtifactType.fromJson(final Map<String, dynamic> json) =>
      _$ArtifactTypeFromJson(json);

  String type;
  String kind;
  Map<String, dynamic> toJson() => _$ArtifactTypeToJson(this);
}
