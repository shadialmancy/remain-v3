// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/all_patient_booking_entity.dart';
import 'patient_booking_info.dart';
part 'all_patient_bookings.freezed.dart';
part 'all_patient_bookings.g.dart';

@freezed
class AllPatientBookingsDTO with _$AllPatientBookingsDTO {
  factory AllPatientBookingsDTO({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<PatientBookingInfo>? data,
  }) = _AllPatientBookingsDTO;

  factory AllPatientBookingsDTO.fromJson(Map<String, dynamic> json) =>
      _$AllPatientBookingsDTOFromJson(json);
}

extension AllPatientBookingsDTOX on AllPatientBookingsDTO {
  AllPatientBookingsEntity toEntity() {
    return AllPatientBookingsEntity(
      requestId: requestId,
      code: code,
      errorMessage: errorMessage,
      data: data,
    );
  }
}
