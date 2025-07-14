import 'package:dio/dio.dart';

// Request methods PUT, POST, PATCH, DELETE needs access token,
// which needs to be passed with "Authorization" header as Bearer token.
class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Authorization'] =
        'Bearer QUhDU2VjcmV0S2V5OlpHRjBZVzlqWldGdVFESXdNakk9';

    super.onRequest(options, handler);
  }
}

class RemainClientAuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Authorization'] =
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0ZXN0X3VzZXIiLCJqdGkiOiI1NjcwYzViNi0wODE2LTQ5MTUtYjA3MC05ODAzZmI4MDg3YmIiLCJleHAiOjQ4Nzk5MDE5NDcsImlzcyI6InlvdXJfaXNzdWVyX25hbWUiLCJhdWQiOiJ5b3VyX2F1ZGllbmNlX25hbWUifQ';

    super.onRequest(options, handler);
  }
}
