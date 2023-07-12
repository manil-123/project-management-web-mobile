import 'package:dio/dio.dart';
import 'package:project_management_web_and_mobile/app/constants/api_endpoints.dart';
import 'package:project_management_web_and_mobile/feature/auth/model/auth_response.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @POST(ApiEndpoints.loginUrl)
  Future<AuthResponse> login({
    @Field('username') required String username,
    @Field('password') required String password,
  });
}
