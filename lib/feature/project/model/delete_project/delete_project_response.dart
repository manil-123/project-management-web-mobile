import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_project_response.freezed.dart';
part 'delete_project_response.g.dart';

@freezed
class DeleteProjectResponse with _$DeleteProjectResponse {
  const factory DeleteProjectResponse({
    required bool success,
    required String message,
  }) = _DeleteProjectResponse;

  factory DeleteProjectResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteProjectResponseFromJson(json);
}
