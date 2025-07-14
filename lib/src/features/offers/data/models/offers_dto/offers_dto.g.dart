// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OffersDtoImpl _$$OffersDtoImplFromJson(Map<String, dynamic> json) =>
    _$OffersDtoImpl(
      requestId: json['request_id'] as String?,
      code: json['code'] as num?,
      errorMessage: json['error_message'] as String?,
      totalpage: json['totalpage'] as num?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OfferData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OffersDtoImplToJson(_$OffersDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'totalpage': instance.totalpage,
      'data': instance.data,
    };
