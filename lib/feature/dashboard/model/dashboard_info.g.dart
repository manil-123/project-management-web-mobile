// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DashboardInfoResponse _$$_DashboardInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DashboardInfoResponse(
      success: json['success'] as bool,
      data: DashboardInfo.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_DashboardInfoResponseToJson(
        _$_DashboardInfoResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_$_DashboardInfo _$$_DashboardInfoFromJson(Map<String, dynamic> json) =>
    _$_DashboardInfo(
      totalProjects: json['total_projects'] as int,
      totalSprints: json['total_sprints'] as int,
      totalMembers: json['total_members'] as int,
      totalTickets: json['total_tickets'] as int,
    );

Map<String, dynamic> _$$_DashboardInfoToJson(_$_DashboardInfo instance) =>
    <String, dynamic>{
      'total_projects': instance.totalProjects,
      'total_sprints': instance.totalSprints,
      'total_members': instance.totalMembers,
      'total_tickets': instance.totalTickets,
    };
