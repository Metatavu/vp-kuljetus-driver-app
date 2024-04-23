// Openapi Generator last run: : 2024-04-23T09:41:21.408571
import "package:openapi_generator_annotations/openapi_generator_annotations.dart";

@Openapi(
  inputSpec: InputSpec(
    path: "specs/specs/app.yaml",
  ),
  generatorName: Generator.dio,
  outputDirectory: "../packages/tms_api",
  additionalProperties: DioProperties(pubName: "tms_api"),
)
class OpenApiGeneratorConfig {}