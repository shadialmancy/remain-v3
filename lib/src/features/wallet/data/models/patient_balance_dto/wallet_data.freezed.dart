// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletData _$WalletDataFromJson(Map<String, dynamic> json) {
  return _WalletData.fromJson(json);
}

/// @nodoc
mixin _$WalletData {
  @JsonKey(name: 'Balance')
  num? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'Debit')
  num? get debit => throw _privateConstructorUsedError;
  @JsonKey(name: 'Credit')
  num? get credit => throw _privateConstructorUsedError;

  /// Serializes this WalletData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletDataCopyWith<WalletData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDataCopyWith<$Res> {
  factory $WalletDataCopyWith(
          WalletData value, $Res Function(WalletData) then) =
      _$WalletDataCopyWithImpl<$Res, WalletData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Balance') num? balance,
      @JsonKey(name: 'Debit') num? debit,
      @JsonKey(name: 'Credit') num? credit});
}

/// @nodoc
class _$WalletDataCopyWithImpl<$Res, $Val extends WalletData>
    implements $WalletDataCopyWith<$Res> {
  _$WalletDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = freezed,
    Object? debit = freezed,
    Object? credit = freezed,
  }) {
    return _then(_value.copyWith(
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num?,
      debit: freezed == debit
          ? _value.debit
          : debit // ignore: cast_nullable_to_non_nullable
              as num?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletDataImplCopyWith<$Res>
    implements $WalletDataCopyWith<$Res> {
  factory _$$WalletDataImplCopyWith(
          _$WalletDataImpl value, $Res Function(_$WalletDataImpl) then) =
      __$$WalletDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Balance') num? balance,
      @JsonKey(name: 'Debit') num? debit,
      @JsonKey(name: 'Credit') num? credit});
}

/// @nodoc
class __$$WalletDataImplCopyWithImpl<$Res>
    extends _$WalletDataCopyWithImpl<$Res, _$WalletDataImpl>
    implements _$$WalletDataImplCopyWith<$Res> {
  __$$WalletDataImplCopyWithImpl(
      _$WalletDataImpl _value, $Res Function(_$WalletDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = freezed,
    Object? debit = freezed,
    Object? credit = freezed,
  }) {
    return _then(_$WalletDataImpl(
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num?,
      debit: freezed == debit
          ? _value.debit
          : debit // ignore: cast_nullable_to_non_nullable
              as num?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletDataImpl implements _WalletData {
  _$WalletDataImpl(
      {@JsonKey(name: 'Balance') this.balance,
      @JsonKey(name: 'Debit') this.debit,
      @JsonKey(name: 'Credit') this.credit});

  factory _$WalletDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletDataImplFromJson(json);

  @override
  @JsonKey(name: 'Balance')
  final num? balance;
  @override
  @JsonKey(name: 'Debit')
  final num? debit;
  @override
  @JsonKey(name: 'Credit')
  final num? credit;

  @override
  String toString() {
    return 'WalletData(balance: $balance, debit: $debit, credit: $credit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletDataImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.debit, debit) || other.debit == debit) &&
            (identical(other.credit, credit) || other.credit == credit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, balance, debit, credit);

  /// Create a copy of WalletData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletDataImplCopyWith<_$WalletDataImpl> get copyWith =>
      __$$WalletDataImplCopyWithImpl<_$WalletDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletDataImplToJson(
      this,
    );
  }
}

abstract class _WalletData implements WalletData {
  factory _WalletData(
      {@JsonKey(name: 'Balance') final num? balance,
      @JsonKey(name: 'Debit') final num? debit,
      @JsonKey(name: 'Credit') final num? credit}) = _$WalletDataImpl;

  factory _WalletData.fromJson(Map<String, dynamic> json) =
      _$WalletDataImpl.fromJson;

  @override
  @JsonKey(name: 'Balance')
  num? get balance;
  @override
  @JsonKey(name: 'Debit')
  num? get debit;
  @override
  @JsonKey(name: 'Credit')
  num? get credit;

  /// Create a copy of WalletData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletDataImplCopyWith<_$WalletDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
