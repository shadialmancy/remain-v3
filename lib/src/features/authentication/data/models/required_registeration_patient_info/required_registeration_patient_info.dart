// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'required_registeration_patient_info.freezed.dart';
part 'required_registeration_patient_info.g.dart';

@freezed
class RequiredRegisterationPatientInfo with _$RequiredRegisterationPatientInfo {
  factory RequiredRegisterationPatientInfo({
    @JsonKey(name: 'FirstName') required String firstName,
    @JsonKey(name: 'FatherName') required String fatherName,
    @JsonKey(name: 'GrandFatherName') required String grandFatherName,
    @JsonKey(name: 'FamilyName') required String familyName,
    @JsonKey(name: 'Gender') required String gender,
    @JsonKey(name: 'Email') String? email,
    @JsonKey(name: 'Telephones') required String telephones,
    @JsonKey(name: 'Dob') required String dob,
    @JsonKey(name: 'OccupationID') String? occupationId,
    @JsonKey(name: 'NationalityID') String? nationalityId,
    @JsonKey(name: 'FbToken') String? fbToken,
    @JsonKey(name: 'TypeofDevice') String? typeofDevice,
    @JsonKey(name: 'City') required String city,
    @JsonKey(name: 'District') required String district,
    @JsonKey(name: 'NextOfKinName') required String nextOfKinName,
    @JsonKey(name: 'NextOfKinMobileNum') required String nextOfKinMobileNum,
    @JsonKey(name: 'NextOfKinRelationID') required String nextOfKinRelationId,
    @JsonKey(name: 'RelegionID') String? relegionId,
    @JsonKey(name: 'IdentityNo') required String identityNo,
    @JsonKey(name: 'Lang') required num lang,
  }) = _RequiredRegisterationPatientInfo;

  factory RequiredRegisterationPatientInfo.fromJson(
          Map<String, dynamic> json) =>
      _$RequiredRegisterationPatientInfoFromJson(json);
}
