# vp_kuljetus_driver_app

Mobile app for VP-Kuljetus drivers

## Getting Started

- See [Environment variables](#environment-variables) for setting up Hashicorp Vault for managing environment variables
- After setting up environment variables you can run the project via VS Code's debugging (F5) or via CLI with command `flutter run --dart-define-from-file=env.json`

### Generate API client

- API client is linked through git submodule. Initialize the link by running `git submodule update --init` in terminal.
- Generate the client by running `flutter pub run build_runner build`.
- All generated files ***should*** be in Git.

### Developing state providers

- This project uses [Riverpod](https://riverpod.dev/docs/essentials/first_request) as state management tool.
- When creating providers, generate boilerplate for providers annotated with `@riverpod` or `@Riverpod()` by running `flutter pub run build_runner build`
- All generated files ***should*** be in Git.

### Creating Freezed models

- This project utilizes [Freezed](https://pub.dev/packages/freezed#changing-the-behavior-for-a-specific-model) to generate boilerplate for data classes and JSON serialization.
- When defining data classes with Freezed, generate boilerplate for classes annotated with `@freezed` by running `flutter pub run build_runner build`
- All generated files ***should*** be in Git.

### Environment variables

This project uses environment variables defined in [Hashicorp Vault](https://hashicorp.com). It provides a centralized way for serving environment variables to both CI/CD pipeline and local development. Read the following section to learn how to import environment variables with Hashicorp Vault to your environment.

#### Import variables to project

Proceed with the following steps to get started:

1. Install Hashicorp vault CLI by referencing the official documentation here: [Hashicorp Vault CLI Install](https://developer.hashicorp.com/vault/install)
2. Install withhcv helper script (https://github.com/Metatavu/development-scripts/blob/master/hcv/withhcv.sh)
3. Run `withhcv vault kv get -format json -mount="vp/tms/ENV/kv" "driver-app"|jq -r '.data.data' > env.json` (replace ENV with actual env, e.g. local)
4. You will see in the terminal that `env.json` file has been generated to the root of the project, which contains the variables.

#### Modifying environment variables

Update variable definitions in `pubspec.yaml`. Detailed instructions in [here](https://github.com/Mankeli-Software/dart_define?tab=readme-ov-file#quick-start-);

## Creating Sign Keystore for Android

Replace [STOREPASS] with generated password

    keytool -genkey -v -keystore app.keystore -storepass [STOREPASS] -alias app -keypass [STOREPASS] -keyalg RSA -keysize 4096 -validity 10000

Encode keystore as base64 (so it can be stored as GitHub environment secret)

    base64 -i app.keystore -o app.keystore.b64
