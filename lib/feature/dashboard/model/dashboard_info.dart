// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_info.freezed.dart';
part 'dashboard_info.g.dart';

@freezed
class DashboardInfoResponse with _$DashboardInfoResponse {
  const factory DashboardInfoResponse({
    required bool success,
    required DashboardInfo data,
    required String message,
  }) = _DashboardInfoResponse;

  factory DashboardInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardInfoResponseFromJson(json);
}

@freezed
class DashboardInfo with _$DashboardInfo {
  const factory DashboardInfo({
    @JsonKey(name: 'total_projects') required int totalProjects,
    @JsonKey(name: 'total_sprints') required int totalSprints,
    @JsonKey(name: 'total_members') required int totalMembers,
    @JsonKey(name: 'total_tickets') required int totalTickets,
  }) = _DashboardInfo;

  factory DashboardInfo.fromJson(Map<String, dynamic> json) =>
      _$DashboardInfoFromJson(json);
}
