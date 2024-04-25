// This file was generated by package:dart_define, DO NOT modify or remove these comments
class Env {
  Env._();
  
  /// API base URL
  static const apiBaseUrl = String.fromEnvironment('API_BASE_URL');

  /// Keycloak API URL
  static const keycloakUrl = String.fromEnvironment('KEYCLOAK_URL');

  /// Keycloak realm name
  static const keycloakRealm = String.fromEnvironment('KEYCLOAK_REALM');

  /// Keycloak client ID
  static const keycloakClientId = String.fromEnvironment('KEYCLOAK_CLIENT_ID');

  /// Keycloak client secret
  static const keycloakClientSecret = String.fromEnvironment('KEYCLOAK_CLIENT_SECRET');

  /// URL for app updates
  static const updatesUrl = String.fromEnvironment('UPDATES_URL');

  /// Whether updates can be skipped
  static const updatesSkippable = bool.fromEnvironment('UPDATES_SKIPPABLE');
}

    