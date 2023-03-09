// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TableModel _$$_TableModelFromJson(Map<String, dynamic> json) =>
    _$_TableModel(
      label: json['label'] as String,
      title: json['title'] as String,
      logo: json['logo'] as String,
      type: json['type'] as String,
      url: json['url'] as String,
      legend: json['legend'] as String,
      show: json['show'] as int,
    );

Map<String, dynamic> _$$_TableModelToJson(_$_TableModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'title': instance.title,
      'logo': instance.logo,
      'type': instance.type,
      'url': instance.url,
      'legend': instance.legend,
      'show': instance.show,
    };
