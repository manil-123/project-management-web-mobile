// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_management_web_and_mobile/feature/auth/model/auth_response.dart';

part 'change_password_response.freezed.dart';
part 'change_password_response.g.dart';

@freezed
class ChangePasswordResponse with _$ChangePasswordResponse {
  const factory ChangePasswordResponse({
    required bool success,
    required UserModel? data,
    required String message,
  }) = _ChangePasswordResponse;

  factory ChangePasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordResponseFromJson(json);
}
