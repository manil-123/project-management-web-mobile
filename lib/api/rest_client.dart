import 'package:dio/dio.dart';
import 'package:project_management_web_and_mobile/app/constants/api_endpoints.dart';
import 'package:project_management_web_and_mobile/feature/auth/model/auth_response.dart';
import 'package:project_management_web_and_mobile/feature/dashboard/model/dashboard_info.dart';
import 'package:project_management_web_and_mobile/feature/project/model/create_project/create_project_response.dart';
import 'package:project_management_web_and_mobile/feature/project/model/delete_project/delete_project_response.dart';
import 'package:project_management_web_and_mobile/feature/project/model/project_list/project_list_response.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @POST(ApiEndpoints.registerUrl)
  Future<AuthResponse> register({
    @Field('username') required String username,
    @Field('password') required String password,
  });

  @POST(ApiEndpoints.loginUrl)
  Future<AuthResponse> login({
    @Field('username') required String username,
    @Field('password') required String password,
  });

  @GET(ApiEndpoints.dashboardUrl)
  Future<DashboardInfoResponse> getDashboardInfo();

  //--------- Projects -----------//
  @GET(ApiEndpoints.projectListUrl)
  Future<ProjectListResponse> getProjectList();

  @POST(ApiEndpoints.createProjectUrl)
  Future<CreateProjectResponse> createProject({
    @Field('project_name') required String projectName,
  });

  @POST(ApiEndpoints.deleteProjectUrl)
  Future<DeleteProjectResponse> deleteProject({
    @Field('project_id') required String projectId,
  });
}
