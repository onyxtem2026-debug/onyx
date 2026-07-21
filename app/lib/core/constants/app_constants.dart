/// ============================================================
/// ONYX APP
/// Global Application Constants
/// ============================================================

class AppConstants {
  const AppConstants._();

  // Application
  static const String appName = 'ONYX';
  static const String appVersion = '1.0.0';

  // Animation
  static const Duration animationDuration =
      Duration(milliseconds: 300);

  // Pagination
  static const int defaultPageSize = 20;

  // Network
  static const Duration requestTimeout =
      Duration(seconds: 30);
}
