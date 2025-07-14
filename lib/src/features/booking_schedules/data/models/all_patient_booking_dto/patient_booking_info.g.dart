// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_booking_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientBookingInfoImpl _$$PatientBookingInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientBookingInfoImpl(
      bookingId: json['bookingID'] as num?,
      locationId: json['locationID'] as num?,
      patientId: json['PatientID'] as num?,
      patEngName: json['patEngName'] as String?,
      patArbName: json['patArbName'] as String?,
      doctorId: json['doctorID'] as num?,
      docEngName: json['docEngName'] as String?,
      docArbName: json['docArbName'] as String?,
      docSpecId: json['docSpecId'] as num?,
      docSpecEngName: json['docSpecEngName'] as String?,
      docSpecArbName: json['docSpecArbName'] as String?,
      appTime: json['appTime'] as String?,
      serviceId: json['serviceID'] as num?,
      servicePrice: json['servicePrice'] as num?,
      isFreeRevisit: json['isFreeRevisit'] as bool?,
      isAttend: json['isAttend'] as bool?,
      isOnline: json['isOnline'] as bool?,
      isPaid: json['isPaid'] as bool?,
      transHdrId: json['transHdrId'] as num?,
      appEngService: json['appEngService'] as String?,
      appArbService: json['appArbService'] as String?,
      locationArbAdress: json['locationArbAdress'] as String?,
      locationEngAdress: json['locationEngAdress'] as String?,
      appGuidlinesEng: json['appGuidlinesEng'] as String?,
      appGuidlinesArb: json['appGuidlinesArb'] as String?,
      doctorPhoto: json['doctorPhoto'],
      zoomInformation: json['zoomInformation'],
    );

Map<String, dynamic> _$$PatientBookingInfoImplToJson(
        _$PatientBookingInfoImpl instance) =>
    <String, dynamic>{
      'bookingID': instance.bookingId,
      'locationID': instance.locationId,
      'PatientID': instance.patientId,
      'patEngName': instance.patEngName,
      'patArbName': instance.patArbName,
      'doctorID': instance.doctorId,
      'docEngName': instance.docEngName,
      'docArbName': instance.docArbName,
      'docSpecId': instance.docSpecId,
      'docSpecEngName': instance.docSpecEngName,
      'docSpecArbName': instance.docSpecArbName,
      'appTime': instance.appTime,
      'serviceID': instance.serviceId,
      'servicePrice': instance.servicePrice,
      'isFreeRevisit': instance.isFreeRevisit,
      'isAttend': instance.isAttend,
      'isOnline': instance.isOnline,
      'isPaid': instance.isPaid,
      'transHdrId': instance.transHdrId,
      'appEngService': instance.appEngService,
      'appArbService': instance.appArbService,
      'locationArbAdress': instance.locationArbAdress,
      'locationEngAdress': instance.locationEngAdress,
      'appGuidlinesEng': instance.appGuidlinesEng,
      'appGuidlinesArb': instance.appGuidlinesArb,
      'doctorPhoto': instance.doctorPhoto,
      'zoomInformation': instance.zoomInformation,
    };
