// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_project_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateProjectResponse _$CreateProjectResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateProjectResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateProjectResponse {
  @JsonKey(name: "success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  ProjectModel get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProjectResponseCopyWith<CreateProjectResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectResponseCopyWith<$Res> {
  factory $CreateProjectResponseCopyWith(CreateProjectResponse value,
          $Res Function(CreateProjectResponse) then) =
      _$CreateProjectResponseCopyWithImpl<$Res, CreateProjectResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool success,
      @JsonKey(name: "data") ProjectModel data,
      @JsonKey(name: "message") String message});

  $ProjectModelCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateProjectResponseCopyWithImpl<$Res,
        $Val extends CreateProjectResponse>
    implements $CreateProjectResponseCopyWith<$Res> {
  _$CreateProjectResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProjectModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectModelCopyWith<$Res> get data {
    return $ProjectModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateProjectResponseCopyWith<$Res>
    implements $CreateProjectResponseCopyWith<$Res> {
  factory _$$_CreateProjectResponseCopyWith(_$_CreateProjectResponse value,
          $Res Function(_$_CreateProjectResponse) then) =
      __$$_CreateProjectResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool success,
      @JsonKey(name: "data") ProjectModel data,
      @JsonKey(name: "message") String message});

  @override
  $ProjectModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CreateProjectResponseCopyWithImpl<$Res>
    extends _$CreateProjectResponseCopyWithImpl<$Res, _$_CreateProjectResponse>
    implements _$$_CreateProjectResponseCopyWith<$Res> {
  __$$_CreateProjectResponseCopyWithImpl(_$_CreateProjectResponse _value,
      $Res Function(_$_CreateProjectResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_CreateProjectResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProjectModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateProjectResponse implements _CreateProjectResponse {
  const _$_CreateProjectResponse(
      {@JsonKey(name: "success") required this.success,
      @JsonKey(name: "data") required this.data,
      @JsonKey(name: "message") required this.message});

  factory _$_CreateProjectResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateProjectResponseFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool success;
  @override
  @JsonKey(name: "data")
  final ProjectModel data;
  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'CreateProjectResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateProjectResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateProjectResponseCopyWith<_$_CreateProjectResponse> get copyWith =>
      __$$_CreateProjectResponseCopyWithImpl<_$_CreateProjectResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateProjectResponseToJson(
      this,
    );
  }
}

abstract class _CreateProjectResponse implements CreateProjectResponse {
  const factory _CreateProjectResponse(
          {@JsonKey(name: "success") required final bool success,
          @JsonKey(name: "data") required final ProjectModel data,
          @JsonKey(name: "message") required final String message}) =
      _$_CreateProjectResponse;

  factory _CreateProjectResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateProjectResponse.fromJson;

  @override
  @JsonKey(name: "success")
  bool get success;
  @override
  @JsonKey(name: "data")
  ProjectModel get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_CreateProjectResponseCopyWith<_$_CreateProjectResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
