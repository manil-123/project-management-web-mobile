import 'dart:developer';
import 'package:flutter/foundation.dart';

/// Used to abstract the error handling when making API requests.
/// For a function [fn], executes the [exceptionHandler]
/// and catches the error. Also logs the error.
///
/// This function is based on the premise that exceptions should not
/// propagate further unhandled from the repository layer.
Future<T> runApiZoned<T>({
  required Future<T> Function() fn,
  required T Function(dynamic e) exceptionHandler,
}) async {
  try {
    final response = await fn();
    return response;
  } catch (e, stk) {
    if (kDebugMode) {
      log(
        '$fn: An error occurred in runApiZoned',
        error: e,
        stackTrace: stk,
      );
    }
    return exceptionHandler(e);
  }
}
