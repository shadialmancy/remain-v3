// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return _Doctor.fromJson(json);
}

/// @nodoc
mixin _$Doctor {
  String? get engName => throw _privateConstructorUsedError;
  String? get arbName => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctorID')
  num? get doctorId => throw _privateConstructorUsedError;

  /// Serializes this Doctor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorCopyWith<Doctor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorCopyWith<$Res> {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) then) =
      _$DoctorCopyWithImpl<$Res, Doctor>;
  @useResult
  $Res call(
      {String? engName,
      String? arbName,
      @JsonKey(name: 'doctorID') num? doctorId});
}

/// @nodoc
class _$DoctorCopyWithImpl<$Res, $Val extends Doctor>
    implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engName = freezed,
    Object? arbName = freezed,
    Object? doctorId = freezed,
  }) {
    return _then(_value.copyWith(
      engName: freezed == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String?,
      arbName: freezed == arbName
          ? _value.arbName
          : arbName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorImplCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$$DoctorImplCopyWith(
          _$DoctorImpl value, $Res Function(_$DoctorImpl) then) =
      __$$DoctorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? engName,
      String? arbName,
      @JsonKey(name: 'doctorID') num? doctorId});
}

/// @nodoc
class __$$DoctorImplCopyWithImpl<$Res>
    extends _$DoctorCopyWithImpl<$Res, _$DoctorImpl>
    implements _$$DoctorImplCopyWith<$Res> {
  __$$DoctorImplCopyWithImpl(
      _$DoctorImpl _value, $Res Function(_$DoctorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engName = freezed,
    Object? arbName = freezed,
    Object? doctorId = freezed,
  }) {
    return _then(_$DoctorImpl(
      engName: freezed == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String?,
      arbName: freezed == arbName
          ? _value.arbName
          : arbName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorImpl implements _Doctor {
  _$DoctorImpl(
      {this.engName, this.arbName, @JsonKey(name: 'doctorID') this.doctorId});

  factory _$DoctorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorImplFromJson(json);

  @override
  final String? engName;
  @override
  final String? arbName;
  @override
  @JsonKey(name: 'doctorID')
  final num? doctorId;

  @override
  String toString() {
    return 'Doctor(engName: $engName, arbName: $arbName, doctorId: $doctorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorImpl &&
            (identical(other.engName, engName) || other.engName == engName) &&
            (identical(other.arbName, arbName) || other.arbName == arbName) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, engName, arbName, doctorId);

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      __$$DoctorImplCopyWithImpl<_$DoctorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorImplToJson(
      this,
    );
  }
}

abstract class _Doctor implements Doctor {
  factory _Doctor(
      {final String? engName,
      final String? arbName,
      @JsonKey(name: 'doctorID') final num? doctorId}) = _$DoctorImpl;

  factory _Doctor.fromJson(Map<String, dynamic> json) = _$DoctorImpl.fromJson;

  @override
  String? get engName;
  @override
  String? get arbName;
  @override
  @JsonKey(name: 'doctorID')
  num? get doctorId;

  /// Create a copy of Doctor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
