// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingData _$BookingDataFromJson(Map<String, dynamic> json) {
  return _BookingData.fromJson(json);
}

/// @nodoc
mixin _$BookingData {
  String? get doctorId => throw _privateConstructorUsedError;
  String? get facilityId => throw _privateConstructorUsedError;
  String? get serviceId => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  dynamic get locationId => throw _privateConstructorUsedError;
  Patient? get patient => throw _privateConstructorUsedError;
  Insurance? get insurance => throw _privateConstructorUsedError;
  String? get telemedicineUrl => throw _privateConstructorUsedError;

  /// Serializes this BookingData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingDataCopyWith<BookingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDataCopyWith<$Res> {
  factory $BookingDataCopyWith(
          BookingData value, $Res Function(BookingData) then) =
      _$BookingDataCopyWithImpl<$Res, BookingData>;
  @useResult
  $Res call(
      {String? doctorId,
      String? facilityId,
      String? serviceId,
      String? time,
      String? source,
      dynamic locationId,
      Patient? patient,
      Insurance? insurance,
      String? telemedicineUrl});

  $PatientCopyWith<$Res>? get patient;
  $InsuranceCopyWith<$Res>? get insurance;
}

/// @nodoc
class _$BookingDataCopyWithImpl<$Res, $Val extends BookingData>
    implements $BookingDataCopyWith<$Res> {
  _$BookingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = freezed,
    Object? facilityId = freezed,
    Object? serviceId = freezed,
    Object? time = freezed,
    Object? source = freezed,
    Object? locationId = freezed,
    Object? patient = freezed,
    Object? insurance = freezed,
    Object? telemedicineUrl = freezed,
  }) {
    return _then(_value.copyWith(
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
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
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
      insurance: freezed == insurance
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as Insurance?,
      telemedicineUrl: freezed == telemedicineUrl
          ? _value.telemedicineUrl
          : telemedicineUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BookingData
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

  /// Create a copy of BookingData
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
abstract class _$$BookingDataImplCopyWith<$Res>
    implements $BookingDataCopyWith<$Res> {
  factory _$$BookingDataImplCopyWith(
          _$BookingDataImpl value, $Res Function(_$BookingDataImpl) then) =
      __$$BookingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? doctorId,
      String? facilityId,
      String? serviceId,
      String? time,
      String? source,
      dynamic locationId,
      Patient? patient,
      Insurance? insurance,
      String? telemedicineUrl});

  @override
  $PatientCopyWith<$Res>? get patient;
  @override
  $InsuranceCopyWith<$Res>? get insurance;
}

/// @nodoc
class __$$BookingDataImplCopyWithImpl<$Res>
    extends _$BookingDataCopyWithImpl<$Res, _$BookingDataImpl>
    implements _$$BookingDataImplCopyWith<$Res> {
  __$$BookingDataImplCopyWithImpl(
      _$BookingDataImpl _value, $Res Function(_$BookingDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = freezed,
    Object? facilityId = freezed,
    Object? serviceId = freezed,
    Object? time = freezed,
    Object? source = freezed,
    Object? locationId = freezed,
    Object? patient = freezed,
    Object? insurance = freezed,
    Object? telemedicineUrl = freezed,
  }) {
    return _then(_$BookingDataImpl(
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
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
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
      insurance: freezed == insurance
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as Insurance?,
      telemedicineUrl: freezed == telemedicineUrl
          ? _value.telemedicineUrl
          : telemedicineUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingDataImpl implements _BookingData {
  _$BookingDataImpl(
      {this.doctorId,
      this.facilityId,
      this.serviceId,
      this.time,
      this.source,
      this.locationId,
      this.patient,
      this.insurance,
      this.telemedicineUrl});

  factory _$BookingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingDataImplFromJson(json);

  @override
  final String? doctorId;
  @override
  final String? facilityId;
  @override
  final String? serviceId;
  @override
  final String? time;
  @override
  final String? source;
  @override
  final dynamic locationId;
  @override
  final Patient? patient;
  @override
  final Insurance? insurance;
  @override
  final String? telemedicineUrl;

  @override
  String toString() {
    return 'BookingData(doctorId: $doctorId, facilityId: $facilityId, serviceId: $serviceId, time: $time, source: $source, locationId: $locationId, patient: $patient, insurance: $insurance, telemedicineUrl: $telemedicineUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDataImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.facilityId, facilityId) ||
                other.facilityId == facilityId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.source, source) || other.source == source) &&
            const DeepCollectionEquality()
                .equals(other.locationId, locationId) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.insurance, insurance) ||
                other.insurance == insurance) &&
            (identical(other.telemedicineUrl, telemedicineUrl) ||
                other.telemedicineUrl == telemedicineUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      doctorId,
      facilityId,
      serviceId,
      time,
      source,
      const DeepCollectionEquality().hash(locationId),
      patient,
      insurance,
      telemedicineUrl);

  /// Create a copy of BookingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDataImplCopyWith<_$BookingDataImpl> get copyWith =>
      __$$BookingDataImplCopyWithImpl<_$BookingDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingDataImplToJson(
      this,
    );
  }
}

abstract class _BookingData implements BookingData {
  factory _BookingData(
      {final String? doctorId,
      final String? facilityId,
      final String? serviceId,
      final String? time,
      final String? source,
      final dynamic locationId,
      final Patient? patient,
      final Insurance? insurance,
      final String? telemedicineUrl}) = _$BookingDataImpl;

  factory _BookingData.fromJson(Map<String, dynamic> json) =
      _$BookingDataImpl.fromJson;

  @override
  String? get doctorId;
  @override
  String? get facilityId;
  @override
  String? get serviceId;
  @override
  String? get time;
  @override
  String? get source;
  @override
  dynamic get locationId;
  @override
  Patient? get patient;
  @override
  Insurance? get insurance;
  @override
  String? get telemedicineUrl;

  /// Create a copy of BookingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingDataImplCopyWith<_$BookingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
