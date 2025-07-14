// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnitPrice _$UnitPriceFromJson(Map<String, dynamic> json) {
  return _UnitPrice.fromJson(json);
}

/// @nodoc
mixin _$UnitPrice {
  num? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;

  /// Serializes this UnitPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnitPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnitPriceCopyWith<UnitPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitPriceCopyWith<$Res> {
  factory $UnitPriceCopyWith(UnitPrice value, $Res Function(UnitPrice) then) =
      _$UnitPriceCopyWithImpl<$Res, UnitPrice>;
  @useResult
  $Res call({num? amount, String? currency});
}

/// @nodoc
class _$UnitPriceCopyWithImpl<$Res, $Val extends UnitPrice>
    implements $UnitPriceCopyWith<$Res> {
  _$UnitPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnitPrice
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
abstract class _$$UnitPriceImplCopyWith<$Res>
    implements $UnitPriceCopyWith<$Res> {
  factory _$$UnitPriceImplCopyWith(
          _$UnitPriceImpl value, $Res Function(_$UnitPriceImpl) then) =
      __$$UnitPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? amount, String? currency});
}

/// @nodoc
class __$$UnitPriceImplCopyWithImpl<$Res>
    extends _$UnitPriceCopyWithImpl<$Res, _$UnitPriceImpl>
    implements _$$UnitPriceImplCopyWith<$Res> {
  __$$UnitPriceImplCopyWithImpl(
      _$UnitPriceImpl _value, $Res Function(_$UnitPriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$UnitPriceImpl(
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
class _$UnitPriceImpl implements _UnitPrice {
  _$UnitPriceImpl({this.amount, this.currency});

  factory _$UnitPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitPriceImplFromJson(json);

  @override
  final num? amount;
  @override
  final String? currency;

  @override
  String toString() {
    return 'UnitPrice(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitPriceImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  /// Create a copy of UnitPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitPriceImplCopyWith<_$UnitPriceImpl> get copyWith =>
      __$$UnitPriceImplCopyWithImpl<_$UnitPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitPriceImplToJson(
      this,
    );
  }
}

abstract class _UnitPrice implements UnitPrice {
  factory _UnitPrice({final num? amount, final String? currency}) =
      _$UnitPriceImpl;

  factory _UnitPrice.fromJson(Map<String, dynamic> json) =
      _$UnitPriceImpl.fromJson;

  @override
  num? get amount;
  @override
  String? get currency;

  /// Create a copy of UnitPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnitPriceImplCopyWith<_$UnitPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
