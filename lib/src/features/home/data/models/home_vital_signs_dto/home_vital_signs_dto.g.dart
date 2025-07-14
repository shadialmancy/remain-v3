// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_vital_signs_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeVitalSignsDtoImpl _$$HomeVitalSignsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeVitalSignsDtoImpl(
      requestId: json['request_id'] as String?,
      code: (json['code'] as num?)?.toInt(),
      errorMessage: json['error_message'] as String?,
      totalpage: (json['totalpage'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => VitalSignsDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeVitalSignsDtoImplToJson(
        _$HomeVitalSignsDtoImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'code': instance.code,
      'error_message': instance.errorMessage,
      'totalpage': instance.totalpage,
      'data': instance.data,
    };
