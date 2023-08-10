import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:project_management_web_and_mobile/api/api_config.dart';

final dioInstanceProvider = Provider<Dio>((ref) {
  return Dio()
    ..options.baseUrl = ApiConfig.apiBaseUrlWeb
// ..options.followRedirects = false
    ..options.validateStatus = ((status) => status! < 401)
    ..options.connectTimeout = 20000
    ..options.receiveTimeout = 20000
    ..interceptors.addAll([
      if (kDebugMode)
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
        ),
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Content-Type'] = "application/json";
          return handler.next(options);
        },
        onResponse: (e, handler) {
          if (e.statusCode == 401) {
            throw Exception('Unauthorized');
          }
          if (e.statusCode == 403) {
            throw Exception('Forbidden');
          }
          if (e.statusCode! >= 500) {
            throw Exception('Server Error');
          } else {
            return handler.next(e);
          }
        },
        onError: (e, handler) {
          if (e.response?.statusCode == 401) {
            return handler.next(e);
          }
          throw Exception(e.message);
        },
      ),
    ]);
});
