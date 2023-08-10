import 'package:project_management_web_and_mobile/app/error/failure.dart';
import 'package:project_management_web_and_mobile/feature/auth/model/auth_response.dart';
import 'package:dartz/dartz.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/model/dashboard_info.dart';

typedef GetAuthResponse = Future<Either<Failure, AuthResponse>>;

typedef GetDashboardResponse = Future<Either<Failure, DashboardInfoResponse>>;
