import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/home_vital_signs_entity.dart';
import 'vital_signs_datum.dart';

part 'home_vital_signs_dto.freezed.dart';
part 'home_vital_signs_dto.g.dart';

@freezed
class HomeVitalSignsDto with _$HomeVitalSignsDto {
  factory HomeVitalSignsDto({
    @JsonKey(name: 'request_id') String? requestId,
    int? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    int? totalpage,
    List<VitalSignsDatum>? data,
  }) = _HomeVitalSignsDto;

  factory HomeVitalSignsDto.fromJson(Map<String, dynamic> json) =>
      _$HomeVitalSignsDtoFromJson(json);
}

extension HomeVitalSignsDtoX on HomeVitalSignsDto {
  HomeVitalSignsEntity toEntity() {
    return HomeVitalSignsEntity(
      requestId: requestId,
      code: code,
      errorMessage: errorMessage,
      totalpage: totalpage,
      data: data,
    );
  }
}
