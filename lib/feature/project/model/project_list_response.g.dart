// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectListResponse _$$_ProjectListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProjectListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => ProjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_ProjectListResponseToJson(
        _$_ProjectListResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_$_ProjectModel _$$_ProjectModelFromJson(Map<String, dynamic> json) =>
    _$_ProjectModel(
      projectId: json['project_id'] as String,
      projectName: json['project_name'] as String,
      sprints: (json['sprints'] as List<dynamic>)
          .map((e) => SprintModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      members: (json['members'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProjectModelToJson(_$_ProjectModel instance) =>
    <String, dynamic>{
      'project_id': instance.projectId,
      'project_name': instance.projectName,
      'sprints': instance.sprints,
      'members': instance.members,
    };

_$_SprintModel _$$_SprintModelFromJson(Map<String, dynamic> json) =>
    _$_SprintModel(
      sprintId: json['sprint_id'] as String,
      sprintName: json['sprint_name'] as String,
      tickets: (json['tickets'] as List<dynamic>)
          .map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SprintModelToJson(_$_SprintModel instance) =>
    <String, dynamic>{
      'sprint_id': instance.sprintId,
      'sprint_name': instance.sprintName,
      'tickets': instance.tickets,
    };

_$_TicketModel _$$_TicketModelFromJson(Map<String, dynamic> json) =>
    _$_TicketModel(
      id: json['id'] as String,
      title: json['title'] as String,
      logs: json['logs'] as String?,
      weight: json['weight'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      closedAt: json['closedAt'] as String,
      assignedTo:
          UserModel.fromJson(json['assignedTo'] as Map<String, dynamic>),
      ticketStatus: json['ticketStatus'] as String,
    );

Map<String, dynamic> _$$_TicketModelToJson(_$_TicketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'logs': instance.logs,
      'weight': instance.weight,
      'createdAt': instance.createdAt.toIso8601String(),
      'closedAt': instance.closedAt,
      'assignedTo': instance.assignedTo,
      'ticketStatus': instance.ticketStatus,
    };
