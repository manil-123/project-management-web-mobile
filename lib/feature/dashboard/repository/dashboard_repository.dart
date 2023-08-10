import 'package:dartz/dartz.dart';
import 'package:project_management_web_and_mobile/api/api_helper.dart';
import 'package:project_management_web_and_mobile/api/network_exceptions.dart';
import 'package:project_management_web_and_mobile/api/rest_client.dart';
import 'package:project_management_web_and_mobile/app/error/failure.dart';
import 'package:project_management_web_and_mobile/app/typedef/typedef.dart';

abstract class DashboardRepository {
  GetDashboardResponse getDashboardInfo();
}

class DashboardRepositoryImpl implements DashboardRepository {
  DashboardRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;
  final RestClient _restClient;

  @override
  GetDashboardResponse getDashboardInfo() {
    return runApiZoned(
      fn: () async {
        final response = await _restClient.getDashboardInfo();
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
