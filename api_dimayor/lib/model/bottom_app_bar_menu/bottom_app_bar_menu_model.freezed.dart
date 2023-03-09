// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_app_bar_menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BottomAppBarModel _$BottomAppBarModelFromJson(Map<String, dynamic> json) {
  return _BottomAppBarModel.fromJson(json);
}

/// @nodoc
mixin _$BottomAppBarModel {
  String get label => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get show => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BottomAppBarModelCopyWith<BottomAppBarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomAppBarModelCopyWith<$Res> {
  factory $BottomAppBarModelCopyWith(
          BottomAppBarModel value, $Res Function(BottomAppBarModel) then) =
      _$BottomAppBarModelCopyWithImpl<$Res, BottomAppBarModel>;
  @useResult
  $Res call(
      {String label,
      String logo,
      String type,
      String url,
      String id,
      int show});
}

/// @nodoc
class _$BottomAppBarModelCopyWithImpl<$Res, $Val extends BottomAppBarModel>
    implements $BottomAppBarModelCopyWith<$Res> {
  _$BottomAppBarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? logo = null,
    Object? type = null,
    Object? url = null,
    Object? id = null,
    Object? show = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BottomAppBarModelCopyWith<$Res>
    implements $BottomAppBarModelCopyWith<$Res> {
  factory _$$_BottomAppBarModelCopyWith(_$_BottomAppBarModel value,
          $Res Function(_$_BottomAppBarModel) then) =
      __$$_BottomAppBarModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      String logo,
      String type,
      String url,
      String id,
      int show});
}

/// @nodoc
class __$$_BottomAppBarModelCopyWithImpl<$Res>
    extends _$BottomAppBarModelCopyWithImpl<$Res, _$_BottomAppBarModel>
    implements _$$_BottomAppBarModelCopyWith<$Res> {
  __$$_BottomAppBarModelCopyWithImpl(
      _$_BottomAppBarModel _value, $Res Function(_$_BottomAppBarModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? logo = null,
    Object? type = null,
    Object? url = null,
    Object? id = null,
    Object? show = null,
  }) {
    return _then(_$_BottomAppBarModel(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BottomAppBarModel implements _BottomAppBarModel {
  const _$_BottomAppBarModel(
      {required this.label,
      required this.logo,
      required this.type,
      required this.url,
      required this.id,
      required this.show});

  factory _$_BottomAppBarModel.fromJson(Map<String, dynamic> json) =>
      _$$_BottomAppBarModelFromJson(json);

  @override
  final String label;
  @override
  final String logo;
  @override
  final String type;
  @override
  final String url;
  @override
  final String id;
  @override
  final int show;

  @override
  String toString() {
    return 'BottomAppBarModel(label: $label, logo: $logo, type: $type, url: $url, id: $id, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomAppBarModel &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.show, show) || other.show == show));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, label, logo, type, url, id, show);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomAppBarModelCopyWith<_$_BottomAppBarModel> get copyWith =>
      __$$_BottomAppBarModelCopyWithImpl<_$_BottomAppBarModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BottomAppBarModelToJson(
      this,
    );
  }
}

abstract class _BottomAppBarModel implements BottomAppBarModel {
  const factory _BottomAppBarModel(
      {required final String label,
      required final String logo,
      required final String type,
      required final String url,
      required final String id,
      required final int show}) = _$_BottomAppBarModel;

  factory _BottomAppBarModel.fromJson(Map<String, dynamic> json) =
      _$_BottomAppBarModel.fromJson;

  @override
  String get label;
  @override
  String get logo;
  @override
  String get type;
  @override
  String get url;
  @override
  String get id;
  @override
  int get show;
  @override
  @JsonKey(ignore: true)
  _$$_BottomAppBarModelCopyWith<_$_BottomAppBarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
