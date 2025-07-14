import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_data.freezed.dart';
part 'location_data.g.dart';

@freezed
class LocationData with _$LocationData {
  factory LocationData({
    @JsonKey(name: 'locationEN') String? locationEn,
    @JsonKey(name: 'locationAR') String? locationAr,
    String? locationAddress,
    String? phoneNum,
    String? maplat,
    String? maplong,
  }) = _LocationData;

  factory LocationData.fromJson(Map<String, dynamic> json) =>
      _$LocationDataFromJson(json);
}
