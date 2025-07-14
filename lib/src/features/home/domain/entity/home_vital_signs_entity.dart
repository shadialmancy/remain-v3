import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/home_vital_signs_dto/home_vital_signs_dto.dart';
import '../../data/models/home_vital_signs_dto/vital_signs_datum.dart';
part 'home_vital_signs_entity.freezed.dart';
part 'home_vital_signs_entity.g.dart';

@freezed
class HomeVitalSignsEntity with _$HomeVitalSignsEntity {
  factory HomeVitalSignsEntity({
    @JsonKey(name: 'request_id') String? requestId,
    int? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    int? totalpage,
    List<VitalSignsDatum>? data,
  }) = _HomeVitalSignsEntity;

  factory HomeVitalSignsEntity.fromJson(Map<String, dynamic> json) =>
      _$HomeVitalSignsEntityFromJson(json);
}

extension HomeVitalSignsEntityX on HomeVitalSignsEntity {
  HomeVitalSignsDto toDto() {
    return HomeVitalSignsDto(
      requestId: requestId,
      code: code,
      errorMessage: errorMessage,
      totalpage: totalpage,
      data: data,
    );
  }
}
