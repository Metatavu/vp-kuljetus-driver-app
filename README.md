# vp_kuljetus_driver_app

Mobile app for VP-Kuljetus drivers

## Getting Started

- See [Environment variables](#environment-variables) for setting up Infisical for managing environment variables
- After setting up environment variables you can run the project via VS Code's debugging (F5) or via CLI with command `flutter run --dart-define-from-file=env.json`

### Generate API client
- API client is linked through git submodule. Initialize the link by running `git submodule update --init` in terminal.
- Generate the client by running `flutter pub run build_runner build`.

### Developing state providers
- This project uses [Riverpod](https://riverpod.dev/docs/essentials/first_request) as state management tool.
- When creating providers, generate boilerplate for providers annotated with `@riverpod` or `@Riverpod()` by running `flutter pub run build_runner build`

### Creating Freezed models
- This project utilizes [Freezed](https://pub.dev/packages/freezed#changing-the-behavior-for-a-specific-model) to generate boilerplate for data classes and JSON serialization.
- When defining data classes with Freezed, generate boilerplate for classes annotated with `@freezed` by running `flutter pub run build_runner build`

### Environment variables

This project uses environment variables defined in [Infisical](https://infisical.com). It provides a centralized way for serving environment variables to both CI/CD pipeline and local development. Read the following section to learn how to import environment variables with Infisical to your environment.

#### Import variables to project

Proceed with the following steps to get started:

1. Install Infisical CLI by referencing the official documentation here: [Infisical CLI](https://infisical.com/docs/cli/overview)
2. Request fellow developers to get access to
   1. Infisical organization
   2. VP-Kuljetus project
3. Run `infisical login` and authenticate with your Infisical account
   1.  Select `Infisical Cloud` when asked
4. Run `infisical run --path=/driver-app -- flutter pub run dart_define generate`
5. You will see in the terminal that `env.json` file has been generated to the root of the project, which contains the variables.

#### Modifying environment variables

Update variable definitions in `pubspec.yaml`. Detailed instructions in [here](https://github.com/Mankeli-Software/dart_define?tab=readme-ov-file#quick-start-);