// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampleJson _$SampleJsonFromJson(Map<String, dynamic> json) => SampleJson(
      aa: json['aa'] as String?,
      bb: json['bb'] as int?,
      cc: json['cc'] as bool? ?? true,
      dd: (json['dd'] as num?)?.toDouble(),
      ee: json['ee'] == null ? null : DateTime.parse(json['ee'] as String),
      ff: $enumDecodeNullable(_$StatusCode2EnumMap, json['ff']),
      gg: $enumDecodeNullable(_$StatusCodeEnhanced2EnumMap, json['gg']),
    );

Map<String, dynamic> _$SampleJsonToJson(SampleJson instance) =>
    <String, dynamic>{
      'aa': instance.aa,
      'bb': instance.bb,
      'cc': instance.cc,
      'dd': instance.dd,
      'ee': instance.ee?.toIso8601String(),
      'ff': _$StatusCode2EnumMap[instance.ff],
      'gg': _$StatusCodeEnhanced2EnumMap[instance.gg],
    };

const _$StatusCode2EnumMap = {
  StatusCode2.success: 'success',
  StatusCode2.movedPermanently: 'movedPermanently',
  StatusCode2.found: 'found',
  StatusCode2.internalServerError: 'internalServerError',
};

const _$StatusCodeEnhanced2EnumMap = {
  StatusCodeEnhanced2.success: 'success',
  StatusCodeEnhanced2.movedPermanently: 'movedPermanently',
  StatusCodeEnhanced2.found: 'found',
  StatusCodeEnhanced2.internalServerError: 'internalServerError',
};
