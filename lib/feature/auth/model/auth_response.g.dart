// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthResponse _$$_AuthResponseFromJson(Map<String, dynamic> json) =>
    _$_AuthResponse(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : UserModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_AuthResponseToJson(_$_AuthResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      userId: json['user_id'] as String,
      username: json['username'] as String,
      profilePic: json['profilePic'] as String,
      isAdmin: json['isAdmin'] as bool,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
      'profilePic': instance.profilePic,
      'isAdmin': instance.isAdmin,
    };
