import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_management_web_and_mobile/feature/auth/model/auth_response.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TasksListResponse with _$TasksListResponse {
  const factory TasksListResponse({
    required bool success,
    required List<TaskModel> data,
    required String message,
  }) = _TasksListResponse;

  factory TasksListResponse.fromJson(Map<String, dynamic> json) =>
      _$TasksListResponseFromJson(json);
}

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String id,
    required String title,
    required String? logs,
    required int? weight,
    required String? createdAt,
    required String? closedAt,
    required UserModel? assignedTo,
    required String? ticketStatus,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
