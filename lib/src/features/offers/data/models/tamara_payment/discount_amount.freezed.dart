// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscountAmount _$DiscountAmountFromJson(Map<String, dynamic> json) {
  return _DiscountAmount.fromJson(json);
}

/// @nodoc
mixin _$DiscountAmount {
  num? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;

  /// Serializes this DiscountAmount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountAmountCopyWith<DiscountAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountAmountCopyWith<$Res> {
  factory $DiscountAmountCopyWith(
          DiscountAmount value, $Res Function(DiscountAmount) then) =
      _$DiscountAmountCopyWithImpl<$Res, DiscountAmount>;
  @useResult
  $Res call({num? amount, String? currency});
}

/// @nodoc
class _$DiscountAmountCopyWithImpl<$Res, $Val extends DiscountAmount>
    implements $DiscountAmountCopyWith<$Res> {
  _$DiscountAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountAmount
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
abstract class _$$DiscountAmountImplCopyWith<$Res>
    implements $DiscountAmountCopyWith<$Res> {
  factory _$$DiscountAmountImplCopyWith(_$DiscountAmountImpl value,
          $Res Function(_$DiscountAmountImpl) then) =
      __$$DiscountAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? amount, String? currency});
}

/// @nodoc
class __$$DiscountAmountImplCopyWithImpl<$Res>
    extends _$DiscountAmountCopyWithImpl<$Res, _$DiscountAmountImpl>
    implements _$$DiscountAmountImplCopyWith<$Res> {
  __$$DiscountAmountImplCopyWithImpl(
      _$DiscountAmountImpl _value, $Res Function(_$DiscountAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$DiscountAmountImpl(
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
class _$DiscountAmountImpl implements _DiscountAmount {
  _$DiscountAmountImpl({this.amount, this.currency});

  factory _$DiscountAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountAmountImplFromJson(json);

  @override
  final num? amount;
  @override
  final String? currency;

  @override
  String toString() {
    return 'DiscountAmount(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  /// Create a copy of DiscountAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountAmountImplCopyWith<_$DiscountAmountImpl> get copyWith =>
      __$$DiscountAmountImplCopyWithImpl<_$DiscountAmountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountAmountImplToJson(
      this,
    );
  }
}

abstract class _DiscountAmount implements DiscountAmount {
  factory _DiscountAmount({final num? amount, final String? currency}) =
      _$DiscountAmountImpl;

  factory _DiscountAmount.fromJson(Map<String, dynamic> json) =
      _$DiscountAmountImpl.fromJson;

  @override
  num? get amount;
  @override
  String? get currency;

  /// Create a copy of DiscountAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountAmountImplCopyWith<_$DiscountAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
