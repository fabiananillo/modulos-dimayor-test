// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DivisionModel _$DivisionModelFromJson(Map<String, dynamic> json) {
  return _DivisionModel.fromJson(json);
}

/// @nodoc
mixin _$DivisionModel {
  String get type => throw _privateConstructorUsedError;
  List<dynamic> get ranking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DivisionModelCopyWith<DivisionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionModelCopyWith<$Res> {
  factory $DivisionModelCopyWith(
          DivisionModel value, $Res Function(DivisionModel) then) =
      _$DivisionModelCopyWithImpl<$Res, DivisionModel>;
  @useResult
  $Res call({String type, List<dynamic> ranking});
}

/// @nodoc
class _$DivisionModelCopyWithImpl<$Res, $Val extends DivisionModel>
    implements $DivisionModelCopyWith<$Res> {
  _$DivisionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? ranking = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      ranking: null == ranking
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DivisionModelCopyWith<$Res>
    implements $DivisionModelCopyWith<$Res> {
  factory _$$_DivisionModelCopyWith(
          _$_DivisionModel value, $Res Function(_$_DivisionModel) then) =
      __$$_DivisionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<dynamic> ranking});
}

/// @nodoc
class __$$_DivisionModelCopyWithImpl<$Res>
    extends _$DivisionModelCopyWithImpl<$Res, _$_DivisionModel>
    implements _$$_DivisionModelCopyWith<$Res> {
  __$$_DivisionModelCopyWithImpl(
      _$_DivisionModel _value, $Res Function(_$_DivisionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? ranking = null,
  }) {
    return _then(_$_DivisionModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      ranking: null == ranking
          ? _value._ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DivisionModel implements _DivisionModel {
  const _$_DivisionModel(
      {required this.type, required final List<dynamic> ranking})
      : _ranking = ranking;

  factory _$_DivisionModel.fromJson(Map<String, dynamic> json) =>
      _$$_DivisionModelFromJson(json);

  @override
  final String type;
  final List<dynamic> _ranking;
  @override
  List<dynamic> get ranking {
    if (_ranking is EqualUnmodifiableListView) return _ranking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ranking);
  }

  @override
  String toString() {
    return 'DivisionModel(type: $type, ranking: $ranking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DivisionModel &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._ranking, _ranking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_ranking));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DivisionModelCopyWith<_$_DivisionModel> get copyWith =>
      __$$_DivisionModelCopyWithImpl<_$_DivisionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DivisionModelToJson(
      this,
    );
  }
}

abstract class _DivisionModel implements DivisionModel {
  const factory _DivisionModel(
      {required final String type,
      required final List<dynamic> ranking}) = _$_DivisionModel;

  factory _DivisionModel.fromJson(Map<String, dynamic> json) =
      _$_DivisionModel.fromJson;

  @override
  String get type;
  @override
  List<dynamic> get ranking;
  @override
  @JsonKey(ignore: true)
  _$$_DivisionModelCopyWith<_$_DivisionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
