import 'package:dartz/dartz.dart';
import 'package:project_management_web_and_mobile/api/api_helper.dart';
import 'package:project_management_web_and_mobile/api/network_exceptions.dart';
import 'package:project_management_web_and_mobile/api/rest_client.dart';
import 'package:project_management_web_and_mobile/app/error/failure.dart';
import 'package:project_management_web_and_mobile/app/typedef/typedef.dart';
import 'dart:developer';

abstract class AuthRepository {
  GetAuthResponse register(String username, String password);
  GetAuthResponse login(String username, String password);
}

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;
  final RestClient _restClient;

  @override
  GetAuthResponse register(String username, String password) {
    return runApiZoned(
      fn: () async {
        final response =
            await _restClient.login(username: username, password: password);
        log("response $response");
        if (response.success == true) {
          return Right(response);
        } else {
          return Left(Failure(
            errorMessage: response.message,
          ));
        }
      },
      exceptionHandler: (error) {
        return Left(
          Failure(
            errorMessage: NetworkExceptions.handleErrorToString(error),
          ),
        );
      },
    );
  }

  @override
  GetAuthResponse login(String username, String password) {
    return runApiZoned(
      fn: () async {
        final response =
            await _restClient.login(username: username, password: password);
        log("response $response");
        if (response.success == true) {
          return Right(response);
        } else {
          return Left(Failure(
            errorMessage: response.message,
          ));
        }
      },
      exceptionHandler: (error) {
        return Left(
          Failure(
            errorMessage: NetworkExceptions.handleErrorToString(error),
          ),
        );
      },
    );
  }
}
