// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationData _$LocationDataFromJson(Map<String, dynamic> json) {
  return _LocationData.fromJson(json);
}

/// @nodoc
mixin _$LocationData {
  @JsonKey(name: 'locationEN')
  String? get locationEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'locationAR')
  String? get locationAr => throw _privateConstructorUsedError;
  String? get locationAddress => throw _privateConstructorUsedError;
  String? get phoneNum => throw _privateConstructorUsedError;
  String? get maplat => throw _privateConstructorUsedError;
  String? get maplong => throw _privateConstructorUsedError;

  /// Serializes this LocationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationDataCopyWith<LocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDataCopyWith<$Res> {
  factory $LocationDataCopyWith(
          LocationData value, $Res Function(LocationData) then) =
      _$LocationDataCopyWithImpl<$Res, LocationData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'locationEN') String? locationEn,
      @JsonKey(name: 'locationAR') String? locationAr,
      String? locationAddress,
      String? phoneNum,
      String? maplat,
      String? maplong});
}

/// @nodoc
class _$LocationDataCopyWithImpl<$Res, $Val extends LocationData>
    implements $LocationDataCopyWith<$Res> {
  _$LocationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationEn = freezed,
    Object? locationAr = freezed,
    Object? locationAddress = freezed,
    Object? phoneNum = freezed,
    Object? maplat = freezed,
    Object? maplong = freezed,
  }) {
    return _then(_value.copyWith(
      locationEn: freezed == locationEn
          ? _value.locationEn
          : locationEn // ignore: cast_nullable_to_non_nullable
              as String?,
      locationAr: freezed == locationAr
          ? _value.locationAr
          : locationAr // ignore: cast_nullable_to_non_nullable
              as String?,
      locationAddress: freezed == locationAddress
          ? _value.locationAddress
          : locationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNum: freezed == phoneNum
          ? _value.phoneNum
          : phoneNum // ignore: cast_nullable_to_non_nullable
              as String?,
      maplat: freezed == maplat
          ? _value.maplat
          : maplat // ignore: cast_nullable_to_non_nullable
              as String?,
      maplong: freezed == maplong
          ? _value.maplong
          : maplong // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationDataImplCopyWith<$Res>
    implements $LocationDataCopyWith<$Res> {
  factory _$$LocationDataImplCopyWith(
          _$LocationDataImpl value, $Res Function(_$LocationDataImpl) then) =
      __$$LocationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'locationEN') String? locationEn,
      @JsonKey(name: 'locationAR') String? locationAr,
      String? locationAddress,
      String? phoneNum,
      String? maplat,
      String? maplong});
}

/// @nodoc
class __$$LocationDataImplCopyWithImpl<$Res>
    extends _$LocationDataCopyWithImpl<$Res, _$LocationDataImpl>
    implements _$$LocationDataImplCopyWith<$Res> {
  __$$LocationDataImplCopyWithImpl(
      _$LocationDataImpl _value, $Res Function(_$LocationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationEn = freezed,
    Object? locationAr = freezed,
    Object? locationAddress = freezed,
    Object? phoneNum = freezed,
    Object? maplat = freezed,
    Object? maplong = freezed,
  }) {
    return _then(_$LocationDataImpl(
      locationEn: freezed == locationEn
          ? _value.locationEn
          : locationEn // ignore: cast_nullable_to_non_nullable
              as String?,
      locationAr: freezed == locationAr
          ? _value.locationAr
          : locationAr // ignore: cast_nullable_to_non_nullable
              as String?,
      locationAddress: freezed == locationAddress
          ? _value.locationAddress
          : locationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNum: freezed == phoneNum
          ? _value.phoneNum
          : phoneNum // ignore: cast_nullable_to_non_nullable
              as String?,
      maplat: freezed == maplat
          ? _value.maplat
          : maplat // ignore: cast_nullable_to_non_nullable
              as String?,
      maplong: freezed == maplong
          ? _value.maplong
          : maplong // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDataImpl implements _LocationData {
  _$LocationDataImpl(
      {@JsonKey(name: 'locationEN') this.locationEn,
      @JsonKey(name: 'locationAR') this.locationAr,
      this.locationAddress,
      this.phoneNum,
      this.maplat,
      this.maplong});

  factory _$LocationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDataImplFromJson(json);

  @override
  @JsonKey(name: 'locationEN')
  final String? locationEn;
  @override
  @JsonKey(name: 'locationAR')
  final String? locationAr;
  @override
  final String? locationAddress;
  @override
  final String? phoneNum;
  @override
  final String? maplat;
  @override
  final String? maplong;

  @override
  String toString() {
    return 'LocationData(locationEn: $locationEn, locationAr: $locationAr, locationAddress: $locationAddress, phoneNum: $phoneNum, maplat: $maplat, maplong: $maplong)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDataImpl &&
            (identical(other.locationEn, locationEn) ||
                other.locationEn == locationEn) &&
            (identical(other.locationAr, locationAr) ||
                other.locationAr == locationAr) &&
            (identical(other.locationAddress, locationAddress) ||
                other.locationAddress == locationAddress) &&
            (identical(other.phoneNum, phoneNum) ||
                other.phoneNum == phoneNum) &&
            (identical(other.maplat, maplat) || other.maplat == maplat) &&
            (identical(other.maplong, maplong) || other.maplong == maplong));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, locationEn, locationAr,
      locationAddress, phoneNum, maplat, maplong);

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDataImplCopyWith<_$LocationDataImpl> get copyWith =>
      __$$LocationDataImplCopyWithImpl<_$LocationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDataImplToJson(
      this,
    );
  }
}

abstract class _LocationData implements LocationData {
  factory _LocationData(
      {@JsonKey(name: 'locationEN') final String? locationEn,
      @JsonKey(name: 'locationAR') final String? locationAr,
      final String? locationAddress,
      final String? phoneNum,
      final String? maplat,
      final String? maplong}) = _$LocationDataImpl;

  factory _LocationData.fromJson(Map<String, dynamic> json) =
      _$LocationDataImpl.fromJson;

  @override
  @JsonKey(name: 'locationEN')
  String? get locationEn;
  @override
  @JsonKey(name: 'locationAR')
  String? get locationAr;
  @override
  String? get locationAddress;
  @override
  String? get phoneNum;
  @override
  String? get maplat;
  @override
  String? get maplong;

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDataImplCopyWith<_$LocationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
