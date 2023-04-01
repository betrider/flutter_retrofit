import 'package:json_annotation/json_annotation.dart';

part 'sample.g.dart';

@JsonSerializable()
class Sample {
  String? aa;
  int? bb;
  bool? cc;
  double? dd;
  DateTime? ee;
  StatusCode? ff;
  StatusCodeEnhanced? gg;

  Sample({
    this.aa,
    this.bb,
    this.cc,
    this.dd,
    this.ee,
    this.ff,
    this.gg,
  });

  factory Sample.fromJson(Map<String, dynamic> json) => _$SampleFromJson(json);
  Map<String, dynamic> toJson() => _$SampleToJson(this);
}

/// @JsonValue() 안한경우
/// success / fromJson() -> StatusCode.success
/// StatusCode.success / toJson() -> success
///
/// @JsonValue() 사용한경우
/// 200 / fromJson() -> StatusCode.success
/// StatusCode.success / toJson() -> 200
enum StatusCode {
  // @JsonValue(200)
  success,
  // @JsonValue(301)
  movedPermanently,
  // @JsonValue(302)
  found,
  // @JsonValue(50)
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
enum StatusCodeEnhanced {
  success(200),
  movedPermanently(301),
  found(302),
  internalServerError(500);

  const StatusCodeEnhanced(this.code);
  final int code;
}
