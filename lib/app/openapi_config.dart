// Openapi Generator last run: : 2025-08-18T14:31:09.806684
import "package:openapi_generator_annotations/openapi_generator_annotations.dart";

@Openapi(
  inputSpec: InputSpec(path: "./specs/specs/app.yaml"),
  generatorName: Generator.dio,
  outputDirectory: "./packages/tms_api",
  additionalProperties: DioProperties(pubName: "tms_api"),
  skipIfSpecIsUnchanged: false,
)
class OpenApiGeneratorConfig {}