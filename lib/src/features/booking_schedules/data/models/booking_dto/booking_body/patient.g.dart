// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      gender: json['gender'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      dob: json['dob'] as String?,
      documentIdType: json['document_id_type'] as String?,
      patientDocumentId: json['patient_document_id'] as String?,
      nationalityId: json['nationality_id'] as String?,
      patientId: json['patient_id'] as String?,
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'dob': instance.dob,
      'document_id_type': instance.documentIdType,
      'patient_document_id': instance.patientDocumentId,
      'nationality_id': instance.nationalityId,
      'patient_id': instance.patientId,
    };
