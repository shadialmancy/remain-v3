// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'trans_dtl.freezed.dart';
part 'trans_dtl.g.dart';

@freezed
class TransDtl with _$TransDtl {
  factory TransDtl({
    @JsonKey(name: 'dtlID') num? dtlId,
    String? serviceArbName,
    String? serviceEngName,
  }) = _TransDtl;

  factory TransDtl.fromJson(Map<String, dynamic> json) =>
      _$TransDtlFromJson(json);
}
