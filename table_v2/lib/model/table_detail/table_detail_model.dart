import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_detail_model.g.dart';

part 'table_detail_model.freezed.dart';

@freezed
class TableDetailModel with _$TableDetailModel {
  const factory TableDetailModel(
      {required Map<String, dynamic> sport,
      required Map<String, dynamic> ruleset,
      required Map<String, dynamic> competition,
      required Map<String, dynamic> tournamentCalendar,
  required String legend,
      required List stage,
      required}) = _TableDetailModel;
  factory TableDetailModel.fromJson(Map<String, dynamic> json) =>
      _$TableDetailModelFromJson(json);
}
