// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardInfoResponse _$DashboardInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _DashboardInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$DashboardInfoResponse {
  bool get success => throw _privateConstructorUsedError;
  DashboardInfo get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardInfoResponseCopyWith<DashboardInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardInfoResponseCopyWith<$Res> {
  factory $DashboardInfoResponseCopyWith(DashboardInfoResponse value,
          $Res Function(DashboardInfoResponse) then) =
      _$DashboardInfoResponseCopyWithImpl<$Res, DashboardInfoResponse>;
  @useResult
  $Res call({bool success, DashboardInfo data, String message});

  $DashboardInfoCopyWith<$Res> get data;
}

/// @nodoc
class _$DashboardInfoResponseCopyWithImpl<$Res,
        $Val extends DashboardInfoResponse>
    implements $DashboardInfoResponseCopyWith<$Res> {
  _$DashboardInfoResponseCopyWithImpl(this._value, this._then);

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
              as DashboardInfo,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DashboardInfoCopyWith<$Res> get data {
    return $DashboardInfoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DashboardInfoResponseCopyWith<$Res>
    implements $DashboardInfoResponseCopyWith<$Res> {
  factory _$$_DashboardInfoResponseCopyWith(_$_DashboardInfoResponse value,
          $Res Function(_$_DashboardInfoResponse) then) =
      __$$_DashboardInfoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, DashboardInfo data, String message});

  @override
  $DashboardInfoCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DashboardInfoResponseCopyWithImpl<$Res>
    extends _$DashboardInfoResponseCopyWithImpl<$Res, _$_DashboardInfoResponse>
    implements _$$_DashboardInfoResponseCopyWith<$Res> {
  __$$_DashboardInfoResponseCopyWithImpl(_$_DashboardInfoResponse _value,
      $Res Function(_$_DashboardInfoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_DashboardInfoResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DashboardInfo,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DashboardInfoResponse implements _DashboardInfoResponse {
  const _$_DashboardInfoResponse(
      {required this.success, required this.data, required this.message});

  factory _$_DashboardInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DashboardInfoResponseFromJson(json);

  @override
  final bool success;
  @override
  final DashboardInfo data;
  @override
  final String message;

  @override
  String toString() {
    return 'DashboardInfoResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardInfoResponse &&
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
  _$$_DashboardInfoResponseCopyWith<_$_DashboardInfoResponse> get copyWith =>
      __$$_DashboardInfoResponseCopyWithImpl<_$_DashboardInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DashboardInfoResponseToJson(
      this,
    );
  }
}

abstract class _DashboardInfoResponse implements DashboardInfoResponse {
  const factory _DashboardInfoResponse(
      {required final bool success,
      required final DashboardInfo data,
      required final String message}) = _$_DashboardInfoResponse;

  factory _DashboardInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_DashboardInfoResponse.fromJson;

  @override
  bool get success;
  @override
  DashboardInfo get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardInfoResponseCopyWith<_$_DashboardInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DashboardInfo _$DashboardInfoFromJson(Map<String, dynamic> json) {
  return _DashboardInfo.fromJson(json);
}

/// @nodoc
mixin _$DashboardInfo {
  @JsonKey(name: 'total_projects')
  int get totalProjects => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_sprints')
  int get totalSprints => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_members')
  int get totalMembers => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tickets')
  int get totalTickets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardInfoCopyWith<DashboardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardInfoCopyWith<$Res> {
  factory $DashboardInfoCopyWith(
          DashboardInfo value, $Res Function(DashboardInfo) then) =
      _$DashboardInfoCopyWithImpl<$Res, DashboardInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_projects') int totalProjects,
      @JsonKey(name: 'total_sprints') int totalSprints,
      @JsonKey(name: 'total_members') int totalMembers,
      @JsonKey(name: 'total_tickets') int totalTickets});
}

/// @nodoc
class _$DashboardInfoCopyWithImpl<$Res, $Val extends DashboardInfo>
    implements $DashboardInfoCopyWith<$Res> {
  _$DashboardInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalProjects = null,
    Object? totalSprints = null,
    Object? totalMembers = null,
    Object? totalTickets = null,
  }) {
    return _then(_value.copyWith(
      totalProjects: null == totalProjects
          ? _value.totalProjects
          : totalProjects // ignore: cast_nullable_to_non_nullable
              as int,
      totalSprints: null == totalSprints
          ? _value.totalSprints
          : totalSprints // ignore: cast_nullable_to_non_nullable
              as int,
      totalMembers: null == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int,
      totalTickets: null == totalTickets
          ? _value.totalTickets
          : totalTickets // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DashboardInfoCopyWith<$Res>
    implements $DashboardInfoCopyWith<$Res> {
  factory _$$_DashboardInfoCopyWith(
          _$_DashboardInfo value, $Res Function(_$_DashboardInfo) then) =
      __$$_DashboardInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_projects') int totalProjects,
      @JsonKey(name: 'total_sprints') int totalSprints,
      @JsonKey(name: 'total_members') int totalMembers,
      @JsonKey(name: 'total_tickets') int totalTickets});
}

/// @nodoc
class __$$_DashboardInfoCopyWithImpl<$Res>
    extends _$DashboardInfoCopyWithImpl<$Res, _$_DashboardInfo>
    implements _$$_DashboardInfoCopyWith<$Res> {
  __$$_DashboardInfoCopyWithImpl(
      _$_DashboardInfo _value, $Res Function(_$_DashboardInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalProjects = null,
    Object? totalSprints = null,
    Object? totalMembers = null,
    Object? totalTickets = null,
  }) {
    return _then(_$_DashboardInfo(
      totalProjects: null == totalProjects
          ? _value.totalProjects
          : totalProjects // ignore: cast_nullable_to_non_nullable
              as int,
      totalSprints: null == totalSprints
          ? _value.totalSprints
          : totalSprints // ignore: cast_nullable_to_non_nullable
              as int,
      totalMembers: null == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int,
      totalTickets: null == totalTickets
          ? _value.totalTickets
          : totalTickets // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DashboardInfo implements _DashboardInfo {
  const _$_DashboardInfo(
      {@JsonKey(name: 'total_projects') required this.totalProjects,
      @JsonKey(name: 'total_sprints') required this.totalSprints,
      @JsonKey(name: 'total_members') required this.totalMembers,
      @JsonKey(name: 'total_tickets') required this.totalTickets});

  factory _$_DashboardInfo.fromJson(Map<String, dynamic> json) =>
      _$$_DashboardInfoFromJson(json);

  @override
  @JsonKey(name: 'total_projects')
  final int totalProjects;
  @override
  @JsonKey(name: 'total_sprints')
  final int totalSprints;
  @override
  @JsonKey(name: 'total_members')
  final int totalMembers;
  @override
  @JsonKey(name: 'total_tickets')
  final int totalTickets;

  @override
  String toString() {
    return 'DashboardInfo(totalProjects: $totalProjects, totalSprints: $totalSprints, totalMembers: $totalMembers, totalTickets: $totalTickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardInfo &&
            (identical(other.totalProjects, totalProjects) ||
                other.totalProjects == totalProjects) &&
            (identical(other.totalSprints, totalSprints) ||
                other.totalSprints == totalSprints) &&
            (identical(other.totalMembers, totalMembers) ||
                other.totalMembers == totalMembers) &&
            (identical(other.totalTickets, totalTickets) ||
                other.totalTickets == totalTickets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalProjects, totalSprints, totalMembers, totalTickets);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardInfoCopyWith<_$_DashboardInfo> get copyWith =>
      __$$_DashboardInfoCopyWithImpl<_$_DashboardInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DashboardInfoToJson(
      this,
    );
  }
}

abstract class _DashboardInfo implements DashboardInfo {
  const factory _DashboardInfo(
          {@JsonKey(name: 'total_projects') required final int totalProjects,
          @JsonKey(name: 'total_sprints') required final int totalSprints,
          @JsonKey(name: 'total_members') required final int totalMembers,
          @JsonKey(name: 'total_tickets') required final int totalTickets}) =
      _$_DashboardInfo;

  factory _DashboardInfo.fromJson(Map<String, dynamic> json) =
      _$_DashboardInfo.fromJson;

  @override
  @JsonKey(name: 'total_projects')
  int get totalProjects;
  @override
  @JsonKey(name: 'total_sprints')
  int get totalSprints;
  @override
  @JsonKey(name: 'total_members')
  int get totalMembers;
  @override
  @JsonKey(name: 'total_tickets')
  int get totalTickets;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardInfoCopyWith<_$_DashboardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
