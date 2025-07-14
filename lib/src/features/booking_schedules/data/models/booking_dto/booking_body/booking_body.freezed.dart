// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingBody _$BookingBodyFromJson(Map<String, dynamic> json) {
  return _BookingBody.fromJson(json);
}

/// @nodoc
mixin _$BookingBody {
  String? get doctorid => throw _privateConstructorUsedError;
  @JsonKey(name: 'facilityID')
  String? get facilityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'serviceID')
  String? get serviceId => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'telemedicine_url')
  String? get telemedicineUrl => throw _privateConstructorUsedError;
  Patient? get patient => throw _privateConstructorUsedError;
  Insurance? get insurance => throw _privateConstructorUsedError;
  @JsonKey(name: 'LocationID')
  num? get locationId => throw _privateConstructorUsedError;

  /// Serializes this BookingBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingBodyCopyWith<BookingBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingBodyCopyWith<$Res> {
  factory $BookingBodyCopyWith(
          BookingBody value, $Res Function(BookingBody) then) =
      _$BookingBodyCopyWithImpl<$Res, BookingBody>;
  @useResult
  $Res call(
      {String? doctorid,
      @JsonKey(name: 'facilityID') String? facilityId,
      @JsonKey(name: 'serviceID') String? serviceId,
      String? time,
      String? source,
      @JsonKey(name: 'telemedicine_url') String? telemedicineUrl,
      Patient? patient,
      Insurance? insurance,
      @JsonKey(name: 'LocationID') num? locationId});

  $PatientCopyWith<$Res>? get patient;
  $InsuranceCopyWith<$Res>? get insurance;
}

/// @nodoc
class _$BookingBodyCopyWithImpl<$Res, $Val extends BookingBody>
    implements $BookingBodyCopyWith<$Res> {
  _$BookingBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorid = freezed,
    Object? facilityId = freezed,
    Object? serviceId = freezed,
    Object? time = freezed,
    Object? source = freezed,
    Object? telemedicineUrl = freezed,
    Object? patient = freezed,
    Object? insurance = freezed,
    Object? locationId = freezed,
  }) {
    return _then(_value.copyWith(
      doctorid: freezed == doctorid
          ? _value.doctorid
          : doctorid // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityId: freezed == facilityId
          ? _value.facilityId
          : facilityId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      telemedicineUrl: freezed == telemedicineUrl
          ? _value.telemedicineUrl
          : telemedicineUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
      insurance: freezed == insurance
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as Insurance?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  /// Create a copy of BookingBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PatientCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $PatientCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  /// Create a copy of BookingBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InsuranceCopyWith<$Res>? get insurance {
    if (_value.insurance == null) {
      return null;
    }

    return $InsuranceCopyWith<$Res>(_value.insurance!, (value) {
      return _then(_value.copyWith(insurance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingBodyImplCopyWith<$Res>
    implements $BookingBodyCopyWith<$Res> {
  factory _$$BookingBodyImplCopyWith(
          _$BookingBodyImpl value, $Res Function(_$BookingBodyImpl) then) =
      __$$BookingBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? doctorid,
      @JsonKey(name: 'facilityID') String? facilityId,
      @JsonKey(name: 'serviceID') String? serviceId,
      String? time,
      String? source,
      @JsonKey(name: 'telemedicine_url') String? telemedicineUrl,
      Patient? patient,
      Insurance? insurance,
      @JsonKey(name: 'LocationID') num? locationId});

  @override
  $PatientCopyWith<$Res>? get patient;
  @override
  $InsuranceCopyWith<$Res>? get insurance;
}

/// @nodoc
class __$$BookingBodyImplCopyWithImpl<$Res>
    extends _$BookingBodyCopyWithImpl<$Res, _$BookingBodyImpl>
    implements _$$BookingBodyImplCopyWith<$Res> {
  __$$BookingBodyImplCopyWithImpl(
      _$BookingBodyImpl _value, $Res Function(_$BookingBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorid = freezed,
    Object? facilityId = freezed,
    Object? serviceId = freezed,
    Object? time = freezed,
    Object? source = freezed,
    Object? telemedicineUrl = freezed,
    Object? patient = freezed,
    Object? insurance = freezed,
    Object? locationId = freezed,
  }) {
    return _then(_$BookingBodyImpl(
      doctorid: freezed == doctorid
          ? _value.doctorid
          : doctorid // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityId: freezed == facilityId
          ? _value.facilityId
          : facilityId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      telemedicineUrl: freezed == telemedicineUrl
          ? _value.telemedicineUrl
          : telemedicineUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
      insurance: freezed == insurance
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as Insurance?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingBodyImpl implements _BookingBody {
  _$BookingBodyImpl(
      {this.doctorid,
      @JsonKey(name: 'facilityID') this.facilityId,
      @JsonKey(name: 'serviceID') this.serviceId,
      this.time,
      this.source,
      @JsonKey(name: 'telemedicine_url') this.telemedicineUrl,
      this.patient,
      this.insurance,
      @JsonKey(name: 'LocationID') this.locationId});

  factory _$BookingBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingBodyImplFromJson(json);

  @override
  final String? doctorid;
  @override
  @JsonKey(name: 'facilityID')
  final String? facilityId;
  @override
  @JsonKey(name: 'serviceID')
  final String? serviceId;
  @override
  final String? time;
  @override
  final String? source;
  @override
  @JsonKey(name: 'telemedicine_url')
  final String? telemedicineUrl;
  @override
  final Patient? patient;
  @override
  final Insurance? insurance;
  @override
  @JsonKey(name: 'LocationID')
  final num? locationId;

  @override
  String toString() {
    return 'BookingBody(doctorid: $doctorid, facilityId: $facilityId, serviceId: $serviceId, time: $time, source: $source, telemedicineUrl: $telemedicineUrl, patient: $patient, insurance: $insurance, locationId: $locationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingBodyImpl &&
            (identical(other.doctorid, doctorid) ||
                other.doctorid == doctorid) &&
            (identical(other.facilityId, facilityId) ||
                other.facilityId == facilityId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.telemedicineUrl, telemedicineUrl) ||
                other.telemedicineUrl == telemedicineUrl) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.insurance, insurance) ||
                other.insurance == insurance) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, doctorid, facilityId, serviceId,
      time, source, telemedicineUrl, patient, insurance, locationId);

  /// Create a copy of BookingBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingBodyImplCopyWith<_$BookingBodyImpl> get copyWith =>
      __$$BookingBodyImplCopyWithImpl<_$BookingBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingBodyImplToJson(
      this,
    );
  }
}

abstract class _BookingBody implements BookingBody {
  factory _BookingBody(
      {final String? doctorid,
      @JsonKey(name: 'facilityID') final String? facilityId,
      @JsonKey(name: 'serviceID') final String? serviceId,
      final String? time,
      final String? source,
      @JsonKey(name: 'telemedicine_url') final String? telemedicineUrl,
      final Patient? patient,
      final Insurance? insurance,
      @JsonKey(name: 'LocationID') final num? locationId}) = _$BookingBodyImpl;

  factory _BookingBody.fromJson(Map<String, dynamic> json) =
      _$BookingBodyImpl.fromJson;

  @override
  String? get doctorid;
  @override
  @JsonKey(name: 'facilityID')
  String? get facilityId;
  @override
  @JsonKey(name: 'serviceID')
  String? get serviceId;
  @override
  String? get time;
  @override
  String? get source;
  @override
  @JsonKey(name: 'telemedicine_url')
  String? get telemedicineUrl;
  @override
  Patient? get patient;
  @override
  Insurance? get insurance;
  @override
  @JsonKey(name: 'LocationID')
  num? get locationId;

  /// Create a copy of BookingBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingBodyImplCopyWith<_$BookingBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
