import 'package:freezed_annotation/freezed_annotation.dart';


part 'division_model.freezed.dart';

part 'division_model.g.dart';


@freezed
class DivisionModel with _$DivisionModel {
  const factory DivisionModel({
    required String type,
    required List ranking
}) = _DivisionModel;

  factory DivisionModel.fromJson(Map<String, dynamic> json) =>
      _$DivisionModelFromJson(json);
}
