// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferDataImpl _$$OfferDataImplFromJson(Map<String, dynamic> json) =>
    _$OfferDataImpl(
      code: json['code'] as String?,
      programId: json['programID'] as num?,
      programVerId: json['programVerID'] as num?,
      programName: json['programName'] as String?,
      programArbName: json['programArbName'] as String?,
      afterDiscount: json['afterDiscount'] as num?,
      beforeDiscount: json['beforeDiscount'] as num?,
      specialtie: json['specialtie'] as String?,
      specialtieId: json['specialtieID'] as String?,
      locationsId: json['locationsID'] as String?,
      locations: json['locations'] as String?,
      discountRate: json['discountRate'] as num?,
      endDate: json['endDate'] as String?,
      timeToEnd: json['timeToEnd'] as String?,
      programImage: json['programImage'] as String?,
      offerdetailsAR: json['offerdetailsAR'] as String?,
      offerdetailsEN: json['offerdetailsEN'] as String?,
    );

Map<String, dynamic> _$$OfferDataImplToJson(_$OfferDataImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'programID': instance.programId,
      'programVerID': instance.programVerId,
      'programName': instance.programName,
      'programArbName': instance.programArbName,
      'afterDiscount': instance.afterDiscount,
      'beforeDiscount': instance.beforeDiscount,
      'specialtie': instance.specialtie,
      'specialtieID': instance.specialtieId,
      'locationsID': instance.locationsId,
      'locations': instance.locations,
      'discountRate': instance.discountRate,
      'endDate': instance.endDate,
      'timeToEnd': instance.timeToEnd,
      'programImage': instance.programImage,
      'offerdetailsAR': instance.offerdetailsAR,
      'offerdetailsEN': instance.offerdetailsEN,
    };
