// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vital_signs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VitalSigns _$VitalSignsFromJson(Map<String, dynamic> json) {
  return _VitalSigns.fromJson(json);
}

/// @nodoc
mixin _$VitalSigns {
  @HiveField(0)
  @JsonKey(name: 'BloodPressureHi')
  num? get bloodPressureHi => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'BloodPressureLo')
  num? get bloodPressureLo => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'Temperature')
  num? get temperature => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'Height')
  double? get height => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'Weight')
  double? get weight => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'OxygenSaturation')
  num? get oxygenSaturation => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'Pulse')
  num? get pulse => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'ForDate')
  String? get forDate => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'RespiratoryRate')
  num? get respiratoryRate => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'Remarks')
  String? get remarks => throw _privateConstructorUsedError;

  /// Serializes this VitalSigns to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VitalSigns
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VitalSignsCopyWith<VitalSigns> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitalSignsCopyWith<$Res> {
  factory $VitalSignsCopyWith(
          VitalSigns value, $Res Function(VitalSigns) then) =
      _$VitalSignsCopyWithImpl<$Res, VitalSigns>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'BloodPressureHi') num? bloodPressureHi,
      @HiveField(1) @JsonKey(name: 'BloodPressureLo') num? bloodPressureLo,
      @HiveField(2) @JsonKey(name: 'Temperature') num? temperature,
      @HiveField(3) @JsonKey(name: 'Height') double? height,
      @HiveField(4) @JsonKey(name: 'Weight') double? weight,
      @HiveField(5) @JsonKey(name: 'OxygenSaturation') num? oxygenSaturation,
      @HiveField(6) @JsonKey(name: 'Pulse') num? pulse,
      @HiveField(7) @JsonKey(name: 'ForDate') String? forDate,
      @HiveField(8) @JsonKey(name: 'RespiratoryRate') num? respiratoryRate,
      @HiveField(9) @JsonKey(name: 'Remarks') String? remarks});
}

/// @nodoc
class _$VitalSignsCopyWithImpl<$Res, $Val extends VitalSigns>
    implements $VitalSignsCopyWith<$Res> {
  _$VitalSignsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VitalSigns
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodPressureHi = freezed,
    Object? bloodPressureLo = freezed,
    Object? temperature = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? oxygenSaturation = freezed,
    Object? pulse = freezed,
    Object? forDate = freezed,
    Object? respiratoryRate = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_value.copyWith(
      bloodPressureHi: freezed == bloodPressureHi
          ? _value.bloodPressureHi
          : bloodPressureHi // ignore: cast_nullable_to_non_nullable
              as num?,
      bloodPressureLo: freezed == bloodPressureLo
          ? _value.bloodPressureLo
          : bloodPressureLo // ignore: cast_nullable_to_non_nullable
              as num?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as num?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      oxygenSaturation: freezed == oxygenSaturation
          ? _value.oxygenSaturation
          : oxygenSaturation // ignore: cast_nullable_to_non_nullable
              as num?,
      pulse: freezed == pulse
          ? _value.pulse
          : pulse // ignore: cast_nullable_to_non_nullable
              as num?,
      forDate: freezed == forDate
          ? _value.forDate
          : forDate // ignore: cast_nullable_to_non_nullable
              as String?,
      respiratoryRate: freezed == respiratoryRate
          ? _value.respiratoryRate
          : respiratoryRate // ignore: cast_nullable_to_non_nullable
              as num?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VitalSignsImplCopyWith<$Res>
    implements $VitalSignsCopyWith<$Res> {
  factory _$$VitalSignsImplCopyWith(
          _$VitalSignsImpl value, $Res Function(_$VitalSignsImpl) then) =
      __$$VitalSignsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'BloodPressureHi') num? bloodPressureHi,
      @HiveField(1) @JsonKey(name: 'BloodPressureLo') num? bloodPressureLo,
      @HiveField(2) @JsonKey(name: 'Temperature') num? temperature,
      @HiveField(3) @JsonKey(name: 'Height') double? height,
      @HiveField(4) @JsonKey(name: 'Weight') double? weight,
      @HiveField(5) @JsonKey(name: 'OxygenSaturation') num? oxygenSaturation,
      @HiveField(6) @JsonKey(name: 'Pulse') num? pulse,
      @HiveField(7) @JsonKey(name: 'ForDate') String? forDate,
      @HiveField(8) @JsonKey(name: 'RespiratoryRate') num? respiratoryRate,
      @HiveField(9) @JsonKey(name: 'Remarks') String? remarks});
}

/// @nodoc
class __$$VitalSignsImplCopyWithImpl<$Res>
    extends _$VitalSignsCopyWithImpl<$Res, _$VitalSignsImpl>
    implements _$$VitalSignsImplCopyWith<$Res> {
  __$$VitalSignsImplCopyWithImpl(
      _$VitalSignsImpl _value, $Res Function(_$VitalSignsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VitalSigns
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodPressureHi = freezed,
    Object? bloodPressureLo = freezed,
    Object? temperature = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? oxygenSaturation = freezed,
    Object? pulse = freezed,
    Object? forDate = freezed,
    Object? respiratoryRate = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_$VitalSignsImpl(
      bloodPressureHi: freezed == bloodPressureHi
          ? _value.bloodPressureHi
          : bloodPressureHi // ignore: cast_nullable_to_non_nullable
              as num?,
      bloodPressureLo: freezed == bloodPressureLo
          ? _value.bloodPressureLo
          : bloodPressureLo // ignore: cast_nullable_to_non_nullable
              as num?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as num?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      oxygenSaturation: freezed == oxygenSaturation
          ? _value.oxygenSaturation
          : oxygenSaturation // ignore: cast_nullable_to_non_nullable
              as num?,
      pulse: freezed == pulse
          ? _value.pulse
          : pulse // ignore: cast_nullable_to_non_nullable
              as num?,
      forDate: freezed == forDate
          ? _value.forDate
          : forDate // ignore: cast_nullable_to_non_nullable
              as String?,
      respiratoryRate: freezed == respiratoryRate
          ? _value.respiratoryRate
          : respiratoryRate // ignore: cast_nullable_to_non_nullable
              as num?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VitalSignsImpl implements _VitalSigns {
  _$VitalSignsImpl(
      {@HiveField(0) @JsonKey(name: 'BloodPressureHi') this.bloodPressureHi,
      @HiveField(1) @JsonKey(name: 'BloodPressureLo') this.bloodPressureLo,
      @HiveField(2) @JsonKey(name: 'Temperature') this.temperature,
      @HiveField(3) @JsonKey(name: 'Height') this.height,
      @HiveField(4) @JsonKey(name: 'Weight') this.weight,
      @HiveField(5) @JsonKey(name: 'OxygenSaturation') this.oxygenSaturation,
      @HiveField(6) @JsonKey(name: 'Pulse') this.pulse,
      @HiveField(7) @JsonKey(name: 'ForDate') this.forDate,
      @HiveField(8) @JsonKey(name: 'RespiratoryRate') this.respiratoryRate,
      @HiveField(9) @JsonKey(name: 'Remarks') this.remarks});

  factory _$VitalSignsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VitalSignsImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'BloodPressureHi')
  final num? bloodPressureHi;
  @override
  @HiveField(1)
  @JsonKey(name: 'BloodPressureLo')
  final num? bloodPressureLo;
  @override
  @HiveField(2)
  @JsonKey(name: 'Temperature')
  final num? temperature;
  @override
  @HiveField(3)
  @JsonKey(name: 'Height')
  final double? height;
  @override
  @HiveField(4)
  @JsonKey(name: 'Weight')
  final double? weight;
  @override
  @HiveField(5)
  @JsonKey(name: 'OxygenSaturation')
  final num? oxygenSaturation;
  @override
  @HiveField(6)
  @JsonKey(name: 'Pulse')
  final num? pulse;
  @override
  @HiveField(7)
  @JsonKey(name: 'ForDate')
  final String? forDate;
  @override
  @HiveField(8)
  @JsonKey(name: 'RespiratoryRate')
  final num? respiratoryRate;
  @override
  @HiveField(9)
  @JsonKey(name: 'Remarks')
  final String? remarks;

  @override
  String toString() {
    return 'VitalSigns(bloodPressureHi: $bloodPressureHi, bloodPressureLo: $bloodPressureLo, temperature: $temperature, height: $height, weight: $weight, oxygenSaturation: $oxygenSaturation, pulse: $pulse, forDate: $forDate, respiratoryRate: $respiratoryRate, remarks: $remarks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitalSignsImpl &&
            (identical(other.bloodPressureHi, bloodPressureHi) ||
                other.bloodPressureHi == bloodPressureHi) &&
            (identical(other.bloodPressureLo, bloodPressureLo) ||
                other.bloodPressureLo == bloodPressureLo) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.oxygenSaturation, oxygenSaturation) ||
                other.oxygenSaturation == oxygenSaturation) &&
            (identical(other.pulse, pulse) || other.pulse == pulse) &&
            (identical(other.forDate, forDate) || other.forDate == forDate) &&
            (identical(other.respiratoryRate, respiratoryRate) ||
                other.respiratoryRate == respiratoryRate) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bloodPressureHi,
      bloodPressureLo,
      temperature,
      height,
      weight,
      oxygenSaturation,
      pulse,
      forDate,
      respiratoryRate,
      remarks);

  /// Create a copy of VitalSigns
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VitalSignsImplCopyWith<_$VitalSignsImpl> get copyWith =>
      __$$VitalSignsImplCopyWithImpl<_$VitalSignsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VitalSignsImplToJson(
      this,
    );
  }
}

abstract class _VitalSigns implements VitalSigns {
  factory _VitalSigns(
          {@HiveField(0)
          @JsonKey(name: 'BloodPressureHi')
          final num? bloodPressureHi,
          @HiveField(1)
          @JsonKey(name: 'BloodPressureLo')
          final num? bloodPressureLo,
          @HiveField(2) @JsonKey(name: 'Temperature') final num? temperature,
          @HiveField(3) @JsonKey(name: 'Height') final double? height,
          @HiveField(4) @JsonKey(name: 'Weight') final double? weight,
          @HiveField(5)
          @JsonKey(name: 'OxygenSaturation')
          final num? oxygenSaturation,
          @HiveField(6) @JsonKey(name: 'Pulse') final num? pulse,
          @HiveField(7) @JsonKey(name: 'ForDate') final String? forDate,
          @HiveField(8)
          @JsonKey(name: 'RespiratoryRate')
          final num? respiratoryRate,
          @HiveField(9) @JsonKey(name: 'Remarks') final String? remarks}) =
      _$VitalSignsImpl;

  factory _VitalSigns.fromJson(Map<String, dynamic> json) =
      _$VitalSignsImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'BloodPressureHi')
  num? get bloodPressureHi;
  @override
  @HiveField(1)
  @JsonKey(name: 'BloodPressureLo')
  num? get bloodPressureLo;
  @override
  @HiveField(2)
  @JsonKey(name: 'Temperature')
  num? get temperature;
  @override
  @HiveField(3)
  @JsonKey(name: 'Height')
  double? get height;
  @override
  @HiveField(4)
  @JsonKey(name: 'Weight')
  double? get weight;
  @override
  @HiveField(5)
  @JsonKey(name: 'OxygenSaturation')
  num? get oxygenSaturation;
  @override
  @HiveField(6)
  @JsonKey(name: 'Pulse')
  num? get pulse;
  @override
  @HiveField(7)
  @JsonKey(name: 'ForDate')
  String? get forDate;
  @override
  @HiveField(8)
  @JsonKey(name: 'RespiratoryRate')
  num? get respiratoryRate;
  @override
  @HiveField(9)
  @JsonKey(name: 'Remarks')
  String? get remarks;

  /// Create a copy of VitalSigns
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VitalSignsImplCopyWith<_$VitalSignsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
