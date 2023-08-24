// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TasksListResponse _$$_TasksListResponseFromJson(Map<String, dynamic> json) =>
    _$_TasksListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_TasksListResponseToJson(
        _$_TasksListResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      id: json['id'] as String,
      title: json['title'] as String,
      logs: json['logs'] as String?,
      weight: json['weight'] as int?,
      createdAt: json['createdAt'] as String?,
      closedAt: json['closedAt'] as String?,
      assignedTo: json['assignedTo'] == null
          ? null
          : UserModel.fromJson(json['assignedTo'] as Map<String, dynamic>),
      ticketStatus: json['ticketStatus'] as String?,
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'logs': instance.logs,
      'weight': instance.weight,
      'createdAt': instance.createdAt,
      'closedAt': instance.closedAt,
      'assignedTo': instance.assignedTo,
      'ticketStatus': instance.ticketStatus,
    };
