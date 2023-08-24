import 'package:project_management_web_and_mobile/app/error/failure.dart';
import 'package:project_management_web_and_mobile/feature/auth/model/auth_response.dart';
import 'package:dartz/dartz.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/model/dashboard_info.dart';
import 'package:project_management_web_and_mobile/feature/project/model/create_project/create_project_response.dart';
import 'package:project_management_web_and_mobile/feature/project/model/delete_project/delete_project_response.dart';
import 'package:project_management_web_and_mobile/feature/project/model/project_list/project_list_response.dart';
import 'package:project_management_web_and_mobile/feature/settings/model/change_password_response.dart';
import 'package:project_management_web_and_mobile/feature/tasks/model/task_model.dart';

typedef GetAuthResponse = Future<Either<Failure, AuthResponse>>;

typedef GetDashboardResponse = Future<Either<Failure, DashboardInfoResponse>>;

typedef GetProjectListResponse = Future<Either<Failure, ProjectListResponse>>;

typedef GetCreateProjectResponse
    = Future<Either<Failure, CreateProjectResponse>>;

typedef GetDeleteProjectResponse
    = Future<Either<Failure, DeleteProjectResponse>>;

typedef GetChangePasswordResponse
    = Future<Either<Failure, ChangePasswordResponse>>;

typedef GetTasksListResponse = Future<Either<Failure, TasksListResponse>>;
