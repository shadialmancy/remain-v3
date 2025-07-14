// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DoctorData _$DoctorDataFromJson(Map<String, dynamic> json) {
  return _DoctorData.fromJson(json);
}

/// @nodoc
mixin _$DoctorData {
  @JsonKey(name: 'doctorID')
  num? get doctorId => throw _privateConstructorUsedError;
  String? get engName => throw _privateConstructorUsedError;
  String? get arbName => throw _privateConstructorUsedError;
  num? get servicePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'specID')
  num? get specId => throw _privateConstructorUsedError;
  String? get specialityEngName => throw _privateConstructorUsedError;
  String? get specialityArbName => throw _privateConstructorUsedError;
  @JsonKey(name: 'facilityID')
  num? get facilityId => throw _privateConstructorUsedError;
  String? get facilityName => throw _privateConstructorUsedError;
  bool? get isOnline => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  num? get rates => throw _privateConstructorUsedError;
  num? get stars => throw _privateConstructorUsedError;
  ServiceInfo? get serviceInfo => throw _privateConstructorUsedError;
  DoctorProfile? get doctorProfile => throw _privateConstructorUsedError;

  /// Serializes this DoctorData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoctorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorDataCopyWith<DoctorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorDataCopyWith<$Res> {
  factory $DoctorDataCopyWith(
          DoctorData value, $Res Function(DoctorData) then) =
      _$DoctorDataCopyWithImpl<$Res, DoctorData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'doctorID') num? doctorId,
      String? engName,
      String? arbName,
      num? servicePrice,
      @JsonKey(name: 'specID') num? specId,
      String? specialityEngName,
      String? specialityArbName,
      @JsonKey(name: 'facilityID') num? facilityId,
      String? facilityName,
      bool? isOnline,
      String? status,
      num? rates,
      num? stars,
      ServiceInfo? serviceInfo,
      DoctorProfile? doctorProfile});

  $ServiceInfoCopyWith<$Res>? get serviceInfo;
  $DoctorProfileCopyWith<$Res>? get doctorProfile;
}

/// @nodoc
class _$DoctorDataCopyWithImpl<$Res, $Val extends DoctorData>
    implements $DoctorDataCopyWith<$Res> {
  _$DoctorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = freezed,
    Object? engName = freezed,
    Object? arbName = freezed,
    Object? servicePrice = freezed,
    Object? specId = freezed,
    Object? specialityEngName = freezed,
    Object? specialityArbName = freezed,
    Object? facilityId = freezed,
    Object? facilityName = freezed,
    Object? isOnline = freezed,
    Object? status = freezed,
    Object? rates = freezed,
    Object? stars = freezed,
    Object? serviceInfo = freezed,
    Object? doctorProfile = freezed,
  }) {
    return _then(_value.copyWith(
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as num?,
      engName: freezed == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String?,
      arbName: freezed == arbName
          ? _value.arbName
          : arbName // ignore: cast_nullable_to_non_nullable
              as String?,
      servicePrice: freezed == servicePrice
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as num?,
      specId: freezed == specId
          ? _value.specId
          : specId // ignore: cast_nullable_to_non_nullable
              as num?,
      specialityEngName: freezed == specialityEngName
          ? _value.specialityEngName
          : specialityEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      specialityArbName: freezed == specialityArbName
          ? _value.specialityArbName
          : specialityArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityId: freezed == facilityId
          ? _value.facilityId
          : facilityId // ignore: cast_nullable_to_non_nullable
              as num?,
      facilityName: freezed == facilityName
          ? _value.facilityName
          : facilityName // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rates: freezed == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as num?,
      stars: freezed == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as num?,
      serviceInfo: freezed == serviceInfo
          ? _value.serviceInfo
          : serviceInfo // ignore: cast_nullable_to_non_nullable
              as ServiceInfo?,
      doctorProfile: freezed == doctorProfile
          ? _value.doctorProfile
          : doctorProfile // ignore: cast_nullable_to_non_nullable
              as DoctorProfile?,
    ) as $Val);
  }

  /// Create a copy of DoctorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceInfoCopyWith<$Res>? get serviceInfo {
    if (_value.serviceInfo == null) {
      return null;
    }

    return $ServiceInfoCopyWith<$Res>(_value.serviceInfo!, (value) {
      return _then(_value.copyWith(serviceInfo: value) as $Val);
    });
  }

  /// Create a copy of DoctorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorProfileCopyWith<$Res>? get doctorProfile {
    if (_value.doctorProfile == null) {
      return null;
    }

    return $DoctorProfileCopyWith<$Res>(_value.doctorProfile!, (value) {
      return _then(_value.copyWith(doctorProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorDataImplCopyWith<$Res>
    implements $DoctorDataCopyWith<$Res> {
  factory _$$DoctorDataImplCopyWith(
          _$DoctorDataImpl value, $Res Function(_$DoctorDataImpl) then) =
      __$$DoctorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'doctorID') num? doctorId,
      String? engName,
      String? arbName,
      num? servicePrice,
      @JsonKey(name: 'specID') num? specId,
      String? specialityEngName,
      String? specialityArbName,
      @JsonKey(name: 'facilityID') num? facilityId,
      String? facilityName,
      bool? isOnline,
      String? status,
      num? rates,
      num? stars,
      ServiceInfo? serviceInfo,
      DoctorProfile? doctorProfile});

  @override
  $ServiceInfoCopyWith<$Res>? get serviceInfo;
  @override
  $DoctorProfileCopyWith<$Res>? get doctorProfile;
}

/// @nodoc
class __$$DoctorDataImplCopyWithImpl<$Res>
    extends _$DoctorDataCopyWithImpl<$Res, _$DoctorDataImpl>
    implements _$$DoctorDataImplCopyWith<$Res> {
  __$$DoctorDataImplCopyWithImpl(
      _$DoctorDataImpl _value, $Res Function(_$DoctorDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = freezed,
    Object? engName = freezed,
    Object? arbName = freezed,
    Object? servicePrice = freezed,
    Object? specId = freezed,
    Object? specialityEngName = freezed,
    Object? specialityArbName = freezed,
    Object? facilityId = freezed,
    Object? facilityName = freezed,
    Object? isOnline = freezed,
    Object? status = freezed,
    Object? rates = freezed,
    Object? stars = freezed,
    Object? serviceInfo = freezed,
    Object? doctorProfile = freezed,
  }) {
    return _then(_$DoctorDataImpl(
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as num?,
      engName: freezed == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String?,
      arbName: freezed == arbName
          ? _value.arbName
          : arbName // ignore: cast_nullable_to_non_nullable
              as String?,
      servicePrice: freezed == servicePrice
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as num?,
      specId: freezed == specId
          ? _value.specId
          : specId // ignore: cast_nullable_to_non_nullable
              as num?,
      specialityEngName: freezed == specialityEngName
          ? _value.specialityEngName
          : specialityEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      specialityArbName: freezed == specialityArbName
          ? _value.specialityArbName
          : specialityArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityId: freezed == facilityId
          ? _value.facilityId
          : facilityId // ignore: cast_nullable_to_non_nullable
              as num?,
      facilityName: freezed == facilityName
          ? _value.facilityName
          : facilityName // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rates: freezed == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as num?,
      stars: freezed == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as num?,
      serviceInfo: freezed == serviceInfo
          ? _value.serviceInfo
          : serviceInfo // ignore: cast_nullable_to_non_nullable
              as ServiceInfo?,
      doctorProfile: freezed == doctorProfile
          ? _value.doctorProfile
          : doctorProfile // ignore: cast_nullable_to_non_nullable
              as DoctorProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorDataImpl implements _DoctorData {
  _$DoctorDataImpl(
      {@JsonKey(name: 'doctorID') this.doctorId,
      this.engName,
      this.arbName,
      this.servicePrice,
      @JsonKey(name: 'specID') this.specId,
      this.specialityEngName,
      this.specialityArbName,
      @JsonKey(name: 'facilityID') this.facilityId,
      this.facilityName,
      this.isOnline,
      this.status,
      this.rates,
      this.stars,
      this.serviceInfo,
      this.doctorProfile});

  factory _$DoctorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorDataImplFromJson(json);

  @override
  @JsonKey(name: 'doctorID')
  final num? doctorId;
  @override
  final String? engName;
  @override
  final String? arbName;
  @override
  final num? servicePrice;
  @override
  @JsonKey(name: 'specID')
  final num? specId;
  @override
  final String? specialityEngName;
  @override
  final String? specialityArbName;
  @override
  @JsonKey(name: 'facilityID')
  final num? facilityId;
  @override
  final String? facilityName;
  @override
  final bool? isOnline;
  @override
  final String? status;
  @override
  final num? rates;
  @override
  final num? stars;
  @override
  final ServiceInfo? serviceInfo;
  @override
  final DoctorProfile? doctorProfile;

  @override
  String toString() {
    return 'DoctorData(doctorId: $doctorId, engName: $engName, arbName: $arbName, servicePrice: $servicePrice, specId: $specId, specialityEngName: $specialityEngName, specialityArbName: $specialityArbName, facilityId: $facilityId, facilityName: $facilityName, isOnline: $isOnline, status: $status, rates: $rates, stars: $stars, serviceInfo: $serviceInfo, doctorProfile: $doctorProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorDataImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.engName, engName) || other.engName == engName) &&
            (identical(other.arbName, arbName) || other.arbName == arbName) &&
            (identical(other.servicePrice, servicePrice) ||
                other.servicePrice == servicePrice) &&
            (identical(other.specId, specId) || other.specId == specId) &&
            (identical(other.specialityEngName, specialityEngName) ||
                other.specialityEngName == specialityEngName) &&
            (identical(other.specialityArbName, specialityArbName) ||
                other.specialityArbName == specialityArbName) &&
            (identical(other.facilityId, facilityId) ||
                other.facilityId == facilityId) &&
            (identical(other.facilityName, facilityName) ||
                other.facilityName == facilityName) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rates, rates) || other.rates == rates) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.serviceInfo, serviceInfo) ||
                other.serviceInfo == serviceInfo) &&
            (identical(other.doctorProfile, doctorProfile) ||
                other.doctorProfile == doctorProfile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      doctorId,
      engName,
      arbName,
      servicePrice,
      specId,
      specialityEngName,
      specialityArbName,
      facilityId,
      facilityName,
      isOnline,
      status,
      rates,
      stars,
      serviceInfo,
      doctorProfile);

  /// Create a copy of DoctorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorDataImplCopyWith<_$DoctorDataImpl> get copyWith =>
      __$$DoctorDataImplCopyWithImpl<_$DoctorDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorDataImplToJson(
      this,
    );
  }
}

abstract class _DoctorData implements DoctorData {
  factory _DoctorData(
      {@JsonKey(name: 'doctorID') final num? doctorId,
      final String? engName,
      final String? arbName,
      final num? servicePrice,
      @JsonKey(name: 'specID') final num? specId,
      final String? specialityEngName,
      final String? specialityArbName,
      @JsonKey(name: 'facilityID') final num? facilityId,
      final String? facilityName,
      final bool? isOnline,
      final String? status,
      final num? rates,
      final num? stars,
      final ServiceInfo? serviceInfo,
      final DoctorProfile? doctorProfile}) = _$DoctorDataImpl;

  factory _DoctorData.fromJson(Map<String, dynamic> json) =
      _$DoctorDataImpl.fromJson;

  @override
  @JsonKey(name: 'doctorID')
  num? get doctorId;
  @override
  String? get engName;
  @override
  String? get arbName;
  @override
  num? get servicePrice;
  @override
  @JsonKey(name: 'specID')
  num? get specId;
  @override
  String? get specialityEngName;
  @override
  String? get specialityArbName;
  @override
  @JsonKey(name: 'facilityID')
  num? get facilityId;
  @override
  String? get facilityName;
  @override
  bool? get isOnline;
  @override
  String? get status;
  @override
  num? get rates;
  @override
  num? get stars;
  @override
  ServiceInfo? get serviceInfo;
  @override
  DoctorProfile? get doctorProfile;

  /// Create a copy of DoctorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorDataImplCopyWith<_$DoctorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
