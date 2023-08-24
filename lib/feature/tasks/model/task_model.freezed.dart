// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TasksListResponse _$TasksListResponseFromJson(Map<String, dynamic> json) {
  return _TasksListResponse.fromJson(json);
}

/// @nodoc
mixin _$TasksListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<TaskModel> get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksListResponseCopyWith<TasksListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksListResponseCopyWith<$Res> {
  factory $TasksListResponseCopyWith(
          TasksListResponse value, $Res Function(TasksListResponse) then) =
      _$TasksListResponseCopyWithImpl<$Res, TasksListResponse>;
  @useResult
  $Res call({bool success, List<TaskModel> data, String message});
}

/// @nodoc
class _$TasksListResponseCopyWithImpl<$Res, $Val extends TasksListResponse>
    implements $TasksListResponseCopyWith<$Res> {
  _$TasksListResponseCopyWithImpl(this._value, this._then);

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
              as List<TaskModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TasksListResponseCopyWith<$Res>
    implements $TasksListResponseCopyWith<$Res> {
  factory _$$_TasksListResponseCopyWith(_$_TasksListResponse value,
          $Res Function(_$_TasksListResponse) then) =
      __$$_TasksListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<TaskModel> data, String message});
}

/// @nodoc
class __$$_TasksListResponseCopyWithImpl<$Res>
    extends _$TasksListResponseCopyWithImpl<$Res, _$_TasksListResponse>
    implements _$$_TasksListResponseCopyWith<$Res> {
  __$$_TasksListResponseCopyWithImpl(
      _$_TasksListResponse _value, $Res Function(_$_TasksListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_TasksListResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TasksListResponse implements _TasksListResponse {
  const _$_TasksListResponse(
      {required this.success,
      required final List<TaskModel> data,
      required this.message})
      : _data = data;

  factory _$_TasksListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TasksListResponseFromJson(json);

  @override
  final bool success;
  final List<TaskModel> _data;
  @override
  List<TaskModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'TasksListResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasksListResponse &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success,
      const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TasksListResponseCopyWith<_$_TasksListResponse> get copyWith =>
      __$$_TasksListResponseCopyWithImpl<_$_TasksListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TasksListResponseToJson(
      this,
    );
  }
}

abstract class _TasksListResponse implements TasksListResponse {
  const factory _TasksListResponse(
      {required final bool success,
      required final List<TaskModel> data,
      required final String message}) = _$_TasksListResponse;

  factory _TasksListResponse.fromJson(Map<String, dynamic> json) =
      _$_TasksListResponse.fromJson;

  @override
  bool get success;
  @override
  List<TaskModel> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_TasksListResponseCopyWith<_$_TasksListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get logs => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get closedAt => throw _privateConstructorUsedError;
  UserModel? get assignedTo => throw _privateConstructorUsedError;
  String? get ticketStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? logs,
      int? weight,
      String? createdAt,
      String? closedAt,
      UserModel? assignedTo,
      String? ticketStatus});

  $UserModelCopyWith<$Res>? get assignedTo;
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? logs = freezed,
    Object? weight = freezed,
    Object? createdAt = freezed,
    Object? closedAt = freezed,
    Object? assignedTo = freezed,
    Object? ticketStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      logs: freezed == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      closedAt: freezed == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      ticketStatus: freezed == ticketStatus
          ? _value.ticketStatus
          : ticketStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get assignedTo {
    if (_value.assignedTo == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.assignedTo!, (value) {
      return _then(_value.copyWith(assignedTo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$$_TaskModelCopyWith(
          _$_TaskModel value, $Res Function(_$_TaskModel) then) =
      __$$_TaskModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? logs,
      int? weight,
      String? createdAt,
      String? closedAt,
      UserModel? assignedTo,
      String? ticketStatus});

  @override
  $UserModelCopyWith<$Res>? get assignedTo;
}

/// @nodoc
class __$$_TaskModelCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$_TaskModel>
    implements _$$_TaskModelCopyWith<$Res> {
  __$$_TaskModelCopyWithImpl(
      _$_TaskModel _value, $Res Function(_$_TaskModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? logs = freezed,
    Object? weight = freezed,
    Object? createdAt = freezed,
    Object? closedAt = freezed,
    Object? assignedTo = freezed,
    Object? ticketStatus = freezed,
  }) {
    return _then(_$_TaskModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      logs: freezed == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      closedAt: freezed == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      ticketStatus: freezed == ticketStatus
          ? _value.ticketStatus
          : ticketStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskModel implements _TaskModel {
  const _$_TaskModel(
      {required this.id,
      required this.title,
      required this.logs,
      required this.weight,
      required this.createdAt,
      required this.closedAt,
      required this.assignedTo,
      required this.ticketStatus});

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? logs;
  @override
  final int? weight;
  @override
  final String? createdAt;
  @override
  final String? closedAt;
  @override
  final UserModel? assignedTo;
  @override
  final String? ticketStatus;

  @override
  String toString() {
    return 'TaskModel(id: $id, title: $title, logs: $logs, weight: $weight, createdAt: $createdAt, closedAt: $closedAt, assignedTo: $assignedTo, ticketStatus: $ticketStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.logs, logs) || other.logs == logs) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.closedAt, closedAt) ||
                other.closedAt == closedAt) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
            (identical(other.ticketStatus, ticketStatus) ||
                other.ticketStatus == ticketStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, logs, weight,
      createdAt, closedAt, assignedTo, ticketStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      __$$_TaskModelCopyWithImpl<_$_TaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskModelToJson(
      this,
    );
  }
}

abstract class _TaskModel implements TaskModel {
  const factory _TaskModel(
      {required final String id,
      required final String title,
      required final String? logs,
      required final int? weight,
      required final String? createdAt,
      required final String? closedAt,
      required final UserModel? assignedTo,
      required final String? ticketStatus}) = _$_TaskModel;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get logs;
  @override
  int? get weight;
  @override
  String? get createdAt;
  @override
  String? get closedAt;
  @override
  UserModel? get assignedTo;
  @override
  String? get ticketStatus;
  @override
  @JsonKey(ignore: true)
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}
