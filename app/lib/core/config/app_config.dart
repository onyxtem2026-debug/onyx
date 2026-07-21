/// ============================================================
/// ONYX APP
/// Application Configuration
/// ============================================================
/// Central configuration for the application.
/// Environment variables and feature flags
/// will be added here in future.
/// ============================================================

class AppConfig {
  AppConfig._();

  /// App Information
  static const String appName = 'ONYX';
  static const String appVersion = '1.0.0';

  /// Environment
  static const bool isProduction = false;
  static const bool enableLogs = true;

  /// API
  static const String baseUrl = '';

  /// Pagination
  static const int defaultPageSize = 20;
}
