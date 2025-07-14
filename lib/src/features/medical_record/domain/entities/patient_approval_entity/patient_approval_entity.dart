// ignore_for_file: invalid_annotation_target

import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/patient_approval_dto/insurance_item.dart';
import '../../../data/model/patient_approval_dto/patient_approval_dto.dart';

part 'patient_approval_entity.freezed.dart';
part 'patient_approval_entity.g.dart';

@freezed
class PatientApprovalEntity with _$PatientApprovalEntity {
  factory PatientApprovalEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<InsuranceItem>? data,
  }) = _PatientApprovalEnitiy;

  factory PatientApprovalEntity.fromJson(Map<String, dynamic> json) =>
      _$PatientApprovalEntityFromJson(json);

  factory PatientApprovalEntity.generateFakeData({int numOfFakeData = 3}) =>
      PatientApprovalEntity(
          data: List.generate(
        numOfFakeData,
        (index) => InsuranceItem(
          approvalExpiryDate: "2099-05-28T00:00:00",
          approvalNum: Faker().randomGenerator.numberOfLength(10),
          docArbName: Faker().randomGenerator.numberOfLength(20),
          docEngName: Faker().randomGenerator.numberOfLength(20),
          patArbName: Faker().randomGenerator.numberOfLength(20),
          patEngName: Faker().randomGenerator.numberOfLength(10),
          serviceName: Faker().randomGenerator.numberOfLength(10),
        ),
      ));
}

extension PatientApprovalEntityX on PatientApprovalEntity {
  PatientApprovalDto toDto() => PatientApprovalDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
