// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'required_registeration_patient_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequiredRegisterationPatientInfoImpl
    _$$RequiredRegisterationPatientInfoImplFromJson(
            Map<String, dynamic> json) =>
        _$RequiredRegisterationPatientInfoImpl(
          firstName: json['FirstName'] as String,
          fatherName: json['FatherName'] as String,
          grandFatherName: json['GrandFatherName'] as String,
          familyName: json['FamilyName'] as String,
          gender: json['Gender'] as String,
          email: json['Email'] as String?,
          telephones: json['Telephones'] as String,
          dob: json['Dob'] as String,
          occupationId: json['OccupationID'] as String?,
          nationalityId: json['NationalityID'] as String?,
          fbToken: json['FbToken'] as String?,
          typeofDevice: json['TypeofDevice'] as String?,
          city: json['City'] as String,
          district: json['District'] as String,
          nextOfKinName: json['NextOfKinName'] as String,
          nextOfKinMobileNum: json['NextOfKinMobileNum'] as String,
          nextOfKinRelationId: json['NextOfKinRelationID'] as String,
          relegionId: json['RelegionID'] as String?,
          identityNo: json['IdentityNo'] as String,
          lang: json['Lang'] as num,
        );

Map<String, dynamic> _$$RequiredRegisterationPatientInfoImplToJson(
        _$RequiredRegisterationPatientInfoImpl instance) =>
    <String, dynamic>{
      'FirstName': instance.firstName,
      'FatherName': instance.fatherName,
      'GrandFatherName': instance.grandFatherName,
      'FamilyName': instance.familyName,
      'Gender': instance.gender,
      'Email': instance.email,
      'Telephones': instance.telephones,
      'Dob': instance.dob,
      'OccupationID': instance.occupationId,
      'NationalityID': instance.nationalityId,
      'FbToken': instance.fbToken,
      'TypeofDevice': instance.typeofDevice,
      'City': instance.city,
      'District': instance.district,
      'NextOfKinName': instance.nextOfKinName,
      'NextOfKinMobileNum': instance.nextOfKinMobileNum,
      'NextOfKinRelationID': instance.nextOfKinRelationId,
      'RelegionID': instance.relegionId,
      'IdentityNo': instance.identityNo,
      'Lang': instance.lang,
    };
