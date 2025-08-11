# vp_kuljetus_driver_app

Mobile app for VP-Kuljetus drivers

## Getting Started

- See [Environment variables](#environment-variables) for setting up Hashicorp Vault for managing environment variables.
- After setting up environment variables you can run the project via VS Code's debugging (F5) or via CLI with command `./scripts/fvm-flutter-with-secrets.sh run`

### Generate API client

- API client is linked through git submodule. Initialize the link by running `git submodule update --init` in terminal.
- Generate the client by running `fvm flutter pub run build_runner build --delete-conflicting-outputs`.
- All generated files ***should*** be in Git.

### Developing state providers

- This project uses [Riverpod](https://riverpod.dev/docs/essentials/first_request) as state management tool.
- When creating providers, generate boilerplate for providers annotated with `@riverpod` or `@Riverpod()` by running `fvm flutter pub run build_runner build --delete-conflicting-outputs`
- All generated files ***should*** be in Git.

### Creating Freezed models

- This project utilizes [Freezed](https://pub.dev/packages/freezed#changing-the-behavior-for-a-specific-model) to generate boilerplate for data classes and JSON serialization.
- When defining data classes with Freezed, generate boilerplate for classes annotated with `@freezed` by running `fvm flutter pub run build_runner build --delete-conflicting-outputs`
- All generated files ***should*** be in Git.

### Environment variables

This project uses environment variables defined in [Hashicorp Vault](https://hashicorp.com). It provides a centralized way for serving environment variables to both CI/CD pipeline and local development. Read the following section to learn how to import environment variables with Hashicorp Vault to your environment.

#### Import variables to project

Proceed with the following steps to get started:

1. Install Hashicorp vault CLI by referencing the official documentation here: [Hashicorp Vault CLI Install](https://developer.hashicorp.com/vault/install)
2. Install withhcv helper script (https://github.com/Metatavu/development-scripts/blob/master/hcv/withhcv.sh)
3. Run the project by either
   1. Running at the root of the project a normal Flutter command prefixed with `./scripts/fvm-flutter-with-secrets.sh`. For example `./scripts/fvm-flutter-with-secrets.sh run`. The script injects the secrets directly from Hashicorp Vault to the Flutter command.
   2. Using VS Code Debugging (F5). This also uses the custom script in the background.

#### Modifying environment variables

Update variable definitions in `pubspec.yaml`. Then, run script `./scripts/dart-define-generate.sh`. This will generate boilerplate for the updated definitions. Detailed instructions for updating the definitions in [here](https://github.com/Mankeli-Software/dart_define?tab=readme-ov-file#quick-start-);

## Creating Sign Keystore for Android

Replace [STOREPASS] with generated password

    keytool -genkey -v -keystore app.keystore -storepass [STOREPASS] -alias app -keypass [STOREPASS] -keyalg RSA -keysize 4096 -validity 10000

Encode keystore as base64 (so it can be stored as GitHub environment secret)

    base64 -i app.keystore -o app.keystore.b64
