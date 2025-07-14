// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insurance_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InsuranceInfo _$InsuranceInfoFromJson(Map<String, dynamic> json) {
  return _InsuranceInfo.fromJson(json);
}

/// @nodoc
mixin _$InsuranceInfo {
  @JsonKey(name: 'InsuranceCompany')
  String? get insuranceCompany => throw _privateConstructorUsedError;
  @JsonKey(name: 'PolicyHolder')
  String? get policyHolder => throw _privateConstructorUsedError;
  @JsonKey(name: 'BeneficiaryNum')
  String? get beneficiaryNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExpierDate')
  String? get expierDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'PoliceNum')
  String? get policeNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'MAXLimit')
  num? get maxLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'Class')
  String? get datumClass => throw _privateConstructorUsedError;
  @JsonKey(name: 'DeductibleRate')
  num? get deductibleRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'Gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsValid')
  bool? get isValid => throw _privateConstructorUsedError;
  @JsonKey(name: 'Cardimage')
  dynamic get cardimage => throw _privateConstructorUsedError;

  /// Serializes this InsuranceInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsuranceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsuranceInfoCopyWith<InsuranceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceInfoCopyWith<$Res> {
  factory $InsuranceInfoCopyWith(
          InsuranceInfo value, $Res Function(InsuranceInfo) then) =
      _$InsuranceInfoCopyWithImpl<$Res, InsuranceInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'InsuranceCompany') String? insuranceCompany,
      @JsonKey(name: 'PolicyHolder') String? policyHolder,
      @JsonKey(name: 'BeneficiaryNum') String? beneficiaryNum,
      @JsonKey(name: 'ExpierDate') String? expierDate,
      @JsonKey(name: 'PoliceNum') String? policeNum,
      @JsonKey(name: 'MAXLimit') num? maxLimit,
      @JsonKey(name: 'Class') String? datumClass,
      @JsonKey(name: 'DeductibleRate') num? deductibleRate,
      @JsonKey(name: 'Gender') String? gender,
      @JsonKey(name: 'IsValid') bool? isValid,
      @JsonKey(name: 'Cardimage') dynamic cardimage});
}

/// @nodoc
class _$InsuranceInfoCopyWithImpl<$Res, $Val extends InsuranceInfo>
    implements $InsuranceInfoCopyWith<$Res> {
  _$InsuranceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsuranceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuranceCompany = freezed,
    Object? policyHolder = freezed,
    Object? beneficiaryNum = freezed,
    Object? expierDate = freezed,
    Object? policeNum = freezed,
    Object? maxLimit = freezed,
    Object? datumClass = freezed,
    Object? deductibleRate = freezed,
    Object? gender = freezed,
    Object? isValid = freezed,
    Object? cardimage = freezed,
  }) {
    return _then(_value.copyWith(
      insuranceCompany: freezed == insuranceCompany
          ? _value.insuranceCompany
          : insuranceCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      policyHolder: freezed == policyHolder
          ? _value.policyHolder
          : policyHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryNum: freezed == beneficiaryNum
          ? _value.beneficiaryNum
          : beneficiaryNum // ignore: cast_nullable_to_non_nullable
              as String?,
      expierDate: freezed == expierDate
          ? _value.expierDate
          : expierDate // ignore: cast_nullable_to_non_nullable
              as String?,
      policeNum: freezed == policeNum
          ? _value.policeNum
          : policeNum // ignore: cast_nullable_to_non_nullable
              as String?,
      maxLimit: freezed == maxLimit
          ? _value.maxLimit
          : maxLimit // ignore: cast_nullable_to_non_nullable
              as num?,
      datumClass: freezed == datumClass
          ? _value.datumClass
          : datumClass // ignore: cast_nullable_to_non_nullable
              as String?,
      deductibleRate: freezed == deductibleRate
          ? _value.deductibleRate
          : deductibleRate // ignore: cast_nullable_to_non_nullable
              as num?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      cardimage: freezed == cardimage
          ? _value.cardimage
          : cardimage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsuranceInfoImplCopyWith<$Res>
    implements $InsuranceInfoCopyWith<$Res> {
  factory _$$InsuranceInfoImplCopyWith(
          _$InsuranceInfoImpl value, $Res Function(_$InsuranceInfoImpl) then) =
      __$$InsuranceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'InsuranceCompany') String? insuranceCompany,
      @JsonKey(name: 'PolicyHolder') String? policyHolder,
      @JsonKey(name: 'BeneficiaryNum') String? beneficiaryNum,
      @JsonKey(name: 'ExpierDate') String? expierDate,
      @JsonKey(name: 'PoliceNum') String? policeNum,
      @JsonKey(name: 'MAXLimit') num? maxLimit,
      @JsonKey(name: 'Class') String? datumClass,
      @JsonKey(name: 'DeductibleRate') num? deductibleRate,
      @JsonKey(name: 'Gender') String? gender,
      @JsonKey(name: 'IsValid') bool? isValid,
      @JsonKey(name: 'Cardimage') dynamic cardimage});
}

/// @nodoc
class __$$InsuranceInfoImplCopyWithImpl<$Res>
    extends _$InsuranceInfoCopyWithImpl<$Res, _$InsuranceInfoImpl>
    implements _$$InsuranceInfoImplCopyWith<$Res> {
  __$$InsuranceInfoImplCopyWithImpl(
      _$InsuranceInfoImpl _value, $Res Function(_$InsuranceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsuranceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuranceCompany = freezed,
    Object? policyHolder = freezed,
    Object? beneficiaryNum = freezed,
    Object? expierDate = freezed,
    Object? policeNum = freezed,
    Object? maxLimit = freezed,
    Object? datumClass = freezed,
    Object? deductibleRate = freezed,
    Object? gender = freezed,
    Object? isValid = freezed,
    Object? cardimage = freezed,
  }) {
    return _then(_$InsuranceInfoImpl(
      insuranceCompany: freezed == insuranceCompany
          ? _value.insuranceCompany
          : insuranceCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      policyHolder: freezed == policyHolder
          ? _value.policyHolder
          : policyHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryNum: freezed == beneficiaryNum
          ? _value.beneficiaryNum
          : beneficiaryNum // ignore: cast_nullable_to_non_nullable
              as String?,
      expierDate: freezed == expierDate
          ? _value.expierDate
          : expierDate // ignore: cast_nullable_to_non_nullable
              as String?,
      policeNum: freezed == policeNum
          ? _value.policeNum
          : policeNum // ignore: cast_nullable_to_non_nullable
              as String?,
      maxLimit: freezed == maxLimit
          ? _value.maxLimit
          : maxLimit // ignore: cast_nullable_to_non_nullable
              as num?,
      datumClass: freezed == datumClass
          ? _value.datumClass
          : datumClass // ignore: cast_nullable_to_non_nullable
              as String?,
      deductibleRate: freezed == deductibleRate
          ? _value.deductibleRate
          : deductibleRate // ignore: cast_nullable_to_non_nullable
              as num?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      cardimage: freezed == cardimage
          ? _value.cardimage
          : cardimage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsuranceInfoImpl implements _InsuranceInfo {
  _$InsuranceInfoImpl(
      {@JsonKey(name: 'InsuranceCompany') this.insuranceCompany,
      @JsonKey(name: 'PolicyHolder') this.policyHolder,
      @JsonKey(name: 'BeneficiaryNum') this.beneficiaryNum,
      @JsonKey(name: 'ExpierDate') this.expierDate,
      @JsonKey(name: 'PoliceNum') this.policeNum,
      @JsonKey(name: 'MAXLimit') this.maxLimit,
      @JsonKey(name: 'Class') this.datumClass,
      @JsonKey(name: 'DeductibleRate') this.deductibleRate,
      @JsonKey(name: 'Gender') this.gender,
      @JsonKey(name: 'IsValid') this.isValid,
      @JsonKey(name: 'Cardimage') this.cardimage});

  factory _$InsuranceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsuranceInfoImplFromJson(json);

  @override
  @JsonKey(name: 'InsuranceCompany')
  final String? insuranceCompany;
  @override
  @JsonKey(name: 'PolicyHolder')
  final String? policyHolder;
  @override
  @JsonKey(name: 'BeneficiaryNum')
  final String? beneficiaryNum;
  @override
  @JsonKey(name: 'ExpierDate')
  final String? expierDate;
  @override
  @JsonKey(name: 'PoliceNum')
  final String? policeNum;
  @override
  @JsonKey(name: 'MAXLimit')
  final num? maxLimit;
  @override
  @JsonKey(name: 'Class')
  final String? datumClass;
  @override
  @JsonKey(name: 'DeductibleRate')
  final num? deductibleRate;
  @override
  @JsonKey(name: 'Gender')
  final String? gender;
  @override
  @JsonKey(name: 'IsValid')
  final bool? isValid;
  @override
  @JsonKey(name: 'Cardimage')
  final dynamic cardimage;

  @override
  String toString() {
    return 'InsuranceInfo(insuranceCompany: $insuranceCompany, policyHolder: $policyHolder, beneficiaryNum: $beneficiaryNum, expierDate: $expierDate, policeNum: $policeNum, maxLimit: $maxLimit, datumClass: $datumClass, deductibleRate: $deductibleRate, gender: $gender, isValid: $isValid, cardimage: $cardimage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsuranceInfoImpl &&
            (identical(other.insuranceCompany, insuranceCompany) ||
                other.insuranceCompany == insuranceCompany) &&
            (identical(other.policyHolder, policyHolder) ||
                other.policyHolder == policyHolder) &&
            (identical(other.beneficiaryNum, beneficiaryNum) ||
                other.beneficiaryNum == beneficiaryNum) &&
            (identical(other.expierDate, expierDate) ||
                other.expierDate == expierDate) &&
            (identical(other.policeNum, policeNum) ||
                other.policeNum == policeNum) &&
            (identical(other.maxLimit, maxLimit) ||
                other.maxLimit == maxLimit) &&
            (identical(other.datumClass, datumClass) ||
                other.datumClass == datumClass) &&
            (identical(other.deductibleRate, deductibleRate) ||
                other.deductibleRate == deductibleRate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            const DeepCollectionEquality().equals(other.cardimage, cardimage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      insuranceCompany,
      policyHolder,
      beneficiaryNum,
      expierDate,
      policeNum,
      maxLimit,
      datumClass,
      deductibleRate,
      gender,
      isValid,
      const DeepCollectionEquality().hash(cardimage));

  /// Create a copy of InsuranceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsuranceInfoImplCopyWith<_$InsuranceInfoImpl> get copyWith =>
      __$$InsuranceInfoImplCopyWithImpl<_$InsuranceInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsuranceInfoImplToJson(
      this,
    );
  }
}

abstract class _InsuranceInfo implements InsuranceInfo {
  factory _InsuranceInfo(
          {@JsonKey(name: 'InsuranceCompany') final String? insuranceCompany,
          @JsonKey(name: 'PolicyHolder') final String? policyHolder,
          @JsonKey(name: 'BeneficiaryNum') final String? beneficiaryNum,
          @JsonKey(name: 'ExpierDate') final String? expierDate,
          @JsonKey(name: 'PoliceNum') final String? policeNum,
          @JsonKey(name: 'MAXLimit') final num? maxLimit,
          @JsonKey(name: 'Class') final String? datumClass,
          @JsonKey(name: 'DeductibleRate') final num? deductibleRate,
          @JsonKey(name: 'Gender') final String? gender,
          @JsonKey(name: 'IsValid') final bool? isValid,
          @JsonKey(name: 'Cardimage') final dynamic cardimage}) =
      _$InsuranceInfoImpl;

  factory _InsuranceInfo.fromJson(Map<String, dynamic> json) =
      _$InsuranceInfoImpl.fromJson;

  @override
  @JsonKey(name: 'InsuranceCompany')
  String? get insuranceCompany;
  @override
  @JsonKey(name: 'PolicyHolder')
  String? get policyHolder;
  @override
  @JsonKey(name: 'BeneficiaryNum')
  String? get beneficiaryNum;
  @override
  @JsonKey(name: 'ExpierDate')
  String? get expierDate;
  @override
  @JsonKey(name: 'PoliceNum')
  String? get policeNum;
  @override
  @JsonKey(name: 'MAXLimit')
  num? get maxLimit;
  @override
  @JsonKey(name: 'Class')
  String? get datumClass;
  @override
  @JsonKey(name: 'DeductibleRate')
  num? get deductibleRate;
  @override
  @JsonKey(name: 'Gender')
  String? get gender;
  @override
  @JsonKey(name: 'IsValid')
  bool? get isValid;
  @override
  @JsonKey(name: 'Cardimage')
  dynamic get cardimage;

  /// Create a copy of InsuranceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsuranceInfoImplCopyWith<_$InsuranceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
