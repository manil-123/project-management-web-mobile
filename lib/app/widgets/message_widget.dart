import 'package:flutter/material.dart';

void showErrorInfo(BuildContext context, String errorMessage) {
  final width = MediaQuery.sizeOf(context).width;

  ScaffoldMessenger.of(context).showSnackBar(
    _getErrorWidget(
      errorMessage,
      width > 600 ? width * 0.4 : width * 0.9,
    ),
  );
}

void showInfo(BuildContext context, String message) {
  final width = MediaQuery.sizeOf(context).width;

  ScaffoldMessenger.of(context).showSnackBar(
    _getMessageWidget(
      message,
      width > 600 ? width * 0.4 : width * 0.9,
    ),
  );
}

SnackBar _getErrorWidget(String errorMessage, double width) {
  return SnackBar(
    duration: const Duration(seconds: 3),
    content: Text(
      errorMessage,
      style: const TextStyle(color: Colors.white, fontSize: 16),
    ),
    backgroundColor: Colors.red,
    behavior: SnackBarBehavior.floating,
    elevation: 0,
    width: width,
    action: SnackBarAction(
      label: 'Ok',
      onPressed: () => {},
      disabledTextColor: Colors.white,
      textColor: Colors.white,
    ),
  );
}

SnackBar _getMessageWidget(String message, double width) {
  return SnackBar(
    duration: const Duration(seconds: 3),
    content: Text(
      message,
      style: const TextStyle(color: Colors.white, fontSize: 16),
    ),
    backgroundColor: Colors.green,
    behavior: SnackBarBehavior.floating,
    elevation: 0,
    width: width,
    action: SnackBarAction(
      label: 'Ok',
      onPressed: () => {},
      disabledTextColor: Colors.white,
      textColor: Colors.white,
    ),
  );
}
