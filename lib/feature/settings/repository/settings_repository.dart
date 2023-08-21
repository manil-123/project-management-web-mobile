import 'package:dartz/dartz.dart';
import 'package:project_management_web_and_mobile/api/api_helper.dart';
import 'package:project_management_web_and_mobile/api/network_exceptions.dart';
import 'package:project_management_web_and_mobile/api/rest_client.dart';
import 'package:project_management_web_and_mobile/app/error/failure.dart';
import 'package:project_management_web_and_mobile/app/typedef/typedef.dart';

abstract class SettingsRepository {
  GetChangePasswordResponse changePassword(
      String userId, String oldPassword, String newPassword);
}

class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;
  final RestClient _restClient;

  @override
  GetChangePasswordResponse changePassword(
      String userId, String oldPassword, String newPassword) {
    return runApiZoned(
      fn: () async {
        final response = await _restClient.changePassword(
            id: userId, oldPassword: oldPassword, newPassword: newPassword);
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
