// Openapi Generator last run: : 2024-10-10T13:51:37.978649
import "package:openapi_generator_annotations/openapi_generator_annotations.dart";

@Openapi(
  inputSpec: InputSpec(
    path: "./specs/specs/app.yaml",
  ),
  generatorName: Generator.dio,
  outputDirectory: "./packages/tms_api",
  runSourceGenOnOutput: false,
  additionalProperties: DioProperties(pubName: "tms_api"),
)
class OpenApiGeneratorConfig {}