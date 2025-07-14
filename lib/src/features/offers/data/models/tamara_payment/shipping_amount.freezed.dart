// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShippingAmount _$ShippingAmountFromJson(Map<String, dynamic> json) {
  return _ShippingAmount.fromJson(json);
}

/// @nodoc
mixin _$ShippingAmount {
  num? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;

  /// Serializes this ShippingAmount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingAmountCopyWith<ShippingAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAmountCopyWith<$Res> {
  factory $ShippingAmountCopyWith(
          ShippingAmount value, $Res Function(ShippingAmount) then) =
      _$ShippingAmountCopyWithImpl<$Res, ShippingAmount>;
  @useResult
  $Res call({num? amount, String? currency});
}

/// @nodoc
class _$ShippingAmountCopyWithImpl<$Res, $Val extends ShippingAmount>
    implements $ShippingAmountCopyWith<$Res> {
  _$ShippingAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingAmountImplCopyWith<$Res>
    implements $ShippingAmountCopyWith<$Res> {
  factory _$$ShippingAmountImplCopyWith(_$ShippingAmountImpl value,
          $Res Function(_$ShippingAmountImpl) then) =
      __$$ShippingAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? amount, String? currency});
}

/// @nodoc
class __$$ShippingAmountImplCopyWithImpl<$Res>
    extends _$ShippingAmountCopyWithImpl<$Res, _$ShippingAmountImpl>
    implements _$$ShippingAmountImplCopyWith<$Res> {
  __$$ShippingAmountImplCopyWithImpl(
      _$ShippingAmountImpl _value, $Res Function(_$ShippingAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShippingAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$ShippingAmountImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingAmountImpl implements _ShippingAmount {
  _$ShippingAmountImpl({this.amount, this.currency});

  factory _$ShippingAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingAmountImplFromJson(json);

  @override
  final num? amount;
  @override
  final String? currency;

  @override
  String toString() {
    return 'ShippingAmount(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  /// Create a copy of ShippingAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingAmountImplCopyWith<_$ShippingAmountImpl> get copyWith =>
      __$$ShippingAmountImplCopyWithImpl<_$ShippingAmountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingAmountImplToJson(
      this,
    );
  }
}

abstract class _ShippingAmount implements ShippingAmount {
  factory _ShippingAmount({final num? amount, final String? currency}) =
      _$ShippingAmountImpl;

  factory _ShippingAmount.fromJson(Map<String, dynamic> json) =
      _$ShippingAmountImpl.fromJson;

  @override
  num? get amount;
  @override
  String? get currency;

  /// Create a copy of ShippingAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingAmountImplCopyWith<_$ShippingAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
