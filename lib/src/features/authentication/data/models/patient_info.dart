// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'pat_rel.dart';
import 'vital_signs.dart';
part 'patient_info.freezed.dart';
part 'patient_info.g.dart';

@HiveType(typeId: 0, adapterName: 'PatientInfoAdapter')
@freezed
class PatientInfo with _$PatientInfo {
  factory PatientInfo({
    @HiveField(0) @JsonKey(name: 'ID') int? id,
    @HiveField(1) @JsonKey(name: 'FileNum') int? fileNum,
    @HiveField(2) @JsonKey(name: 'Telephones') String? telephones,
    @HiveField(3) @JsonKey(name: 'IdentityNo') String? identityNo,
    @HiveField(4) @JsonKey(name: 'Sex') String? sex,
    @HiveField(5) @JsonKey(name: 'DOB') String? dob,
    @HiveField(6) @JsonKey(name: 'ArbName') String? arbName,
    @HiveField(7) @JsonKey(name: 'EngName') String? engName,
    @HiveField(8) @JsonKey(name: 'AccountID') int? accountId,
    @HiveField(9) @JsonKey(name: 'IsInsurance') bool? isInsurance,
    @HiveField(10) @JsonKey(name: 'RandCode') String? randCode,
    @HiveField(11) @JsonKey(name: 'MaritalStatus') String? maritalStatus,
    @HiveField(12) @JsonKey(name: 'Age') int? age,
    @HiveField(13) @JsonKey(name: 'Address') String? address,
    @HiveField(14) @JsonKey(name: 'Email') String? email,
    @HiveField(15) @JsonKey(name: 'IsValid') bool? isValid,
    @HiveField(16) @JsonKey(name: 'VitalSigns') VitalSigns? vitalSigns,
    @HiveField(17) @JsonKey(name: 'PatAllergies') dynamic patAllergies,
    @HiveField(18) @JsonKey(name: 'PatRel') List<PatRel>? patRel,
  }) = _PatientInfo;

  factory PatientInfo.fromJson(Map<String, dynamic> json) =>
      _$PatientInfoFromJson(json);
}
