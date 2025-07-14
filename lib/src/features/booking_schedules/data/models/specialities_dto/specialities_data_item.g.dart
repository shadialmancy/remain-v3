// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialities_data_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialitiesDataItemImpl _$$SpecialitiesDataItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialitiesDataItemImpl(
      engName: json['engName'] as String?,
      arbName: json['arbName'] as String?,
      specId: json['specID'] as num?,
      doctorsCount: json['doctorsCount'] as num?,
      isVideoSession: json['isVideoSession'] as bool?,
    );

Map<String, dynamic> _$$SpecialitiesDataItemImplToJson(
        _$SpecialitiesDataItemImpl instance) =>
    <String, dynamic>{
      'engName': instance.engName,
      'arbName': instance.arbName,
      'specID': instance.specId,
      'doctorsCount': instance.doctorsCount,
      'isVideoSession': instance.isVideoSession,
    };
