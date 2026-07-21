/// ============================================================
/// ONYX
/// Authentication Guard
/// ------------------------------------------------------------
/// Responsible for protecting authenticated routes.
/// The implementation will be connected later with
/// Firebase Authentication.
/// ============================================================

abstract final class AuthGuard {
  AuthGuard._();

  /// Returns true if the user is authenticated.
  static bool isAuthenticated() {
    // TODO(ONYX):
    // Replace this with Firebase Authentication.
    return false;
  }
}
