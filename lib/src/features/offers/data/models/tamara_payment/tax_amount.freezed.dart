// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tax_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaxAmount _$TaxAmountFromJson(Map<String, dynamic> json) {
  return _TaxAmount.fromJson(json);
}

/// @nodoc
mixin _$TaxAmount {
  num? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;

  /// Serializes this TaxAmount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaxAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaxAmountCopyWith<TaxAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxAmountCopyWith<$Res> {
  factory $TaxAmountCopyWith(TaxAmount value, $Res Function(TaxAmount) then) =
      _$TaxAmountCopyWithImpl<$Res, TaxAmount>;
  @useResult
  $Res call({num? amount, String? currency});
}

/// @nodoc
class _$TaxAmountCopyWithImpl<$Res, $Val extends TaxAmount>
    implements $TaxAmountCopyWith<$Res> {
  _$TaxAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaxAmount
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
abstract class _$$TaxAmountImplCopyWith<$Res>
    implements $TaxAmountCopyWith<$Res> {
  factory _$$TaxAmountImplCopyWith(
          _$TaxAmountImpl value, $Res Function(_$TaxAmountImpl) then) =
      __$$TaxAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? amount, String? currency});
}

/// @nodoc
class __$$TaxAmountImplCopyWithImpl<$Res>
    extends _$TaxAmountCopyWithImpl<$Res, _$TaxAmountImpl>
    implements _$$TaxAmountImplCopyWith<$Res> {
  __$$TaxAmountImplCopyWithImpl(
      _$TaxAmountImpl _value, $Res Function(_$TaxAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaxAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$TaxAmountImpl(
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
class _$TaxAmountImpl implements _TaxAmount {
  _$TaxAmountImpl({this.amount, this.currency});

  factory _$TaxAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxAmountImplFromJson(json);

  @override
  final num? amount;
  @override
  final String? currency;

  @override
  String toString() {
    return 'TaxAmount(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  /// Create a copy of TaxAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxAmountImplCopyWith<_$TaxAmountImpl> get copyWith =>
      __$$TaxAmountImplCopyWithImpl<_$TaxAmountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxAmountImplToJson(
      this,
    );
  }
}

abstract class _TaxAmount implements TaxAmount {
  factory _TaxAmount({final num? amount, final String? currency}) =
      _$TaxAmountImpl;

  factory _TaxAmount.fromJson(Map<String, dynamic> json) =
      _$TaxAmountImpl.fromJson;

  @override
  num? get amount;
  @override
  String? get currency;

  /// Create a copy of TaxAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaxAmountImplCopyWith<_$TaxAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
