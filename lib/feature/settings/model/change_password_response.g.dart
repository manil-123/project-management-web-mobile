// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangePasswordResponse _$$_ChangePasswordResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChangePasswordResponse(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : UserModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_ChangePasswordResponseToJson(
        _$_ChangePasswordResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };
