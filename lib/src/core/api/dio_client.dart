import 'package:dio/dio.dart';

import '../constants/constants.dart';
import 'apis.dart';

class BaseDioClient {
  BaseDioClient()
      : dio = Dio(
          BaseOptions(
            baseUrl: AppConstants.apiBaseUrl,
            responseType: ResponseType.json,
            receiveDataWhenStatusError: true,
            headers: {
              'Accept': '*/*',
              'Connection-Type': 'mobile',
              "Accept-Encoding": "gzip, deflate, br",
            },
            contentType: 'application/json',
            validateStatus: (status) {
              return status! < 500;
            },
            followRedirects: false, // Enable following redirections
            maxRedirects: 5, //
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
            LoggerInterceptor(),
            // LocaleInterceptor(),
          ]);
  late final Dio dio;
}

class RemainDioClient {
  RemainDioClient()
      : dio = Dio(
          BaseOptions(
            baseUrl: AppConstants.apiRemainUrl,
            responseType: ResponseType.json,
            receiveDataWhenStatusError: true,
            headers: {
              'Accept': '*/*',
              'Connection-Type': 'mobile',
              "Accept-Encoding": "gzip, deflate, br",
            },
            contentType: 'application/json',
            validateStatus: (status) {
              return status! < 500;
            },
            followRedirects: false, // Enable following redirections
            maxRedirects: 5, //
          ),
        )..interceptors.addAll([
            RemainClientAuthorizationInterceptor(),
            RemainClientLoggerInterceptor(),
            // LocaleInterceptor(),
          ]);
  late final Dio dio;
}

class HomeCareClient {
  HomeCareClient()
      : dio = Dio(
          BaseOptions(
            baseUrl: AppConstants.apiHomeCareUrl,
            responseType: ResponseType.json,
            receiveDataWhenStatusError: true,
            headers: {
              'Accept': '*/*',
              'Connection-Type': 'mobile',
              "Accept-Encoding": "gzip, deflate, br",
            },
            contentType: 'application/json',
            validateStatus: (status) {
              return status! < 500;
            },
            followRedirects: false, // Enable following redirections
            maxRedirects: 5, //
          ),
        )..interceptors.addAll([
            RemainClientAuthorizationInterceptor(),
            RemainClientLoggerInterceptor(),
            // LocaleInterceptor(),
          ]);
  late final Dio dio;
}

class RemainWebHook {
  RemainWebHook()
      : dio = Dio(
          BaseOptions(
            baseUrl: AppConstants.automationWebHook,
            responseType: ResponseType.json,
            receiveDataWhenStatusError: true,
            headers: {
              "Authorization": "bWFhemphYmphYjg3OkRzbWNCb29raW5nQDIwMjA=",
              'Accept': '*/*',
              'Connection-Type': 'mobile',
              "Accept-Encoding": "gzip, deflate, br",
            },
            contentType: 'application/json',
            validateStatus: (status) {
              return status! < 500;
            },
            followRedirects: false, // Enable following redirections
            maxRedirects: 5, //
          ),
        )..interceptors.addAll([
            RemainClientAuthorizationInterceptor(),
            RemainClientLoggerInterceptor(),
            // LocaleInterceptor(),
          ]);
  late final Dio dio;
}
