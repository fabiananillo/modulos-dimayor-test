// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shell_teams_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShellTeamsModel _$ShellTeamsModelFromJson(Map<String, dynamic> json) {
  return _ShellTeamsModel.fromJson(json);
}

/// @nodoc
mixin _$ShellTeamsModel {
  String get ulrIconShellTeam => throw _privateConstructorUsedError;
  String get idShield => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShellTeamsModelCopyWith<ShellTeamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShellTeamsModelCopyWith<$Res> {
  factory $ShellTeamsModelCopyWith(
          ShellTeamsModel value, $Res Function(ShellTeamsModel) then) =
      _$ShellTeamsModelCopyWithImpl<$Res, ShellTeamsModel>;
  @useResult
  $Res call({String ulrIconShellTeam, String idShield, String fullName});
}

/// @nodoc
class _$ShellTeamsModelCopyWithImpl<$Res, $Val extends ShellTeamsModel>
    implements $ShellTeamsModelCopyWith<$Res> {
  _$ShellTeamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ulrIconShellTeam = null,
    Object? idShield = null,
    Object? fullName = null,
  }) {
    return _then(_value.copyWith(
      ulrIconShellTeam: null == ulrIconShellTeam
          ? _value.ulrIconShellTeam
          : ulrIconShellTeam // ignore: cast_nullable_to_non_nullable
              as String,
      idShield: null == idShield
          ? _value.idShield
          : idShield // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShellTeamsModelCopyWith<$Res>
    implements $ShellTeamsModelCopyWith<$Res> {
  factory _$$_ShellTeamsModelCopyWith(
          _$_ShellTeamsModel value, $Res Function(_$_ShellTeamsModel) then) =
      __$$_ShellTeamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ulrIconShellTeam, String idShield, String fullName});
}

/// @nodoc
class __$$_ShellTeamsModelCopyWithImpl<$Res>
    extends _$ShellTeamsModelCopyWithImpl<$Res, _$_ShellTeamsModel>
    implements _$$_ShellTeamsModelCopyWith<$Res> {
  __$$_ShellTeamsModelCopyWithImpl(
      _$_ShellTeamsModel _value, $Res Function(_$_ShellTeamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ulrIconShellTeam = null,
    Object? idShield = null,
    Object? fullName = null,
  }) {
    return _then(_$_ShellTeamsModel(
      ulrIconShellTeam: null == ulrIconShellTeam
          ? _value.ulrIconShellTeam
          : ulrIconShellTeam // ignore: cast_nullable_to_non_nullable
              as String,
      idShield: null == idShield
          ? _value.idShield
          : idShield // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShellTeamsModel implements _ShellTeamsModel {
  const _$_ShellTeamsModel(
      {required this.ulrIconShellTeam,
      required this.idShield,
      required this.fullName});

  factory _$_ShellTeamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShellTeamsModelFromJson(json);

  @override
  final String ulrIconShellTeam;
  @override
  final String idShield;
  @override
  final String fullName;

  @override
  String toString() {
    return 'ShellTeamsModel(ulrIconShellTeam: $ulrIconShellTeam, idShield: $idShield, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShellTeamsModel &&
            (identical(other.ulrIconShellTeam, ulrIconShellTeam) ||
                other.ulrIconShellTeam == ulrIconShellTeam) &&
            (identical(other.idShield, idShield) ||
                other.idShield == idShield) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ulrIconShellTeam, idShield, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShellTeamsModelCopyWith<_$_ShellTeamsModel> get copyWith =>
      __$$_ShellTeamsModelCopyWithImpl<_$_ShellTeamsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShellTeamsModelToJson(
      this,
    );
  }
}

abstract class _ShellTeamsModel implements ShellTeamsModel {
  const factory _ShellTeamsModel(
      {required final String ulrIconShellTeam,
      required final String idShield,
      required final String fullName}) = _$_ShellTeamsModel;

  factory _ShellTeamsModel.fromJson(Map<String, dynamic> json) =
      _$_ShellTeamsModel.fromJson;

  @override
  String get ulrIconShellTeam;
  @override
  String get idShield;
  @override
  String get fullName;
  @override
  @JsonKey(ignore: true)
  _$$_ShellTeamsModelCopyWith<_$_ShellTeamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
