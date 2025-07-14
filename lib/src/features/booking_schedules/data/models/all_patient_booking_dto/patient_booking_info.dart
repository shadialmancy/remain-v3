// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_booking_info.freezed.dart';
part 'patient_booking_info.g.dart';

@freezed
class PatientBookingInfo with _$PatientBookingInfo {
  factory PatientBookingInfo({
    @JsonKey(name: 'bookingID') num? bookingId,
    @JsonKey(name: 'locationID') num? locationId,
    @JsonKey(name: 'PatientID') num? patientId,
    String? patEngName,
    String? patArbName,
    @JsonKey(name: 'doctorID') num? doctorId,
    String? docEngName,
    String? docArbName,
    num? docSpecId,
    String? docSpecEngName,
    String? docSpecArbName,
    String? appTime,
    @JsonKey(name: 'serviceID') num? serviceId,
    num? servicePrice,
    bool? isFreeRevisit,
    bool? isAttend,
    bool? isOnline,
    bool? isPaid,
    num? transHdrId,
    String? appEngService,
    String? appArbService,
    String? locationArbAdress,
    String? locationEngAdress,
    String? appGuidlinesEng,
    String? appGuidlinesArb,
    dynamic doctorPhoto,
    dynamic zoomInformation,
  }) = _PatientBookingInfo;

  factory PatientBookingInfo.fromJson(Map<String, dynamic> json) =>
      _$PatientBookingInfoFromJson(json);
}
