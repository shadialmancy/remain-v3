import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class LoggerInterceptor extends Interceptor {
  Logger logger = Logger(
    // Customize the printer
    printer: PrettyPrinter(
      methodCount: 0,
    ),
  );

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final options = err.requestOptions;
    final requestPath = '${options.baseUrl}${options.path}';
    logger.e('${options.method} request => $requestPath'); // Debug log
    logger.d('Error: ${err.error}, Message: ${err.message}'); // Error log
    return super.onError(err, handler);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers['Authorization'] == false) {
      // if the request doesn't need token, then just continue to the next interceptor
      options.headers.remove('Authorization'); //remove the auxiliary header
      return handler.next(options);
    }
    final requestPath = '${options.baseUrl}${options.path}';
    options.headers['Authorization'] =
        'Bearer QUhDU2VjcmV0S2V5OlpHRjBZVzlqWldGdVFESXdNakk9';
    //options.headers['app'] = 'fulfillment';
    options.headers['Accept'] = 'application/json';
    logger.i('${options.method} request => $requestPath'); // Info log
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d(
        'StatusCode: ${response.statusCode}, Data: ${response.data}'); // Debug log
    return super.onResponse(response, handler);
  }
}

class RemainClientLoggerInterceptor extends Interceptor {
  Logger logger = Logger(
    // Customize the printer
    printer: PrettyPrinter(
      methodCount: 0,
    ),
  );

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final options = err.requestOptions;
    final requestPath = '${options.baseUrl}${options.path}';
    logger.e('${options.method} request => $requestPath'); // Debug log
    logger.d('Error: ${err.error}, Message: ${err.message}'); // Error log
    return super.onError(err, handler);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers['Authorization'] == false) {
      // if the request doesn't need token, then just continue to the next interceptor
      options.headers.remove('Authorization'); //remove the auxiliary header
      return handler.next(options);
    }
    final requestPath = '${options.baseUrl}${options.path}';
    options.headers['Authorization'] =
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0ZXN0X3VzZXIiLCJqdGkiOiI1NjcwYzViNi0wODE2LTQ5MTUtYjA3MC05ODAzZmI4MDg3YmIiLCJleHAiOjQ4Nzk5MDE5NDcsImlzcyI6InlvdXJfaXNzdWVyX25hbWUiLCJhdWQiOiJ5b3VyX2F1ZGllbmNlX25hbWUifQ.Y2s3KA2l01SeLyo9zaWgV8lYNDxVAjjir-vP0Z1QfC4';
    //options.headers['app'] = 'fulfillment';
    options.headers['Accept'] = 'application/json';
    logger.i('${options.method} request => $requestPath'); // Info log
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d(
        'StatusCode: ${response.statusCode}, Data: ${response.data}'); // Debug log
    return super.onResponse(response, handler);
  }
}
