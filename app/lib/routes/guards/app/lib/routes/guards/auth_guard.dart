/// ============================================================
/// ONYX
/// Authentication Guard
/// ============================================================
/// Responsible for protecting authenticated routes.
/// Authentication logic will be implemented later.
/// ============================================================

class AuthGuard {
  const AuthGuard._();

  static bool canAccess() {
    // TODO: Connect with Firebase Authentication.
    return true;
  }
}
