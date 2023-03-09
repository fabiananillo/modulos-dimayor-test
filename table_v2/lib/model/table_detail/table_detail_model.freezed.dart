// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TableDetailModel _$TableDetailModelFromJson(Map<String, dynamic> json) {
  return _TableDetailModel.fromJson(json);
}

/// @nodoc
mixin _$TableDetailModel {
  Map<String, dynamic> get sport => throw _privateConstructorUsedError;
  Map<String, dynamic> get ruleset => throw _privateConstructorUsedError;
  Map<String, dynamic> get competition => throw _privateConstructorUsedError;
  Map<String, dynamic> get tournamentCalendar =>
      throw _privateConstructorUsedError;
  String get legend => throw _privateConstructorUsedError;
  List<dynamic> get stage => throw _privateConstructorUsedError;
  dynamic get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableDetailModelCopyWith<TableDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableDetailModelCopyWith<$Res> {
  factory $TableDetailModelCopyWith(
          TableDetailModel value, $Res Function(TableDetailModel) then) =
      _$TableDetailModelCopyWithImpl<$Res, TableDetailModel>;
  @useResult
  $Res call(
      {Map<String, dynamic> sport,
      Map<String, dynamic> ruleset,
      Map<String, dynamic> competition,
      Map<String, dynamic> tournamentCalendar,
      String legend,
      List<dynamic> stage,
      dynamic required});
}

/// @nodoc
class _$TableDetailModelCopyWithImpl<$Res, $Val extends TableDetailModel>
    implements $TableDetailModelCopyWith<$Res> {
  _$TableDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sport = null,
    Object? ruleset = null,
    Object? competition = null,
    Object? tournamentCalendar = null,
    Object? legend = null,
    Object? stage = null,
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      ruleset: null == ruleset
          ? _value.ruleset
          : ruleset // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      competition: null == competition
          ? _value.competition
          : competition // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      tournamentCalendar: null == tournamentCalendar
          ? _value.tournamentCalendar
          : tournamentCalendar // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      legend: null == legend
          ? _value.legend
          : legend // ignore: cast_nullable_to_non_nullable
              as String,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TableDetailModelCopyWith<$Res>
    implements $TableDetailModelCopyWith<$Res> {
  factory _$$_TableDetailModelCopyWith(
          _$_TableDetailModel value, $Res Function(_$_TableDetailModel) then) =
      __$$_TableDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> sport,
      Map<String, dynamic> ruleset,
      Map<String, dynamic> competition,
      Map<String, dynamic> tournamentCalendar,
      String legend,
      List<dynamic> stage,
      dynamic required});
}

/// @nodoc
class __$$_TableDetailModelCopyWithImpl<$Res>
    extends _$TableDetailModelCopyWithImpl<$Res, _$_TableDetailModel>
    implements _$$_TableDetailModelCopyWith<$Res> {
  __$$_TableDetailModelCopyWithImpl(
      _$_TableDetailModel _value, $Res Function(_$_TableDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sport = null,
    Object? ruleset = null,
    Object? competition = null,
    Object? tournamentCalendar = null,
    Object? legend = null,
    Object? stage = null,
    Object? required = freezed,
  }) {
    return _then(_$_TableDetailModel(
      sport: null == sport
          ? _value._sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      ruleset: null == ruleset
          ? _value._ruleset
          : ruleset // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      competition: null == competition
          ? _value._competition
          : competition // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      tournamentCalendar: null == tournamentCalendar
          ? _value._tournamentCalendar
          : tournamentCalendar // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      legend: null == legend
          ? _value.legend
          : legend // ignore: cast_nullable_to_non_nullable
              as String,
      stage: null == stage
          ? _value._stage
          : stage // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TableDetailModel implements _TableDetailModel {
  const _$_TableDetailModel(
      {required final Map<String, dynamic> sport,
      required final Map<String, dynamic> ruleset,
      required final Map<String, dynamic> competition,
      required final Map<String, dynamic> tournamentCalendar,
      required this.legend,
      required final List<dynamic> stage,
      this.required})
      : _sport = sport,
        _ruleset = ruleset,
        _competition = competition,
        _tournamentCalendar = tournamentCalendar,
        _stage = stage;

  factory _$_TableDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_TableDetailModelFromJson(json);

  final Map<String, dynamic> _sport;
  @override
  Map<String, dynamic> get sport {
    if (_sport is EqualUnmodifiableMapView) return _sport;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sport);
  }

  final Map<String, dynamic> _ruleset;
  @override
  Map<String, dynamic> get ruleset {
    if (_ruleset is EqualUnmodifiableMapView) return _ruleset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ruleset);
  }

  final Map<String, dynamic> _competition;
  @override
  Map<String, dynamic> get competition {
    if (_competition is EqualUnmodifiableMapView) return _competition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_competition);
  }

  final Map<String, dynamic> _tournamentCalendar;
  @override
  Map<String, dynamic> get tournamentCalendar {
    if (_tournamentCalendar is EqualUnmodifiableMapView)
      return _tournamentCalendar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tournamentCalendar);
  }

  @override
  final String legend;
  final List<dynamic> _stage;
  @override
  List<dynamic> get stage {
    if (_stage is EqualUnmodifiableListView) return _stage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stage);
  }

  @override
  final dynamic required;

  @override
  String toString() {
    return 'TableDetailModel(sport: $sport, ruleset: $ruleset, competition: $competition, tournamentCalendar: $tournamentCalendar, legend: $legend, stage: $stage, required: $required)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableDetailModel &&
            const DeepCollectionEquality().equals(other._sport, _sport) &&
            const DeepCollectionEquality().equals(other._ruleset, _ruleset) &&
            const DeepCollectionEquality()
                .equals(other._competition, _competition) &&
            const DeepCollectionEquality()
                .equals(other._tournamentCalendar, _tournamentCalendar) &&
            (identical(other.legend, legend) || other.legend == legend) &&
            const DeepCollectionEquality().equals(other._stage, _stage) &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sport),
      const DeepCollectionEquality().hash(_ruleset),
      const DeepCollectionEquality().hash(_competition),
      const DeepCollectionEquality().hash(_tournamentCalendar),
      legend,
      const DeepCollectionEquality().hash(_stage),
      const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TableDetailModelCopyWith<_$_TableDetailModel> get copyWith =>
      __$$_TableDetailModelCopyWithImpl<_$_TableDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableDetailModelToJson(
      this,
    );
  }
}

abstract class _TableDetailModel implements TableDetailModel {
  const factory _TableDetailModel(
      {required final Map<String, dynamic> sport,
      required final Map<String, dynamic> ruleset,
      required final Map<String, dynamic> competition,
      required final Map<String, dynamic> tournamentCalendar,
      required final String legend,
      required final List<dynamic> stage,
      final dynamic required}) = _$_TableDetailModel;

  factory _TableDetailModel.fromJson(Map<String, dynamic> json) =
      _$_TableDetailModel.fromJson;

  @override
  Map<String, dynamic> get sport;
  @override
  Map<String, dynamic> get ruleset;
  @override
  Map<String, dynamic> get competition;
  @override
  Map<String, dynamic> get tournamentCalendar;
  @override
  String get legend;
  @override
  List<dynamic> get stage;
  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$_TableDetailModelCopyWith<_$_TableDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
