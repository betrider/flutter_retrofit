import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample.freezed.dart';
part 'sample.g.dart';

@freezed
class Sample with _$Sample {
  factory Sample({
    String? aa,
    int? bb,
    bool? cc,
    double? dd,
    DateTime? ee,
    StatusCode? ff,
    StatusCodeEnhanced? gg,
  }) = _Sample;

  factory Sample.fromJson(Map<String, dynamic> json) => _$SampleFromJson(json);
}

enum StatusCode {
  @JsonValue(200)
  success,
  @JsonValue(301)
  movedPermanently,
  @JsonValue(302)
  found,
  @JsonValue(500)
  internalServerError,
}

@JsonEnum(valueField: 'code')
enum StatusCodeEnhanced {
  success(200),
  movedPermanently(301),
  found(302),
  internalServerError(500);

  const StatusCodeEnhanced(this.code);
  final int code;
}