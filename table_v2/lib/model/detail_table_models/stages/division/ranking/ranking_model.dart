import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranking_model.g.dart';

part 'ranking_model.freezed.dart';

@freezed
class RankingModel with _$RankingModel {
  const factory RankingModel({
  required int rank,
    required String contestantId,
    required String contestantCode,
    required String contestantName,
    required String contestantClubName,
    required String usrShieldTeam,
    required int points,
    required int matchesPlayed,
    required int matchesWon,
    required int matchesLost,
    required int matchesDrawn,
    required String goaldifference
}) = _RankingModel;

  factory RankingModel.fromJson(Map<String, dynamic> json) =>
      _$RankingModelFromJson(json);
}
