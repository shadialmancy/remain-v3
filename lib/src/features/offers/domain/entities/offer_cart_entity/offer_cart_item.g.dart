// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_cart_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OfferCartItemyAdapter extends TypeAdapter<OfferCartItem> {
  @override
  final int typeId = 3;

  @override
  OfferCartItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OfferCartItem(
      code: fields[0] as String?,
      programId: fields[1] as num?,
      programVerId: fields[2] as num?,
      programName: fields[3] as String?,
      programArbName: fields[4] as String?,
      afterDiscount: fields[5] as num?,
      beforeDiscount: fields[6] as num?,
      specialtie: fields[7] as String?,
      specialtieId: fields[8] as String?,
      locationsId: fields[9] as String?,
      locations: fields[10] as String?,
      discountRate: fields[11] as num?,
      programImage: fields[12] as String?,
      quantity: fields[13] as int,
      purchaseDate: fields[14] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, OfferCartItem obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.programId)
      ..writeByte(2)
      ..write(obj.programVerId)
      ..writeByte(3)
      ..write(obj.programName)
      ..writeByte(4)
      ..write(obj.programArbName)
      ..writeByte(5)
      ..write(obj.afterDiscount)
      ..writeByte(6)
      ..write(obj.beforeDiscount)
      ..writeByte(7)
      ..write(obj.specialtie)
      ..writeByte(8)
      ..write(obj.specialtieId)
      ..writeByte(9)
      ..write(obj.locationsId)
      ..writeByte(10)
      ..write(obj.locations)
      ..writeByte(11)
      ..write(obj.discountRate)
      ..writeByte(12)
      ..write(obj.programImage)
      ..writeByte(13)
      ..write(obj.quantity)
      ..writeByte(14)
      ..write(obj.purchaseDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OfferCartItemyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferCartItemImpl _$$OfferCartItemImplFromJson(Map<String, dynamic> json) =>
    _$OfferCartItemImpl(
      code: json['code'] as String?,
      programId: json['programId'] as num?,
      programVerId: json['programVerId'] as num?,
      programName: json['programName'] as String?,
      programArbName: json['programArbName'] as String?,
      afterDiscount: json['afterDiscount'] as num?,
      beforeDiscount: json['beforeDiscount'] as num?,
      specialtie: json['specialtie'] as String?,
      specialtieId: json['specialtieId'] as String?,
      locationsId: json['locationsId'] as String?,
      locations: json['locations'] as String?,
      discountRate: json['discountRate'] as num?,
      programImage: json['programImage'] as String?,
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      purchaseDate: json['purchaseDate'] == null
          ? null
          : DateTime.parse(json['purchaseDate'] as String),
    );

Map<String, dynamic> _$$OfferCartItemImplToJson(_$OfferCartItemImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'programId': instance.programId,
      'programVerId': instance.programVerId,
      'programName': instance.programName,
      'programArbName': instance.programArbName,
      'afterDiscount': instance.afterDiscount,
      'beforeDiscount': instance.beforeDiscount,
      'specialtie': instance.specialtie,
      'specialtieId': instance.specialtieId,
      'locationsId': instance.locationsId,
      'locations': instance.locations,
      'discountRate': instance.discountRate,
      'programImage': instance.programImage,
      'quantity': instance.quantity,
      'purchaseDate': instance.purchaseDate?.toIso8601String(),
    };
