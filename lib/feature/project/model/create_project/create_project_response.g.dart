// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_project_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateProjectResponse _$$_CreateProjectResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateProjectResponse(
      success: json['success'] as bool,
      data: ProjectModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_CreateProjectResponseToJson(
        _$_CreateProjectResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };
