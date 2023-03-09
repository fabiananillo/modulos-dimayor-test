// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TableDetailModel _$$_TableDetailModelFromJson(Map<String, dynamic> json) =>
    _$_TableDetailModel(
      sport: json['sport'] as Map<String, dynamic>,
      ruleset: json['ruleset'] as Map<String, dynamic>,
      competition: json['competition'] as Map<String, dynamic>,
      tournamentCalendar: json['tournamentCalendar'] as Map<String, dynamic>,
      legend: json['legend'] as String,
      stage: json['stage'] as List<dynamic>,
      required: json['required'],
    );

Map<String, dynamic> _$$_TableDetailModelToJson(_$_TableDetailModel instance) =>
    <String, dynamic>{
      'sport': instance.sport,
      'ruleset': instance.ruleset,
      'competition': instance.competition,
      'tournamentCalendar': instance.tournamentCalendar,
      'legend': instance.legend,
      'stage': instance.stage,
      'required': instance.required,
    };
