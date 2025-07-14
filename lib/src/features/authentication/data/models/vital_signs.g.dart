// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vital_signs.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VitalSignsAdapter extends TypeAdapter<VitalSigns> {
  @override
  final int typeId = 1;

  @override
  VitalSigns read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VitalSigns(
      bloodPressureHi: fields[0] as num?,
      bloodPressureLo: fields[1] as num?,
      temperature: fields[2] as num?,
      height: fields[3] as double?,
      weight: fields[4] as double?,
      oxygenSaturation: fields[5] as num?,
      pulse: fields[6] as num?,
      forDate: fields[7] as String?,
      respiratoryRate: fields[8] as num?,
      remarks: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, VitalSigns obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.bloodPressureHi)
      ..writeByte(1)
      ..write(obj.bloodPressureLo)
      ..writeByte(2)
      ..write(obj.temperature)
      ..writeByte(3)
      ..write(obj.height)
      ..writeByte(4)
      ..write(obj.weight)
      ..writeByte(5)
      ..write(obj.oxygenSaturation)
      ..writeByte(6)
      ..write(obj.pulse)
      ..writeByte(7)
      ..write(obj.forDate)
      ..writeByte(8)
      ..write(obj.respiratoryRate)
      ..writeByte(9)
      ..write(obj.remarks);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VitalSignsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VitalSignsImpl _$$VitalSignsImplFromJson(Map<String, dynamic> json) =>
    _$VitalSignsImpl(
      bloodPressureHi: json['BloodPressureHi'] as num?,
      bloodPressureLo: json['BloodPressureLo'] as num?,
      temperature: json['Temperature'] as num?,
      height: (json['Height'] as num?)?.toDouble(),
      weight: (json['Weight'] as num?)?.toDouble(),
      oxygenSaturation: json['OxygenSaturation'] as num?,
      pulse: json['Pulse'] as num?,
      forDate: json['ForDate'] as String?,
      respiratoryRate: json['RespiratoryRate'] as num?,
      remarks: json['Remarks'] as String?,
    );

Map<String, dynamic> _$$VitalSignsImplToJson(_$VitalSignsImpl instance) =>
    <String, dynamic>{
      'BloodPressureHi': instance.bloodPressureHi,
      'BloodPressureLo': instance.bloodPressureLo,
      'Temperature': instance.temperature,
      'Height': instance.height,
      'Weight': instance.weight,
      'OxygenSaturation': instance.oxygenSaturation,
      'Pulse': instance.pulse,
      'ForDate': instance.forDate,
      'RespiratoryRate': instance.respiratoryRate,
      'Remarks': instance.remarks,
    };
