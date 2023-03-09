// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RankingModel _$$_RankingModelFromJson(Map<String, dynamic> json) =>
    _$_RankingModel(
      rank: json['rank'] as int,
      contestantId: json['contestantId'] as String,
      contestantCode: json['contestantCode'] as String,
      contestantName: json['contestantName'] as String,
      contestantClubName: json['contestantClubName'] as String,
      usrShieldTeam: json['usrShieldTeam'] as String,
      points: json['points'] as int,
      matchesPlayed: json['matchesPlayed'] as int,
      matchesWon: json['matchesWon'] as int,
      matchesLost: json['matchesLost'] as int,
      matchesDrawn: json['matchesDrawn'] as int,
      goaldifference: json['goaldifference'] as String,
    );

Map<String, dynamic> _$$_RankingModelToJson(_$_RankingModel instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'contestantId': instance.contestantId,
      'contestantCode': instance.contestantCode,
      'contestantName': instance.contestantName,
      'contestantClubName': instance.contestantClubName,
      'usrShieldTeam': instance.usrShieldTeam,
      'points': instance.points,
      'matchesPlayed': instance.matchesPlayed,
      'matchesWon': instance.matchesWon,
      'matchesLost': instance.matchesLost,
      'matchesDrawn': instance.matchesDrawn,
      'goaldifference': instance.goaldifference,
    };
