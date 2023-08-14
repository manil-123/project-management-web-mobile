// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_management_web_and_mobile/feature/auth/model/auth_response.dart';

part 'project_list_response.freezed.dart';

part 'project_list_response.g.dart';

@freezed
class ProjectListResponse with _$ProjectListResponse {
  const factory ProjectListResponse({
    required bool success,
    required List<ProjectModel> data,
    required String message,
  }) = _ProjectListResponse;

  factory ProjectListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectListResponseFromJson(json);
}

@freezed
class ProjectModel with _$ProjectModel {
  const factory ProjectModel({
    @JsonKey(name: "project_id") required String projectId,
    @JsonKey(name: "project_name") required String projectName,
    required List<SprintModel> sprints,
    required List<UserModel> members,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);
}

@freezed
class SprintModel with _$SprintModel {
  const factory SprintModel({
    @JsonKey(name: "sprint_id") required String sprintId,
    @JsonKey(name: "sprint_name") required String sprintName,
    required List<TicketModel> tickets,
  }) = _SprintModel;

  factory SprintModel.fromJson(Map<String, dynamic> json) =>
      _$SprintModelFromJson(json);
}

@freezed
class TicketModel with _$TicketModel {
  const factory TicketModel({
    required String id,
    required String title,
    required String? logs,
    required int weight,
    required DateTime createdAt,
    required String closedAt,
    required UserModel assignedTo,
    required String ticketStatus,
  }) = _TicketModel;

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);
}
