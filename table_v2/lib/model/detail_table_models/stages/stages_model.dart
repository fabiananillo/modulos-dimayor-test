import 'package:freezed_annotation/freezed_annotation.dart';

part 'stages_model.g.dart';

part 'stages_model.freezed.dart';

@freezed
class StageModel with _$StageModel {
  const factory StageModel({
    required String name,
    required List division
}) = _StageModel;

  factory StageModel.fromJson(Map<String, dynamic> json) =>
      _$StageModelFromJson(json);
}
