// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stages_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StageModel _$StageModelFromJson(Map<String, dynamic> json) {
  return _StageModel.fromJson(json);
}

/// @nodoc
mixin _$StageModel {
  String get name => throw _privateConstructorUsedError;
  List<dynamic> get division => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StageModelCopyWith<StageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageModelCopyWith<$Res> {
  factory $StageModelCopyWith(
          StageModel value, $Res Function(StageModel) then) =
      _$StageModelCopyWithImpl<$Res, StageModel>;
  @useResult
  $Res call({String name, List<dynamic> division});
}

/// @nodoc
class _$StageModelCopyWithImpl<$Res, $Val extends StageModel>
    implements $StageModelCopyWith<$Res> {
  _$StageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? division = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StageModelCopyWith<$Res>
    implements $StageModelCopyWith<$Res> {
  factory _$$_StageModelCopyWith(
          _$_StageModel value, $Res Function(_$_StageModel) then) =
      __$$_StageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<dynamic> division});
}

/// @nodoc
class __$$_StageModelCopyWithImpl<$Res>
    extends _$StageModelCopyWithImpl<$Res, _$_StageModel>
    implements _$$_StageModelCopyWith<$Res> {
  __$$_StageModelCopyWithImpl(
      _$_StageModel _value, $Res Function(_$_StageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? division = null,
  }) {
    return _then(_$_StageModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      division: null == division
          ? _value._division
          : division // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StageModel implements _StageModel {
  const _$_StageModel(
      {required this.name, required final List<dynamic> division})
      : _division = division;

  factory _$_StageModel.fromJson(Map<String, dynamic> json) =>
      _$$_StageModelFromJson(json);

  @override
  final String name;
  final List<dynamic> _division;
  @override
  List<dynamic> get division {
    if (_division is EqualUnmodifiableListView) return _division;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_division);
  }

  @override
  String toString() {
    return 'StageModel(name: $name, division: $division)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StageModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._division, _division));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_division));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StageModelCopyWith<_$_StageModel> get copyWith =>
      __$$_StageModelCopyWithImpl<_$_StageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StageModelToJson(
      this,
    );
  }
}

abstract class _StageModel implements StageModel {
  const factory _StageModel(
      {required final String name,
      required final List<dynamic> division}) = _$_StageModel;

  factory _StageModel.fromJson(Map<String, dynamic> json) =
      _$_StageModel.fromJson;

  @override
  String get name;
  @override
  List<dynamic> get division;
  @override
  @JsonKey(ignore: true)
  _$$_StageModelCopyWith<_$_StageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
