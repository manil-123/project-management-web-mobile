import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:project_management_web_and_mobile/api/api_config.dart';

final dio = Dio(); // With default `Options`.

void configureDio() {
  // Set default configs
  dio.options.baseUrl = ApiConfig.apiBaseUrl;
  dio.options.connectTimeout = 20000;
  dio.options.receiveTimeout = 20000;
  var logger = Logger(
    filter: null,
    printer: PrettyPrinter(colors: true),
    output: null,
  );
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        logger.d(options.data.toString());
        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        logger.i(response.toString());
        if (response.statusCode == 401) {
          throw Exception('Unauthorized');
        }
        if (response.statusCode == 403) {
          throw Exception('Forbidden');
        }
        if (response.statusCode! >= 500) {
          throw Exception('Server Error');
        } else {
          return handler.next(response);
        }
      },
      onError: (DioError e, ErrorInterceptorHandler handler) {
        logger.e(e.toString());
        if (e.response?.statusCode == 401) {
          // handle unauthorized case here
        }
        return handler.next(e);
      },
    ),
  );
}
