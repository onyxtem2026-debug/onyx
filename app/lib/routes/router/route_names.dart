/// ============================================================
/// ONYX
/// Route Names
/// ------------------------------------------------------------
/// Centralized route names used across the application.
/// Using constants prevents typos and makes navigation easier.
/// ============================================================

abstract final class RouteNames {
  RouteNames._();

  // Splash
  static const splash = 'splash';

  // Authentication
  static const login = 'login';
  static const register = 'register';
  static const forgotPassword = 'forgot-password';

  // Main
  static const home = 'home';
  static const reels = 'reels';
  static const search = 'search';
  static const upload = 'upload';
  static const messages = 'messages';
  static const notifications = 'notifications';
  static const profile = 'profile';
  static const settings = 'settings';
}
