import 'package:freezed_annotation/freezed_annotation.dart';

part 'services_datum.freezed.dart';
part 'services_datum.g.dart';

@freezed
class ServicesDatum with _$ServicesDatum {
  factory ServicesDatum({
    String? serviceGroupName,
    @JsonKey(name: 'serviceGroupNameEN') String? serviceGroupNameEn,
    @JsonKey(name: 'service_Count') int? serviceCount,
  }) = _ServicesDatum;

  factory ServicesDatum.fromJson(Map<String, dynamic> json) =>
      _$ServicesDatumFromJson(json);
}
