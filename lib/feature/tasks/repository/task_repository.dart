import 'package:dartz/dartz.dart';
import 'package:project_management_web_and_mobile/api/api_helper.dart';
import 'package:project_management_web_and_mobile/api/network_exceptions.dart';
import 'package:project_management_web_and_mobile/api/rest_client.dart';
import 'package:project_management_web_and_mobile/app/error/failure.dart';
import 'package:project_management_web_and_mobile/app/typedef/typedef.dart';

abstract class TaskRepository {
  GetTasksListResponse getAllTasks();
}

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;
  final RestClient _restClient;

  @override
  GetTasksListResponse getAllTasks() {
    return runApiZoned(
      fn: () async {
        final response = await _restClient.getAllTasks();
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
