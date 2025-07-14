// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PatientInfoAdapter extends TypeAdapter<PatientInfo> {
  @override
  final int typeId = 0;

  @override
  PatientInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PatientInfo(
      id: fields[0] as int?,
      fileNum: fields[1] as int?,
      telephones: fields[2] as String?,
      identityNo: fields[3] as String?,
      sex: fields[4] as String?,
      dob: fields[5] as String?,
      arbName: fields[6] as String?,
      engName: fields[7] as String?,
      accountId: fields[8] as int?,
      isInsurance: fields[9] as bool?,
      randCode: fields[10] as String?,
      maritalStatus: fields[11] as String?,
      age: fields[12] as int?,
      address: fields[13] as String?,
      email: fields[14] as String?,
      isValid: fields[15] as bool?,
      vitalSigns: fields[16] as VitalSigns?,
      patAllergies: fields[17] as dynamic,
      patRel: (fields[18] as List?)?.cast<PatRel>(),
    );
  }

  @override
  void write(BinaryWriter writer, PatientInfo obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fileNum)
      ..writeByte(2)
      ..write(obj.telephones)
      ..writeByte(3)
      ..write(obj.identityNo)
      ..writeByte(4)
      ..write(obj.sex)
      ..writeByte(5)
      ..write(obj.dob)
      ..writeByte(6)
      ..write(obj.arbName)
      ..writeByte(7)
      ..write(obj.engName)
      ..writeByte(8)
      ..write(obj.accountId)
      ..writeByte(9)
      ..write(obj.isInsurance)
      ..writeByte(10)
      ..write(obj.randCode)
      ..writeByte(11)
      ..write(obj.maritalStatus)
      ..writeByte(12)
      ..write(obj.age)
      ..writeByte(13)
      ..write(obj.address)
      ..writeByte(14)
      ..write(obj.email)
      ..writeByte(15)
      ..write(obj.isValid)
      ..writeByte(16)
      ..write(obj.vitalSigns)
      ..writeByte(17)
      ..write(obj.patAllergies)
      ..writeByte(18)
      ..write(obj.patRel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PatientInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientInfoImpl _$$PatientInfoImplFromJson(Map<String, dynamic> json) =>
    _$PatientInfoImpl(
      id: (json['ID'] as num?)?.toInt(),
      fileNum: (json['FileNum'] as num?)?.toInt(),
      telephones: json['Telephones'] as String?,
      identityNo: json['IdentityNo'] as String?,
      sex: json['Sex'] as String?,
      dob: json['DOB'] as String?,
      arbName: json['ArbName'] as String?,
      engName: json['EngName'] as String?,
      accountId: (json['AccountID'] as num?)?.toInt(),
      isInsurance: json['IsInsurance'] as bool?,
      randCode: json['RandCode'] as String?,
      maritalStatus: json['MaritalStatus'] as String?,
      age: (json['Age'] as num?)?.toInt(),
      address: json['Address'] as String?,
      email: json['Email'] as String?,
      isValid: json['IsValid'] as bool?,
      vitalSigns: json['VitalSigns'] == null
          ? null
          : VitalSigns.fromJson(json['VitalSigns'] as Map<String, dynamic>),
      patAllergies: json['PatAllergies'],
      patRel: (json['PatRel'] as List<dynamic>?)
          ?.map((e) => PatRel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientInfoImplToJson(_$PatientInfoImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'FileNum': instance.fileNum,
      'Telephones': instance.telephones,
      'IdentityNo': instance.identityNo,
      'Sex': instance.sex,
      'DOB': instance.dob,
      'ArbName': instance.arbName,
      'EngName': instance.engName,
      'AccountID': instance.accountId,
      'IsInsurance': instance.isInsurance,
      'RandCode': instance.randCode,
      'MaritalStatus': instance.maritalStatus,
      'Age': instance.age,
      'Address': instance.address,
      'Email': instance.email,
      'IsValid': instance.isValid,
      'VitalSigns': instance.vitalSigns,
      'PatAllergies': instance.patAllergies,
      'PatRel': instance.patRel,
    };
