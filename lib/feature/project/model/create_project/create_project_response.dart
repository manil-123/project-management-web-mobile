import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_management_web_and_mobile/feature/project/model/project_list/project_list_response.dart';

part 'create_project_response.freezed.dart';
part 'create_project_response.g.dart';

@freezed
class CreateProjectResponse with _$CreateProjectResponse {
  const factory CreateProjectResponse({
    required bool success,
    required ProjectModel? data,
    required String message,
  }) = _CreateProjectResponse;

  factory CreateProjectResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateProjectResponseFromJson(json);
}
