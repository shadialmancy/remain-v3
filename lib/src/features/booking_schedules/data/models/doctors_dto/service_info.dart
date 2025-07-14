// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_info.freezed.dart';
part 'service_info.g.dart';

@freezed
class ServiceInfo with _$ServiceInfo {
  factory ServiceInfo({
    @JsonKey(name: 'serviceID') num? serviceId,
    String? serviceCode,
    String? serviceEngName,
    String? serviceArbName,
    num? servicePrice,
  }) = _ServiceInfo;

  factory ServiceInfo.fromJson(Map<String, dynamic> json) =>
      _$ServiceInfoFromJson(json);
}
