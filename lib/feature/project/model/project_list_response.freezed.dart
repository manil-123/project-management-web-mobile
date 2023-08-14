// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectListResponse _$ProjectListResponseFromJson(Map<String, dynamic> json) {
  return _ProjectListResponse.fromJson(json);
}

/// @nodoc
mixin _$ProjectListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<ProjectModel> get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectListResponseCopyWith<ProjectListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectListResponseCopyWith<$Res> {
  factory $ProjectListResponseCopyWith(
          ProjectListResponse value, $Res Function(ProjectListResponse) then) =
      _$ProjectListResponseCopyWithImpl<$Res, ProjectListResponse>;
  @useResult
  $Res call({bool success, List<ProjectModel> data, String message});
}

/// @nodoc
class _$ProjectListResponseCopyWithImpl<$Res, $Val extends ProjectListResponse>
    implements $ProjectListResponseCopyWith<$Res> {
  _$ProjectListResponseCopyWithImpl(this._value, this._then);

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
              as List<ProjectModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectListResponseCopyWith<$Res>
    implements $ProjectListResponseCopyWith<$Res> {
  factory _$$_ProjectListResponseCopyWith(_$_ProjectListResponse value,
          $Res Function(_$_ProjectListResponse) then) =
      __$$_ProjectListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<ProjectModel> data, String message});
}

/// @nodoc
class __$$_ProjectListResponseCopyWithImpl<$Res>
    extends _$ProjectListResponseCopyWithImpl<$Res, _$_ProjectListResponse>
    implements _$$_ProjectListResponseCopyWith<$Res> {
  __$$_ProjectListResponseCopyWithImpl(_$_ProjectListResponse _value,
      $Res Function(_$_ProjectListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_ProjectListResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectListResponse implements _ProjectListResponse {
  const _$_ProjectListResponse(
      {required this.success,
      required final List<ProjectModel> data,
      required this.message})
      : _data = data;

  factory _$_ProjectListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectListResponseFromJson(json);

  @override
  final bool success;
  final List<ProjectModel> _data;
  @override
  List<ProjectModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'ProjectListResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectListResponse &&
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
  _$$_ProjectListResponseCopyWith<_$_ProjectListResponse> get copyWith =>
      __$$_ProjectListResponseCopyWithImpl<_$_ProjectListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectListResponseToJson(
      this,
    );
  }
}

abstract class _ProjectListResponse implements ProjectListResponse {
  const factory _ProjectListResponse(
      {required final bool success,
      required final List<ProjectModel> data,
      required final String message}) = _$_ProjectListResponse;

  factory _ProjectListResponse.fromJson(Map<String, dynamic> json) =
      _$_ProjectListResponse.fromJson;

  @override
  bool get success;
  @override
  List<ProjectModel> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectListResponseCopyWith<_$_ProjectListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) {
  return _ProjectModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectModel {
  @JsonKey(name: "project_id")
  String get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: "project_name")
  String get projectName => throw _privateConstructorUsedError;
  List<SprintModel> get sprints => throw _privateConstructorUsedError;
  List<UserModel> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectModelCopyWith<ProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectModelCopyWith<$Res> {
  factory $ProjectModelCopyWith(
          ProjectModel value, $Res Function(ProjectModel) then) =
      _$ProjectModelCopyWithImpl<$Res, ProjectModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "project_id") String projectId,
      @JsonKey(name: "project_name") String projectName,
      List<SprintModel> sprints,
      List<UserModel> members});
}

/// @nodoc
class _$ProjectModelCopyWithImpl<$Res, $Val extends ProjectModel>
    implements $ProjectModelCopyWith<$Res> {
  _$ProjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectName = null,
    Object? sprints = null,
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      sprints: null == sprints
          ? _value.sprints
          : sprints // ignore: cast_nullable_to_non_nullable
              as List<SprintModel>,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectModelCopyWith<$Res>
    implements $ProjectModelCopyWith<$Res> {
  factory _$$_ProjectModelCopyWith(
          _$_ProjectModel value, $Res Function(_$_ProjectModel) then) =
      __$$_ProjectModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "project_id") String projectId,
      @JsonKey(name: "project_name") String projectName,
      List<SprintModel> sprints,
      List<UserModel> members});
}

/// @nodoc
class __$$_ProjectModelCopyWithImpl<$Res>
    extends _$ProjectModelCopyWithImpl<$Res, _$_ProjectModel>
    implements _$$_ProjectModelCopyWith<$Res> {
  __$$_ProjectModelCopyWithImpl(
      _$_ProjectModel _value, $Res Function(_$_ProjectModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectName = null,
    Object? sprints = null,
    Object? members = null,
  }) {
    return _then(_$_ProjectModel(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      sprints: null == sprints
          ? _value._sprints
          : sprints // ignore: cast_nullable_to_non_nullable
              as List<SprintModel>,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectModel implements _ProjectModel {
  const _$_ProjectModel(
      {@JsonKey(name: "project_id") required this.projectId,
      @JsonKey(name: "project_name") required this.projectName,
      required final List<SprintModel> sprints,
      required final List<UserModel> members})
      : _sprints = sprints,
        _members = members;

  factory _$_ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectModelFromJson(json);

  @override
  @JsonKey(name: "project_id")
  final String projectId;
  @override
  @JsonKey(name: "project_name")
  final String projectName;
  final List<SprintModel> _sprints;
  @override
  List<SprintModel> get sprints {
    if (_sprints is EqualUnmodifiableListView) return _sprints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sprints);
  }

  final List<UserModel> _members;
  @override
  List<UserModel> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'ProjectModel(projectId: $projectId, projectName: $projectName, sprints: $sprints, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectModel &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            const DeepCollectionEquality().equals(other._sprints, _sprints) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectId,
      projectName,
      const DeepCollectionEquality().hash(_sprints),
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectModelCopyWith<_$_ProjectModel> get copyWith =>
      __$$_ProjectModelCopyWithImpl<_$_ProjectModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectModelToJson(
      this,
    );
  }
}

abstract class _ProjectModel implements ProjectModel {
  const factory _ProjectModel(
      {@JsonKey(name: "project_id") required final String projectId,
      @JsonKey(name: "project_name") required final String projectName,
      required final List<SprintModel> sprints,
      required final List<UserModel> members}) = _$_ProjectModel;

  factory _ProjectModel.fromJson(Map<String, dynamic> json) =
      _$_ProjectModel.fromJson;

  @override
  @JsonKey(name: "project_id")
  String get projectId;
  @override
  @JsonKey(name: "project_name")
  String get projectName;
  @override
  List<SprintModel> get sprints;
  @override
  List<UserModel> get members;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectModelCopyWith<_$_ProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SprintModel _$SprintModelFromJson(Map<String, dynamic> json) {
  return _SprintModel.fromJson(json);
}

/// @nodoc
mixin _$SprintModel {
  @JsonKey(name: "sprint_id")
  String get sprintId => throw _privateConstructorUsedError;
  @JsonKey(name: "sprint_name")
  String get sprintName => throw _privateConstructorUsedError;
  List<TicketModel> get tickets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SprintModelCopyWith<SprintModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SprintModelCopyWith<$Res> {
  factory $SprintModelCopyWith(
          SprintModel value, $Res Function(SprintModel) then) =
      _$SprintModelCopyWithImpl<$Res, SprintModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "sprint_id") String sprintId,
      @JsonKey(name: "sprint_name") String sprintName,
      List<TicketModel> tickets});
}

/// @nodoc
class _$SprintModelCopyWithImpl<$Res, $Val extends SprintModel>
    implements $SprintModelCopyWith<$Res> {
  _$SprintModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sprintId = null,
    Object? sprintName = null,
    Object? tickets = null,
  }) {
    return _then(_value.copyWith(
      sprintId: null == sprintId
          ? _value.sprintId
          : sprintId // ignore: cast_nullable_to_non_nullable
              as String,
      sprintName: null == sprintName
          ? _value.sprintName
          : sprintName // ignore: cast_nullable_to_non_nullable
              as String,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SprintModelCopyWith<$Res>
    implements $SprintModelCopyWith<$Res> {
  factory _$$_SprintModelCopyWith(
          _$_SprintModel value, $Res Function(_$_SprintModel) then) =
      __$$_SprintModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sprint_id") String sprintId,
      @JsonKey(name: "sprint_name") String sprintName,
      List<TicketModel> tickets});
}

/// @nodoc
class __$$_SprintModelCopyWithImpl<$Res>
    extends _$SprintModelCopyWithImpl<$Res, _$_SprintModel>
    implements _$$_SprintModelCopyWith<$Res> {
  __$$_SprintModelCopyWithImpl(
      _$_SprintModel _value, $Res Function(_$_SprintModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sprintId = null,
    Object? sprintName = null,
    Object? tickets = null,
  }) {
    return _then(_$_SprintModel(
      sprintId: null == sprintId
          ? _value.sprintId
          : sprintId // ignore: cast_nullable_to_non_nullable
              as String,
      sprintName: null == sprintName
          ? _value.sprintName
          : sprintName // ignore: cast_nullable_to_non_nullable
              as String,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SprintModel implements _SprintModel {
  const _$_SprintModel(
      {@JsonKey(name: "sprint_id") required this.sprintId,
      @JsonKey(name: "sprint_name") required this.sprintName,
      required final List<TicketModel> tickets})
      : _tickets = tickets;

  factory _$_SprintModel.fromJson(Map<String, dynamic> json) =>
      _$$_SprintModelFromJson(json);

  @override
  @JsonKey(name: "sprint_id")
  final String sprintId;
  @override
  @JsonKey(name: "sprint_name")
  final String sprintName;
  final List<TicketModel> _tickets;
  @override
  List<TicketModel> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'SprintModel(sprintId: $sprintId, sprintName: $sprintName, tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SprintModel &&
            (identical(other.sprintId, sprintId) ||
                other.sprintId == sprintId) &&
            (identical(other.sprintName, sprintName) ||
                other.sprintName == sprintName) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sprintId, sprintName,
      const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SprintModelCopyWith<_$_SprintModel> get copyWith =>
      __$$_SprintModelCopyWithImpl<_$_SprintModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SprintModelToJson(
      this,
    );
  }
}

abstract class _SprintModel implements SprintModel {
  const factory _SprintModel(
      {@JsonKey(name: "sprint_id") required final String sprintId,
      @JsonKey(name: "sprint_name") required final String sprintName,
      required final List<TicketModel> tickets}) = _$_SprintModel;

  factory _SprintModel.fromJson(Map<String, dynamic> json) =
      _$_SprintModel.fromJson;

  @override
  @JsonKey(name: "sprint_id")
  String get sprintId;
  @override
  @JsonKey(name: "sprint_name")
  String get sprintName;
  @override
  List<TicketModel> get tickets;
  @override
  @JsonKey(ignore: true)
  _$$_SprintModelCopyWith<_$_SprintModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) {
  return _TicketModel.fromJson(json);
}

/// @nodoc
mixin _$TicketModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get logs => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get closedAt => throw _privateConstructorUsedError;
  UserModel get assignedTo => throw _privateConstructorUsedError;
  String get ticketStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketModelCopyWith<TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketModelCopyWith<$Res> {
  factory $TicketModelCopyWith(
          TicketModel value, $Res Function(TicketModel) then) =
      _$TicketModelCopyWithImpl<$Res, TicketModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? logs,
      int weight,
      DateTime createdAt,
      String closedAt,
      UserModel assignedTo,
      String ticketStatus});

  $UserModelCopyWith<$Res> get assignedTo;
}

/// @nodoc
class _$TicketModelCopyWithImpl<$Res, $Val extends TicketModel>
    implements $TicketModelCopyWith<$Res> {
  _$TicketModelCopyWithImpl(this._value, this._then);

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
    Object? weight = null,
    Object? createdAt = null,
    Object? closedAt = null,
    Object? assignedTo = null,
    Object? ticketStatus = null,
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
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      closedAt: null == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as String,
      assignedTo: null == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as UserModel,
      ticketStatus: null == ticketStatus
          ? _value.ticketStatus
          : ticketStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get assignedTo {
    return $UserModelCopyWith<$Res>(_value.assignedTo, (value) {
      return _then(_value.copyWith(assignedTo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TicketModelCopyWith<$Res>
    implements $TicketModelCopyWith<$Res> {
  factory _$$_TicketModelCopyWith(
          _$_TicketModel value, $Res Function(_$_TicketModel) then) =
      __$$_TicketModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? logs,
      int weight,
      DateTime createdAt,
      String closedAt,
      UserModel assignedTo,
      String ticketStatus});

  @override
  $UserModelCopyWith<$Res> get assignedTo;
}

/// @nodoc
class __$$_TicketModelCopyWithImpl<$Res>
    extends _$TicketModelCopyWithImpl<$Res, _$_TicketModel>
    implements _$$_TicketModelCopyWith<$Res> {
  __$$_TicketModelCopyWithImpl(
      _$_TicketModel _value, $Res Function(_$_TicketModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? logs = freezed,
    Object? weight = null,
    Object? createdAt = null,
    Object? closedAt = null,
    Object? assignedTo = null,
    Object? ticketStatus = null,
  }) {
    return _then(_$_TicketModel(
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
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      closedAt: null == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as String,
      assignedTo: null == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as UserModel,
      ticketStatus: null == ticketStatus
          ? _value.ticketStatus
          : ticketStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketModel implements _TicketModel {
  const _$_TicketModel(
      {required this.id,
      required this.title,
      required this.logs,
      required this.weight,
      required this.createdAt,
      required this.closedAt,
      required this.assignedTo,
      required this.ticketStatus});

  factory _$_TicketModel.fromJson(Map<String, dynamic> json) =>
      _$$_TicketModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? logs;
  @override
  final int weight;
  @override
  final DateTime createdAt;
  @override
  final String closedAt;
  @override
  final UserModel assignedTo;
  @override
  final String ticketStatus;

  @override
  String toString() {
    return 'TicketModel(id: $id, title: $title, logs: $logs, weight: $weight, createdAt: $createdAt, closedAt: $closedAt, assignedTo: $assignedTo, ticketStatus: $ticketStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketModel &&
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
  _$$_TicketModelCopyWith<_$_TicketModel> get copyWith =>
      __$$_TicketModelCopyWithImpl<_$_TicketModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketModelToJson(
      this,
    );
  }
}

abstract class _TicketModel implements TicketModel {
  const factory _TicketModel(
      {required final String id,
      required final String title,
      required final String? logs,
      required final int weight,
      required final DateTime createdAt,
      required final String closedAt,
      required final UserModel assignedTo,
      required final String ticketStatus}) = _$_TicketModel;

  factory _TicketModel.fromJson(Map<String, dynamic> json) =
      _$_TicketModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get logs;
  @override
  int get weight;
  @override
  DateTime get createdAt;
  @override
  String get closedAt;
  @override
  UserModel get assignedTo;
  @override
  String get ticketStatus;
  @override
  @JsonKey(ignore: true)
  _$$_TicketModelCopyWith<_$_TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}
