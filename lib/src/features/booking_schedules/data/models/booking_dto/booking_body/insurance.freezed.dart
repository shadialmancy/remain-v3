// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insurance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Insurance _$InsuranceFromJson(Map<String, dynamic> json) {
  return _Insurance.fromJson(json);
}

/// @nodoc
mixin _$Insurance {
  @JsonKey(name: 'payer_id')
  String? get payerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'plan_id')
  String? get planId => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_number')
  String? get cardNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_date')
  String? get expiryDate => throw _privateConstructorUsedError;

  /// Serializes this Insurance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Insurance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsuranceCopyWith<Insurance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceCopyWith<$Res> {
  factory $InsuranceCopyWith(Insurance value, $Res Function(Insurance) then) =
      _$InsuranceCopyWithImpl<$Res, Insurance>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payer_id') String? payerId,
      @JsonKey(name: 'plan_id') String? planId,
      @JsonKey(name: 'card_number') String? cardNumber,
      @JsonKey(name: 'expiry_date') String? expiryDate});
}

/// @nodoc
class _$InsuranceCopyWithImpl<$Res, $Val extends Insurance>
    implements $InsuranceCopyWith<$Res> {
  _$InsuranceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Insurance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payerId = freezed,
    Object? planId = freezed,
    Object? cardNumber = freezed,
    Object? expiryDate = freezed,
  }) {
    return _then(_value.copyWith(
      payerId: freezed == payerId
          ? _value.payerId
          : payerId // ignore: cast_nullable_to_non_nullable
              as String?,
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsuranceImplCopyWith<$Res>
    implements $InsuranceCopyWith<$Res> {
  factory _$$InsuranceImplCopyWith(
          _$InsuranceImpl value, $Res Function(_$InsuranceImpl) then) =
      __$$InsuranceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payer_id') String? payerId,
      @JsonKey(name: 'plan_id') String? planId,
      @JsonKey(name: 'card_number') String? cardNumber,
      @JsonKey(name: 'expiry_date') String? expiryDate});
}

/// @nodoc
class __$$InsuranceImplCopyWithImpl<$Res>
    extends _$InsuranceCopyWithImpl<$Res, _$InsuranceImpl>
    implements _$$InsuranceImplCopyWith<$Res> {
  __$$InsuranceImplCopyWithImpl(
      _$InsuranceImpl _value, $Res Function(_$InsuranceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Insurance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payerId = freezed,
    Object? planId = freezed,
    Object? cardNumber = freezed,
    Object? expiryDate = freezed,
  }) {
    return _then(_$InsuranceImpl(
      payerId: freezed == payerId
          ? _value.payerId
          : payerId // ignore: cast_nullable_to_non_nullable
              as String?,
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsuranceImpl implements _Insurance {
  _$InsuranceImpl(
      {@JsonKey(name: 'payer_id') this.payerId,
      @JsonKey(name: 'plan_id') this.planId,
      @JsonKey(name: 'card_number') this.cardNumber,
      @JsonKey(name: 'expiry_date') this.expiryDate});

  factory _$InsuranceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsuranceImplFromJson(json);

  @override
  @JsonKey(name: 'payer_id')
  final String? payerId;
  @override
  @JsonKey(name: 'plan_id')
  final String? planId;
  @override
  @JsonKey(name: 'card_number')
  final String? cardNumber;
  @override
  @JsonKey(name: 'expiry_date')
  final String? expiryDate;

  @override
  String toString() {
    return 'Insurance(payerId: $payerId, planId: $planId, cardNumber: $cardNumber, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsuranceImpl &&
            (identical(other.payerId, payerId) || other.payerId == payerId) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, payerId, planId, cardNumber, expiryDate);

  /// Create a copy of Insurance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsuranceImplCopyWith<_$InsuranceImpl> get copyWith =>
      __$$InsuranceImplCopyWithImpl<_$InsuranceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsuranceImplToJson(
      this,
    );
  }
}

abstract class _Insurance implements Insurance {
  factory _Insurance(
          {@JsonKey(name: 'payer_id') final String? payerId,
          @JsonKey(name: 'plan_id') final String? planId,
          @JsonKey(name: 'card_number') final String? cardNumber,
          @JsonKey(name: 'expiry_date') final String? expiryDate}) =
      _$InsuranceImpl;

  factory _Insurance.fromJson(Map<String, dynamic> json) =
      _$InsuranceImpl.fromJson;

  @override
  @JsonKey(name: 'payer_id')
  String? get payerId;
  @override
  @JsonKey(name: 'plan_id')
  String? get planId;
  @override
  @JsonKey(name: 'card_number')
  String? get cardNumber;
  @override
  @JsonKey(name: 'expiry_date')
  String? get expiryDate;

  /// Create a copy of Insurance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsuranceImplCopyWith<_$InsuranceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
