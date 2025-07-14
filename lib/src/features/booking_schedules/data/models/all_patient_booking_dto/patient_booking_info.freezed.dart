// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_booking_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientBookingInfo _$PatientBookingInfoFromJson(Map<String, dynamic> json) {
  return _PatientBookingInfo.fromJson(json);
}

/// @nodoc
mixin _$PatientBookingInfo {
  @JsonKey(name: 'bookingID')
  num? get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'locationID')
  num? get locationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PatientID')
  num? get patientId => throw _privateConstructorUsedError;
  String? get patEngName => throw _privateConstructorUsedError;
  String? get patArbName => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctorID')
  num? get doctorId => throw _privateConstructorUsedError;
  String? get docEngName => throw _privateConstructorUsedError;
  String? get docArbName => throw _privateConstructorUsedError;
  num? get docSpecId => throw _privateConstructorUsedError;
  String? get docSpecEngName => throw _privateConstructorUsedError;
  String? get docSpecArbName => throw _privateConstructorUsedError;
  String? get appTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'serviceID')
  num? get serviceId => throw _privateConstructorUsedError;
  num? get servicePrice => throw _privateConstructorUsedError;
  bool? get isFreeRevisit => throw _privateConstructorUsedError;
  bool? get isAttend => throw _privateConstructorUsedError;
  bool? get isOnline => throw _privateConstructorUsedError;
  bool? get isPaid => throw _privateConstructorUsedError;
  num? get transHdrId => throw _privateConstructorUsedError;
  String? get appEngService => throw _privateConstructorUsedError;
  String? get appArbService => throw _privateConstructorUsedError;
  String? get locationArbAdress => throw _privateConstructorUsedError;
  String? get locationEngAdress => throw _privateConstructorUsedError;
  String? get appGuidlinesEng => throw _privateConstructorUsedError;
  String? get appGuidlinesArb => throw _privateConstructorUsedError;
  dynamic get doctorPhoto => throw _privateConstructorUsedError;
  dynamic get zoomInformation => throw _privateConstructorUsedError;

  /// Serializes this PatientBookingInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientBookingInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientBookingInfoCopyWith<PatientBookingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientBookingInfoCopyWith<$Res> {
  factory $PatientBookingInfoCopyWith(
          PatientBookingInfo value, $Res Function(PatientBookingInfo) then) =
      _$PatientBookingInfoCopyWithImpl<$Res, PatientBookingInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bookingID') num? bookingId,
      @JsonKey(name: 'locationID') num? locationId,
      @JsonKey(name: 'PatientID') num? patientId,
      String? patEngName,
      String? patArbName,
      @JsonKey(name: 'doctorID') num? doctorId,
      String? docEngName,
      String? docArbName,
      num? docSpecId,
      String? docSpecEngName,
      String? docSpecArbName,
      String? appTime,
      @JsonKey(name: 'serviceID') num? serviceId,
      num? servicePrice,
      bool? isFreeRevisit,
      bool? isAttend,
      bool? isOnline,
      bool? isPaid,
      num? transHdrId,
      String? appEngService,
      String? appArbService,
      String? locationArbAdress,
      String? locationEngAdress,
      String? appGuidlinesEng,
      String? appGuidlinesArb,
      dynamic doctorPhoto,
      dynamic zoomInformation});
}

/// @nodoc
class _$PatientBookingInfoCopyWithImpl<$Res, $Val extends PatientBookingInfo>
    implements $PatientBookingInfoCopyWith<$Res> {
  _$PatientBookingInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientBookingInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = freezed,
    Object? locationId = freezed,
    Object? patientId = freezed,
    Object? patEngName = freezed,
    Object? patArbName = freezed,
    Object? doctorId = freezed,
    Object? docEngName = freezed,
    Object? docArbName = freezed,
    Object? docSpecId = freezed,
    Object? docSpecEngName = freezed,
    Object? docSpecArbName = freezed,
    Object? appTime = freezed,
    Object? serviceId = freezed,
    Object? servicePrice = freezed,
    Object? isFreeRevisit = freezed,
    Object? isAttend = freezed,
    Object? isOnline = freezed,
    Object? isPaid = freezed,
    Object? transHdrId = freezed,
    Object? appEngService = freezed,
    Object? appArbService = freezed,
    Object? locationArbAdress = freezed,
    Object? locationEngAdress = freezed,
    Object? appGuidlinesEng = freezed,
    Object? appGuidlinesArb = freezed,
    Object? doctorPhoto = freezed,
    Object? zoomInformation = freezed,
  }) {
    return _then(_value.copyWith(
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as num?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as num?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as num?,
      patEngName: freezed == patEngName
          ? _value.patEngName
          : patEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      patArbName: freezed == patArbName
          ? _value.patArbName
          : patArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as num?,
      docEngName: freezed == docEngName
          ? _value.docEngName
          : docEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      docArbName: freezed == docArbName
          ? _value.docArbName
          : docArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      docSpecId: freezed == docSpecId
          ? _value.docSpecId
          : docSpecId // ignore: cast_nullable_to_non_nullable
              as num?,
      docSpecEngName: freezed == docSpecEngName
          ? _value.docSpecEngName
          : docSpecEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      docSpecArbName: freezed == docSpecArbName
          ? _value.docSpecArbName
          : docSpecArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      appTime: freezed == appTime
          ? _value.appTime
          : appTime // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as num?,
      servicePrice: freezed == servicePrice
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as num?,
      isFreeRevisit: freezed == isFreeRevisit
          ? _value.isFreeRevisit
          : isFreeRevisit // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAttend: freezed == isAttend
          ? _value.isAttend
          : isAttend // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      transHdrId: freezed == transHdrId
          ? _value.transHdrId
          : transHdrId // ignore: cast_nullable_to_non_nullable
              as num?,
      appEngService: freezed == appEngService
          ? _value.appEngService
          : appEngService // ignore: cast_nullable_to_non_nullable
              as String?,
      appArbService: freezed == appArbService
          ? _value.appArbService
          : appArbService // ignore: cast_nullable_to_non_nullable
              as String?,
      locationArbAdress: freezed == locationArbAdress
          ? _value.locationArbAdress
          : locationArbAdress // ignore: cast_nullable_to_non_nullable
              as String?,
      locationEngAdress: freezed == locationEngAdress
          ? _value.locationEngAdress
          : locationEngAdress // ignore: cast_nullable_to_non_nullable
              as String?,
      appGuidlinesEng: freezed == appGuidlinesEng
          ? _value.appGuidlinesEng
          : appGuidlinesEng // ignore: cast_nullable_to_non_nullable
              as String?,
      appGuidlinesArb: freezed == appGuidlinesArb
          ? _value.appGuidlinesArb
          : appGuidlinesArb // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorPhoto: freezed == doctorPhoto
          ? _value.doctorPhoto
          : doctorPhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
      zoomInformation: freezed == zoomInformation
          ? _value.zoomInformation
          : zoomInformation // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientBookingInfoImplCopyWith<$Res>
    implements $PatientBookingInfoCopyWith<$Res> {
  factory _$$PatientBookingInfoImplCopyWith(_$PatientBookingInfoImpl value,
          $Res Function(_$PatientBookingInfoImpl) then) =
      __$$PatientBookingInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bookingID') num? bookingId,
      @JsonKey(name: 'locationID') num? locationId,
      @JsonKey(name: 'PatientID') num? patientId,
      String? patEngName,
      String? patArbName,
      @JsonKey(name: 'doctorID') num? doctorId,
      String? docEngName,
      String? docArbName,
      num? docSpecId,
      String? docSpecEngName,
      String? docSpecArbName,
      String? appTime,
      @JsonKey(name: 'serviceID') num? serviceId,
      num? servicePrice,
      bool? isFreeRevisit,
      bool? isAttend,
      bool? isOnline,
      bool? isPaid,
      num? transHdrId,
      String? appEngService,
      String? appArbService,
      String? locationArbAdress,
      String? locationEngAdress,
      String? appGuidlinesEng,
      String? appGuidlinesArb,
      dynamic doctorPhoto,
      dynamic zoomInformation});
}

/// @nodoc
class __$$PatientBookingInfoImplCopyWithImpl<$Res>
    extends _$PatientBookingInfoCopyWithImpl<$Res, _$PatientBookingInfoImpl>
    implements _$$PatientBookingInfoImplCopyWith<$Res> {
  __$$PatientBookingInfoImplCopyWithImpl(_$PatientBookingInfoImpl _value,
      $Res Function(_$PatientBookingInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientBookingInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = freezed,
    Object? locationId = freezed,
    Object? patientId = freezed,
    Object? patEngName = freezed,
    Object? patArbName = freezed,
    Object? doctorId = freezed,
    Object? docEngName = freezed,
    Object? docArbName = freezed,
    Object? docSpecId = freezed,
    Object? docSpecEngName = freezed,
    Object? docSpecArbName = freezed,
    Object? appTime = freezed,
    Object? serviceId = freezed,
    Object? servicePrice = freezed,
    Object? isFreeRevisit = freezed,
    Object? isAttend = freezed,
    Object? isOnline = freezed,
    Object? isPaid = freezed,
    Object? transHdrId = freezed,
    Object? appEngService = freezed,
    Object? appArbService = freezed,
    Object? locationArbAdress = freezed,
    Object? locationEngAdress = freezed,
    Object? appGuidlinesEng = freezed,
    Object? appGuidlinesArb = freezed,
    Object? doctorPhoto = freezed,
    Object? zoomInformation = freezed,
  }) {
    return _then(_$PatientBookingInfoImpl(
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as num?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as num?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as num?,
      patEngName: freezed == patEngName
          ? _value.patEngName
          : patEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      patArbName: freezed == patArbName
          ? _value.patArbName
          : patArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as num?,
      docEngName: freezed == docEngName
          ? _value.docEngName
          : docEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      docArbName: freezed == docArbName
          ? _value.docArbName
          : docArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      docSpecId: freezed == docSpecId
          ? _value.docSpecId
          : docSpecId // ignore: cast_nullable_to_non_nullable
              as num?,
      docSpecEngName: freezed == docSpecEngName
          ? _value.docSpecEngName
          : docSpecEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      docSpecArbName: freezed == docSpecArbName
          ? _value.docSpecArbName
          : docSpecArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      appTime: freezed == appTime
          ? _value.appTime
          : appTime // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as num?,
      servicePrice: freezed == servicePrice
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as num?,
      isFreeRevisit: freezed == isFreeRevisit
          ? _value.isFreeRevisit
          : isFreeRevisit // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAttend: freezed == isAttend
          ? _value.isAttend
          : isAttend // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      transHdrId: freezed == transHdrId
          ? _value.transHdrId
          : transHdrId // ignore: cast_nullable_to_non_nullable
              as num?,
      appEngService: freezed == appEngService
          ? _value.appEngService
          : appEngService // ignore: cast_nullable_to_non_nullable
              as String?,
      appArbService: freezed == appArbService
          ? _value.appArbService
          : appArbService // ignore: cast_nullable_to_non_nullable
              as String?,
      locationArbAdress: freezed == locationArbAdress
          ? _value.locationArbAdress
          : locationArbAdress // ignore: cast_nullable_to_non_nullable
              as String?,
      locationEngAdress: freezed == locationEngAdress
          ? _value.locationEngAdress
          : locationEngAdress // ignore: cast_nullable_to_non_nullable
              as String?,
      appGuidlinesEng: freezed == appGuidlinesEng
          ? _value.appGuidlinesEng
          : appGuidlinesEng // ignore: cast_nullable_to_non_nullable
              as String?,
      appGuidlinesArb: freezed == appGuidlinesArb
          ? _value.appGuidlinesArb
          : appGuidlinesArb // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorPhoto: freezed == doctorPhoto
          ? _value.doctorPhoto
          : doctorPhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
      zoomInformation: freezed == zoomInformation
          ? _value.zoomInformation
          : zoomInformation // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientBookingInfoImpl implements _PatientBookingInfo {
  _$PatientBookingInfoImpl(
      {@JsonKey(name: 'bookingID') this.bookingId,
      @JsonKey(name: 'locationID') this.locationId,
      @JsonKey(name: 'PatientID') this.patientId,
      this.patEngName,
      this.patArbName,
      @JsonKey(name: 'doctorID') this.doctorId,
      this.docEngName,
      this.docArbName,
      this.docSpecId,
      this.docSpecEngName,
      this.docSpecArbName,
      this.appTime,
      @JsonKey(name: 'serviceID') this.serviceId,
      this.servicePrice,
      this.isFreeRevisit,
      this.isAttend,
      this.isOnline,
      this.isPaid,
      this.transHdrId,
      this.appEngService,
      this.appArbService,
      this.locationArbAdress,
      this.locationEngAdress,
      this.appGuidlinesEng,
      this.appGuidlinesArb,
      this.doctorPhoto,
      this.zoomInformation});

  factory _$PatientBookingInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientBookingInfoImplFromJson(json);

  @override
  @JsonKey(name: 'bookingID')
  final num? bookingId;
  @override
  @JsonKey(name: 'locationID')
  final num? locationId;
  @override
  @JsonKey(name: 'PatientID')
  final num? patientId;
  @override
  final String? patEngName;
  @override
  final String? patArbName;
  @override
  @JsonKey(name: 'doctorID')
  final num? doctorId;
  @override
  final String? docEngName;
  @override
  final String? docArbName;
  @override
  final num? docSpecId;
  @override
  final String? docSpecEngName;
  @override
  final String? docSpecArbName;
  @override
  final String? appTime;
  @override
  @JsonKey(name: 'serviceID')
  final num? serviceId;
  @override
  final num? servicePrice;
  @override
  final bool? isFreeRevisit;
  @override
  final bool? isAttend;
  @override
  final bool? isOnline;
  @override
  final bool? isPaid;
  @override
  final num? transHdrId;
  @override
  final String? appEngService;
  @override
  final String? appArbService;
  @override
  final String? locationArbAdress;
  @override
  final String? locationEngAdress;
  @override
  final String? appGuidlinesEng;
  @override
  final String? appGuidlinesArb;
  @override
  final dynamic doctorPhoto;
  @override
  final dynamic zoomInformation;

  @override
  String toString() {
    return 'PatientBookingInfo(bookingId: $bookingId, locationId: $locationId, patientId: $patientId, patEngName: $patEngName, patArbName: $patArbName, doctorId: $doctorId, docEngName: $docEngName, docArbName: $docArbName, docSpecId: $docSpecId, docSpecEngName: $docSpecEngName, docSpecArbName: $docSpecArbName, appTime: $appTime, serviceId: $serviceId, servicePrice: $servicePrice, isFreeRevisit: $isFreeRevisit, isAttend: $isAttend, isOnline: $isOnline, isPaid: $isPaid, transHdrId: $transHdrId, appEngService: $appEngService, appArbService: $appArbService, locationArbAdress: $locationArbAdress, locationEngAdress: $locationEngAdress, appGuidlinesEng: $appGuidlinesEng, appGuidlinesArb: $appGuidlinesArb, doctorPhoto: $doctorPhoto, zoomInformation: $zoomInformation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientBookingInfoImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.patEngName, patEngName) ||
                other.patEngName == patEngName) &&
            (identical(other.patArbName, patArbName) ||
                other.patArbName == patArbName) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.docEngName, docEngName) ||
                other.docEngName == docEngName) &&
            (identical(other.docArbName, docArbName) ||
                other.docArbName == docArbName) &&
            (identical(other.docSpecId, docSpecId) ||
                other.docSpecId == docSpecId) &&
            (identical(other.docSpecEngName, docSpecEngName) ||
                other.docSpecEngName == docSpecEngName) &&
            (identical(other.docSpecArbName, docSpecArbName) ||
                other.docSpecArbName == docSpecArbName) &&
            (identical(other.appTime, appTime) || other.appTime == appTime) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.servicePrice, servicePrice) ||
                other.servicePrice == servicePrice) &&
            (identical(other.isFreeRevisit, isFreeRevisit) ||
                other.isFreeRevisit == isFreeRevisit) &&
            (identical(other.isAttend, isAttend) ||
                other.isAttend == isAttend) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.transHdrId, transHdrId) ||
                other.transHdrId == transHdrId) &&
            (identical(other.appEngService, appEngService) ||
                other.appEngService == appEngService) &&
            (identical(other.appArbService, appArbService) ||
                other.appArbService == appArbService) &&
            (identical(other.locationArbAdress, locationArbAdress) ||
                other.locationArbAdress == locationArbAdress) &&
            (identical(other.locationEngAdress, locationEngAdress) ||
                other.locationEngAdress == locationEngAdress) &&
            (identical(other.appGuidlinesEng, appGuidlinesEng) ||
                other.appGuidlinesEng == appGuidlinesEng) &&
            (identical(other.appGuidlinesArb, appGuidlinesArb) ||
                other.appGuidlinesArb == appGuidlinesArb) &&
            const DeepCollectionEquality()
                .equals(other.doctorPhoto, doctorPhoto) &&
            const DeepCollectionEquality()
                .equals(other.zoomInformation, zoomInformation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        bookingId,
        locationId,
        patientId,
        patEngName,
        patArbName,
        doctorId,
        docEngName,
        docArbName,
        docSpecId,
        docSpecEngName,
        docSpecArbName,
        appTime,
        serviceId,
        servicePrice,
        isFreeRevisit,
        isAttend,
        isOnline,
        isPaid,
        transHdrId,
        appEngService,
        appArbService,
        locationArbAdress,
        locationEngAdress,
        appGuidlinesEng,
        appGuidlinesArb,
        const DeepCollectionEquality().hash(doctorPhoto),
        const DeepCollectionEquality().hash(zoomInformation)
      ]);

  /// Create a copy of PatientBookingInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientBookingInfoImplCopyWith<_$PatientBookingInfoImpl> get copyWith =>
      __$$PatientBookingInfoImplCopyWithImpl<_$PatientBookingInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientBookingInfoImplToJson(
      this,
    );
  }
}

abstract class _PatientBookingInfo implements PatientBookingInfo {
  factory _PatientBookingInfo(
      {@JsonKey(name: 'bookingID') final num? bookingId,
      @JsonKey(name: 'locationID') final num? locationId,
      @JsonKey(name: 'PatientID') final num? patientId,
      final String? patEngName,
      final String? patArbName,
      @JsonKey(name: 'doctorID') final num? doctorId,
      final String? docEngName,
      final String? docArbName,
      final num? docSpecId,
      final String? docSpecEngName,
      final String? docSpecArbName,
      final String? appTime,
      @JsonKey(name: 'serviceID') final num? serviceId,
      final num? servicePrice,
      final bool? isFreeRevisit,
      final bool? isAttend,
      final bool? isOnline,
      final bool? isPaid,
      final num? transHdrId,
      final String? appEngService,
      final String? appArbService,
      final String? locationArbAdress,
      final String? locationEngAdress,
      final String? appGuidlinesEng,
      final String? appGuidlinesArb,
      final dynamic doctorPhoto,
      final dynamic zoomInformation}) = _$PatientBookingInfoImpl;

  factory _PatientBookingInfo.fromJson(Map<String, dynamic> json) =
      _$PatientBookingInfoImpl.fromJson;

  @override
  @JsonKey(name: 'bookingID')
  num? get bookingId;
  @override
  @JsonKey(name: 'locationID')
  num? get locationId;
  @override
  @JsonKey(name: 'PatientID')
  num? get patientId;
  @override
  String? get patEngName;
  @override
  String? get patArbName;
  @override
  @JsonKey(name: 'doctorID')
  num? get doctorId;
  @override
  String? get docEngName;
  @override
  String? get docArbName;
  @override
  num? get docSpecId;
  @override
  String? get docSpecEngName;
  @override
  String? get docSpecArbName;
  @override
  String? get appTime;
  @override
  @JsonKey(name: 'serviceID')
  num? get serviceId;
  @override
  num? get servicePrice;
  @override
  bool? get isFreeRevisit;
  @override
  bool? get isAttend;
  @override
  bool? get isOnline;
  @override
  bool? get isPaid;
  @override
  num? get transHdrId;
  @override
  String? get appEngService;
  @override
  String? get appArbService;
  @override
  String? get locationArbAdress;
  @override
  String? get locationEngAdress;
  @override
  String? get appGuidlinesEng;
  @override
  String? get appGuidlinesArb;
  @override
  dynamic get doctorPhoto;
  @override
  dynamic get zoomInformation;

  /// Create a copy of PatientBookingInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientBookingInfoImplCopyWith<_$PatientBookingInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
