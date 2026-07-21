/// ============================================================
/// ONYX APP
/// Utilities
/// ============================================================
/// Common helper methods used across the application.
/// ============================================================

class AppUtils {
  AppUtils._();

  static bool isNullOrEmpty(String? value) {
    return value == null || value.trim().isEmpty;
  }

  static String trim(String value) {
    return value.trim();
  }
}
