import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:project_management_web_and_mobile/api/api_helper.dart';
import 'package:project_management_web_and_mobile/api/network_exceptions.dart';
import 'package:project_management_web_and_mobile/api/rest_client.dart';
import 'package:project_management_web_and_mobile/app/error/failure.dart';
import 'package:project_management_web_and_mobile/app/typedef/typedef.dart';

abstract class ProjectRepository {
  GetProjectListResponse getProjectList();
  GetCreateProjectResponse createProject(String projectName);
  GetDeleteProjectResponse deleteProject(String projectId);
}

class ProjectRepositoryImpl implements ProjectRepository {
  ProjectRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;
  final RestClient _restClient;

  @override
  GetProjectListResponse getProjectList() {
    return runApiZoned(
      fn: () async {
        final response = await _restClient.getProjectList();
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
  GetCreateProjectResponse createProject(String projectName) {
    return runApiZoned(
      fn: () async {
        final response =
            await _restClient.createProject(projectName: projectName);
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
  GetDeleteProjectResponse deleteProject(String projectId) {
    return runApiZoned(
      fn: () async {
        final response = await _restClient.deleteProject(projectId: projectId);
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
