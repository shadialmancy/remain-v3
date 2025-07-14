import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remain/src/features/home/domain/entity/home_services_entity.dart';

import 'services_datum.dart';

part 'home_services_dto.freezed.dart';
part 'home_services_dto.g.dart';

@freezed
class HomeServicesDto with _$HomeServicesDto {
  factory HomeServicesDto({
    @JsonKey(name: 'request_id') String? requestId,
    int? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    int? totalpage,
    List<ServicesDatum>? data,
  }) = _HomeServicesDto;

  factory HomeServicesDto.fromJson(Map<String, dynamic> json) =>
      _$HomeServicesDtoFromJson(json);
}

extension HomeServicesDtoX on HomeServicesDto {
  HomeServicesEntity toEntity() {
    return HomeServicesEntity(
      requestId: requestId,
      code: code,
      errorMessage: errorMessage,
      totalpage: totalpage,
      data: data,
    );
  }
}
