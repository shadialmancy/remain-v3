// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../authentication/data/models/patient_info.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

@freezed
class Patient with _$Patient {
  factory Patient({
    String? gender,
    String? name,
    String? email,
    String? phone,
    String? dob,
    @JsonKey(name: 'document_id_type') String? documentIdType,
    @JsonKey(name: 'patient_document_id') String? patientDocumentId,
    @JsonKey(name: 'nationality_id') String? nationalityId,
    @JsonKey(name: 'patient_id') String? patientId,
  }) = _Patient;

  //make random instance
  factory Patient.random(PatientInfo? patientData) => Patient(
        patientId: patientData?.id.toString() ?? '',
        gender: patientData?.sex ?? '',
        dob: patientData?.dob ?? '',
        documentIdType: '',
        email: patientData?.email ?? '',
        name: patientData?.engName ?? '',
        nationalityId: patientData?.identityNo ?? '',
        patientDocumentId: patientData?.fileNum.toString() ?? '',
      );
  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}
