// ignore_for_file: invalid_annotation_target

import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/all_patient_booking_dto/all_patient_bookings.dart';
import '../../data/models/all_patient_booking_dto/patient_booking_info.dart';
part 'all_patient_booking_entity.freezed.dart';
part 'all_patient_booking_entity.g.dart';

@freezed
class AllPatientBookingsEntity with _$AllPatientBookingsEntity {
  factory AllPatientBookingsEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<PatientBookingInfo>? data,
  }) = _AllPatientBookingsEntity;

  factory AllPatientBookingsEntity.fromJson(Map<String, dynamic> json) =>
      _$AllPatientBookingsEntityFromJson(json);
  factory AllPatientBookingsEntity.generateFakeData({int numOfFakeData = 3}) {
    return AllPatientBookingsEntity(
        data: List.generate(
            numOfFakeData,
            (index) => PatientBookingInfo(
                appArbService: Faker().randomGenerator.numberOfLength(10),
                appEngService: Faker().randomGenerator.numberOfLength(10),
                appGuidlinesArb: Faker().randomGenerator.numberOfLength(10),
                appGuidlinesEng: Faker().randomGenerator.numberOfLength(10),
                docArbName: Faker().randomGenerator.numberOfLength(10),
                docEngName: Faker().randomGenerator.numberOfLength(10),
                docSpecArbName: Faker().randomGenerator.numberOfLength(10),
                docSpecEngName: Faker().randomGenerator.numberOfLength(10),
                locationArbAdress: Faker().randomGenerator.numberOfLength(10),
                locationEngAdress: Faker().randomGenerator.numberOfLength(10),
                patArbName: Faker().randomGenerator.numberOfLength(10),
                patEngName: Faker().randomGenerator.numberOfLength(10),
                appTime: "2024-06-07 08:00 AM")));
  }
}

extension AllPatientBookingsEntityX on AllPatientBookingsEntity {
  AllPatientBookingsDTO toDTO() {
    return AllPatientBookingsDTO(
      requestId: requestId,
      code: code,
      errorMessage: errorMessage,
      data: data,
    );
  }
}
