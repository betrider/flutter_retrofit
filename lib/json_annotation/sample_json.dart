import 'package:json_annotation/json_annotation.dart';

part 'sample_json.g.dart';

@JsonSerializable()
class SampleJson {
  /// aaa 설명 222
  String? aa;
  int? bb;
  bool? cc;
  double? dd;
  DateTime? ee;
  StatusCode2? ff;
  StatusCodeEnhanced2? gg;

  SampleJson({
    this.aa,
    this.bb,
    this.cc = true,
    this.dd,
    this.ee,
    this.ff,
    required this.gg,
  });

  factory SampleJson.fromJson(Map<String, dynamic> json) => _$SampleJsonFromJson(json);
  Map<String, dynamic> toJson() => _$SampleJsonToJson(this);
}

/// @JsonValue() 안한경우
/// success / fromJson() -> StatusCode.success
/// StatusCode.success / toJson() -> success
///
/// @JsonValue() 사용한경우
/// 200 / fromJson() -> StatusCode.success
/// StatusCode.success / toJson() -> 200
enum StatusCode2 {
  // @JsonValue(200)
  success,
  // @JsonValue(301)
  movedPermanently,
  // @JsonValue(302)
  found,
  // @JsonValue(500)
  internalServerError,
}

/// @JsonEnum(valueField: 'code') 안한경우
/// success / fromJson() -> StatusCode.success
/// StatusCode.success / toJson() -> success
///
/// @JsonEnum(valueField: 'code') 사용한경우
/// 200 / fromJson() -> StatusCode.success
/// StatusCode.success / toJson() -> 200
// @JsonEnum(valueField: 'code')
enum StatusCodeEnhanced2 {
  success(200),
  movedPermanently(301),
  found(302),
  internalServerError(500);

  const StatusCodeEnhanced2(this.code);
  final int code;
}
