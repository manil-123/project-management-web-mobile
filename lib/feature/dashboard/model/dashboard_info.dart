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
    required int totalProjects,
    required int totalSprints,
    required int totalMembers,
    required int totalTickets,
  }) = _DashboardInfo;

  factory DashboardInfo.fromJson(Map<String, dynamic> json) =>
      _$DashboardInfoFromJson(json);
}
