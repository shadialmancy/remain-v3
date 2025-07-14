// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DoctorProfile _$DoctorProfileFromJson(Map<String, dynamic> json) {
  return _DoctorProfile.fromJson(json);
}

/// @nodoc
mixin _$DoctorProfile {
  String? get certificatesEng => throw _privateConstructorUsedError;
  String? get certificatesArb => throw _privateConstructorUsedError;
  String? get experienceArb => throw _privateConstructorUsedError;
  String? get experienceEng => throw _privateConstructorUsedError;
  dynamic get profilePhoto => throw _privateConstructorUsedError;

  /// Serializes this DoctorProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorProfileCopyWith<DoctorProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorProfileCopyWith<$Res> {
  factory $DoctorProfileCopyWith(
          DoctorProfile value, $Res Function(DoctorProfile) then) =
      _$DoctorProfileCopyWithImpl<$Res, DoctorProfile>;
  @useResult
  $Res call(
      {String? certificatesEng,
      String? certificatesArb,
      String? experienceArb,
      String? experienceEng,
      dynamic profilePhoto});
}

/// @nodoc
class _$DoctorProfileCopyWithImpl<$Res, $Val extends DoctorProfile>
    implements $DoctorProfileCopyWith<$Res> {
  _$DoctorProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificatesEng = freezed,
    Object? certificatesArb = freezed,
    Object? experienceArb = freezed,
    Object? experienceEng = freezed,
    Object? profilePhoto = freezed,
  }) {
    return _then(_value.copyWith(
      certificatesEng: freezed == certificatesEng
          ? _value.certificatesEng
          : certificatesEng // ignore: cast_nullable_to_non_nullable
              as String?,
      certificatesArb: freezed == certificatesArb
          ? _value.certificatesArb
          : certificatesArb // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceArb: freezed == experienceArb
          ? _value.experienceArb
          : experienceArb // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceEng: freezed == experienceEng
          ? _value.experienceEng
          : experienceEng // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorProfileImplCopyWith<$Res>
    implements $DoctorProfileCopyWith<$Res> {
  factory _$$DoctorProfileImplCopyWith(
          _$DoctorProfileImpl value, $Res Function(_$DoctorProfileImpl) then) =
      __$$DoctorProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? certificatesEng,
      String? certificatesArb,
      String? experienceArb,
      String? experienceEng,
      dynamic profilePhoto});
}

/// @nodoc
class __$$DoctorProfileImplCopyWithImpl<$Res>
    extends _$DoctorProfileCopyWithImpl<$Res, _$DoctorProfileImpl>
    implements _$$DoctorProfileImplCopyWith<$Res> {
  __$$DoctorProfileImplCopyWithImpl(
      _$DoctorProfileImpl _value, $Res Function(_$DoctorProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificatesEng = freezed,
    Object? certificatesArb = freezed,
    Object? experienceArb = freezed,
    Object? experienceEng = freezed,
    Object? profilePhoto = freezed,
  }) {
    return _then(_$DoctorProfileImpl(
      certificatesEng: freezed == certificatesEng
          ? _value.certificatesEng
          : certificatesEng // ignore: cast_nullable_to_non_nullable
              as String?,
      certificatesArb: freezed == certificatesArb
          ? _value.certificatesArb
          : certificatesArb // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceArb: freezed == experienceArb
          ? _value.experienceArb
          : experienceArb // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceEng: freezed == experienceEng
          ? _value.experienceEng
          : experienceEng // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorProfileImpl implements _DoctorProfile {
  _$DoctorProfileImpl(
      {this.certificatesEng,
      this.certificatesArb,
      this.experienceArb,
      this.experienceEng,
      this.profilePhoto});

  factory _$DoctorProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorProfileImplFromJson(json);

  @override
  final String? certificatesEng;
  @override
  final String? certificatesArb;
  @override
  final String? experienceArb;
  @override
  final String? experienceEng;
  @override
  final dynamic profilePhoto;

  @override
  String toString() {
    return 'DoctorProfile(certificatesEng: $certificatesEng, certificatesArb: $certificatesArb, experienceArb: $experienceArb, experienceEng: $experienceEng, profilePhoto: $profilePhoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorProfileImpl &&
            (identical(other.certificatesEng, certificatesEng) ||
                other.certificatesEng == certificatesEng) &&
            (identical(other.certificatesArb, certificatesArb) ||
                other.certificatesArb == certificatesArb) &&
            (identical(other.experienceArb, experienceArb) ||
                other.experienceArb == experienceArb) &&
            (identical(other.experienceEng, experienceEng) ||
                other.experienceEng == experienceEng) &&
            const DeepCollectionEquality()
                .equals(other.profilePhoto, profilePhoto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      certificatesEng,
      certificatesArb,
      experienceArb,
      experienceEng,
      const DeepCollectionEquality().hash(profilePhoto));

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorProfileImplCopyWith<_$DoctorProfileImpl> get copyWith =>
      __$$DoctorProfileImplCopyWithImpl<_$DoctorProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorProfileImplToJson(
      this,
    );
  }
}

abstract class _DoctorProfile implements DoctorProfile {
  factory _DoctorProfile(
      {final String? certificatesEng,
      final String? certificatesArb,
      final String? experienceArb,
      final String? experienceEng,
      final dynamic profilePhoto}) = _$DoctorProfileImpl;

  factory _DoctorProfile.fromJson(Map<String, dynamic> json) =
      _$DoctorProfileImpl.fromJson;

  @override
  String? get certificatesEng;
  @override
  String? get certificatesArb;
  @override
  String? get experienceArb;
  @override
  String? get experienceEng;
  @override
  dynamic get profilePhoto;

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorProfileImplCopyWith<_$DoctorProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
