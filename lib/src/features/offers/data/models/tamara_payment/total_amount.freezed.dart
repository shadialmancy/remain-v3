// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'total_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TotalAmount _$TotalAmountFromJson(Map<String, dynamic> json) {
  return _TotalAmount.fromJson(json);
}

/// @nodoc
mixin _$TotalAmount {
  num? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;

  /// Serializes this TotalAmount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TotalAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TotalAmountCopyWith<TotalAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalAmountCopyWith<$Res> {
  factory $TotalAmountCopyWith(
          TotalAmount value, $Res Function(TotalAmount) then) =
      _$TotalAmountCopyWithImpl<$Res, TotalAmount>;
  @useResult
  $Res call({num? amount, String? currency});
}

/// @nodoc
class _$TotalAmountCopyWithImpl<$Res, $Val extends TotalAmount>
    implements $TotalAmountCopyWith<$Res> {
  _$TotalAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TotalAmount
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
abstract class _$$TotalAmountImplCopyWith<$Res>
    implements $TotalAmountCopyWith<$Res> {
  factory _$$TotalAmountImplCopyWith(
          _$TotalAmountImpl value, $Res Function(_$TotalAmountImpl) then) =
      __$$TotalAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? amount, String? currency});
}

/// @nodoc
class __$$TotalAmountImplCopyWithImpl<$Res>
    extends _$TotalAmountCopyWithImpl<$Res, _$TotalAmountImpl>
    implements _$$TotalAmountImplCopyWith<$Res> {
  __$$TotalAmountImplCopyWithImpl(
      _$TotalAmountImpl _value, $Res Function(_$TotalAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of TotalAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$TotalAmountImpl(
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
class _$TotalAmountImpl implements _TotalAmount {
  _$TotalAmountImpl({this.amount, this.currency});

  factory _$TotalAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalAmountImplFromJson(json);

  @override
  final num? amount;
  @override
  final String? currency;

  @override
  String toString() {
    return 'TotalAmount(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  /// Create a copy of TotalAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalAmountImplCopyWith<_$TotalAmountImpl> get copyWith =>
      __$$TotalAmountImplCopyWithImpl<_$TotalAmountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalAmountImplToJson(
      this,
    );
  }
}

abstract class _TotalAmount implements TotalAmount {
  factory _TotalAmount({final num? amount, final String? currency}) =
      _$TotalAmountImpl;

  factory _TotalAmount.fromJson(Map<String, dynamic> json) =
      _$TotalAmountImpl.fromJson;

  @override
  num? get amount;
  @override
  String? get currency;

  /// Create a copy of TotalAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TotalAmountImplCopyWith<_$TotalAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
