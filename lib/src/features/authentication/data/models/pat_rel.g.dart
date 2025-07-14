// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pat_rel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PatRelAdapter extends TypeAdapter<PatRel> {
  @override
  final int typeId = 2;

  @override
  PatRel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PatRel(
      patID: fields[0] as int?,
      id: fields[1] as int?,
      fileNum: fields[2] as int?,
      telephones: fields[3] as String?,
      identityNo: fields[4] as String?,
      sex: fields[5] as String?,
      dob: fields[6] as String?,
      arbName: fields[7] as String?,
      engName: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PatRel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.patID)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.fileNum)
      ..writeByte(3)
      ..write(obj.telephones)
      ..writeByte(4)
      ..write(obj.identityNo)
      ..writeByte(5)
      ..write(obj.sex)
      ..writeByte(6)
      ..write(obj.dob)
      ..writeByte(7)
      ..write(obj.arbName)
      ..writeByte(8)
      ..write(obj.engName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PatRelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatRelImpl _$$PatRelImplFromJson(Map<String, dynamic> json) => _$PatRelImpl(
      patID: (json['PatID'] as num?)?.toInt(),
      id: (json['ID'] as num?)?.toInt(),
      fileNum: (json['FileNum'] as num?)?.toInt(),
      telephones: json['Telephones'] as String?,
      identityNo: json['IdentityNo'] as String?,
      sex: json['Sex'] as String?,
      dob: json['DOB'] as String?,
      arbName: json['ArbName'] as String?,
      engName: json['EngName'] as String?,
    );

Map<String, dynamic> _$$PatRelImplToJson(_$PatRelImpl instance) =>
    <String, dynamic>{
      'PatID': instance.patID,
      'ID': instance.id,
      'FileNum': instance.fileNum,
      'Telephones': instance.telephones,
      'IdentityNo': instance.identityNo,
      'Sex': instance.sex,
      'DOB': instance.dob,
      'ArbName': instance.arbName,
      'EngName': instance.engName,
    };
