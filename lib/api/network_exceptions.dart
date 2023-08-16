import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.unauthorizedRequest() = UnauthorizedRequest;
  const factory NetworkExceptions.badRequest() = BadRequest;
  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;
  const factory NetworkExceptions.requestTimeout() = RequestTimeout;
  const factory NetworkExceptions.internalServerError() = InternalServerError;
  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;
  const factory NetworkExceptions.formatException() = FormatException;
  const factory NetworkExceptions.unexpectedError() = UnexpectedError;
  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  static NetworkExceptions handleResponse(int? statusCode) {
    switch (statusCode) {
      case 400:
        return const NetworkExceptions.badRequest();
      case 401:
        return const NetworkExceptions.unauthorizedRequest();
      case 403:
        return const NetworkExceptions.unauthorizedRequest();
      case 405:
        return const NetworkExceptions.methodNotAllowed();
      case 500:
        return const NetworkExceptions.internalServerError();
      default:
        return const NetworkExceptions.unexpectedError();
    }
  }

  static String handleErrorToString<T>(dynamic e) {
    try {
      if (e is DioError &&
          e.type == DioErrorType.response &&
          e.response?.data != null) {
        if (e.response?.data?['error']?['message'] == null) {
          // ignore: avoid_dynamic_calls
          return NetworkExceptions.getErrorMessage(
              NetworkExceptions.getDioException(e));
        }
        return NetworkExceptions.getErrorMessage(NetworkExceptions.defaultError(
          (e.response?.data['error']['message']).toString(),
        ));
      } else {
        return NetworkExceptions.getErrorMessage(
            NetworkExceptions.getDioException(e));
      }
    } catch (e) {
      return NetworkExceptions.getErrorMessage(
        NetworkExceptions.getDioException(e),
      );
    }
  }

  static NetworkExceptions getDioException(dynamic error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioError) {
          if (kDebugMode) {
            print('++${error.error}');
          }
          switch (error.type) {
            case DioErrorType.connectTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            // ignore: no_default_cases
            case DioErrorType.other:
              networkExceptions =
                  NetworkExceptions.handleResponse(error.response?.statusCode);
              break;
            default:
              log(error.response!.statusCode.toString());
              networkExceptions =
                  NetworkExceptions.handleResponse(error.response?.statusCode);
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          if (kDebugMode) {
            print('++2');
          }
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException {
        return const NetworkExceptions.formatException();
      } catch (_) {
        if (kDebugMode) {
          print('++3');
        }
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (kDebugMode) {
        print('++4');
      }
      return const NetworkExceptions.unexpectedError();
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    var errorMessage = '';
    networkExceptions.when(
      internalServerError: () {
        errorMessage = 'Internal Server Error';
      },
      badRequest: () {
        errorMessage = 'Bad request';
      },
      methodNotAllowed: () {
        errorMessage = 'Method not allowed';
      },
      unauthorizedRequest: () {
        errorMessage = 'Invalid Credentials';
      },
      noInternetConnection: () {
        errorMessage =
            'No internet connection! Check your network connection and try again';
      },
      formatException: () {
        errorMessage = 'Unexpected error occurred';
      },
      unexpectedError: () {
        errorMessage = 'Unexpected error occurred';
      },
      requestTimeout: () {
        errorMessage = 'Connection request timeout';
      },
      defaultError: (String error) {
        errorMessage = error;
      },
    );
    return errorMessage;
  }
}
