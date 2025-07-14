// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialities_data_item.freezed.dart';
part 'specialities_data_item.g.dart';

@freezed
class SpecialitiesDataItem with _$SpecialitiesDataItem {
  factory SpecialitiesDataItem({
    @JsonKey(name: 'engName') String? engName,
    @JsonKey(name: 'arbName') String? arbName,
    @JsonKey(name: 'specID') num? specId,
    @JsonKey(name: 'doctorsCount') num? doctorsCount,
    @JsonKey(name: 'isVideoSession') bool? isVideoSession,
  }) = _SpecialitiesDataItem;

  factory SpecialitiesDataItem.fromJson(Map<String, dynamic> json) =>
      _$SpecialitiesDataItemFromJson(json);
}
