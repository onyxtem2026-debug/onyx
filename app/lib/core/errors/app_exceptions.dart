/// ============================================================
/// ONYX APP
/// Application Exceptions
/// ============================================================
/// Base exception class for the entire application.
/// ============================================================

class AppException implements Exception {
  final String message;

  const AppException(this.message);

  @override
  String toString() => message;
}

class NetworkException extends AppException {
  const NetworkException([super.message = 'Network Error']);
}

class ServerException extends AppException {
  const ServerException([super.message = 'Server Error']);
}

class CacheException extends AppException {
  const CacheException([super.message = 'Cache Error']);
}

class AuthenticationException extends AppException {
  const AuthenticationException([super.message = 'Authentication Error']);
}
