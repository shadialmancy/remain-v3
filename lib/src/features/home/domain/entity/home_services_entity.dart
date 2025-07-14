import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remain/src/features/home/data/models/home_services/home_services_dto.dart';

import '../../data/models/home_services/services_datum.dart';
part 'home_services_entity.freezed.dart';
part 'home_services_entity.g.dart';

@freezed
class HomeServicesEntity with _$HomeServicesEntity {
  factory HomeServicesEntity({
    @JsonKey(name: 'request_id') String? requestId,
    int? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    int? totalpage,
    List<ServicesDatum>? data,
  }) = _HomeServicesEntity;

  factory HomeServicesEntity.fromJson(Map<String, dynamic> json) =>
      _$HomeServicesEntityFromJson(json);
}

extension HomeServicesEntityX on HomeServicesEntity {
  HomeServicesDto toDto() {
    return HomeServicesDto(
      requestId: requestId,
      code: code,
      errorMessage: errorMessage,
      totalpage: totalpage,
      data: data,
    );
  }
}
