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
      totalProjects: json['totalProjects'] as int,
      totalSprints: json['totalSprints'] as int,
      totalMembers: json['totalMembers'] as int,
      totalTickets: json['totalTickets'] as int,
    );

Map<String, dynamic> _$$_DashboardInfoToJson(_$_DashboardInfo instance) =>
    <String, dynamic>{
      'totalProjects': instance.totalProjects,
      'totalSprints': instance.totalSprints,
      'totalMembers': instance.totalMembers,
      'totalTickets': instance.totalTickets,
    };
