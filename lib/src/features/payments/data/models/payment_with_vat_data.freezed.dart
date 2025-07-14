// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_with_vat_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentWithVatData _$PaymentWithVatDataFromJson(Map<String, dynamic> json) {
  return _PaymentWithVatData.fromJson(json);
}

/// @nodoc
mixin _$PaymentWithVatData {
  num? get total => throw _privateConstructorUsedError;
  num? get recharging => throw _privateConstructorUsedError;
  num? get vat => throw _privateConstructorUsedError;

  /// Serializes this PaymentWithVatData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentWithVatData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentWithVatDataCopyWith<PaymentWithVatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentWithVatDataCopyWith<$Res> {
  factory $PaymentWithVatDataCopyWith(
          PaymentWithVatData value, $Res Function(PaymentWithVatData) then) =
      _$PaymentWithVatDataCopyWithImpl<$Res, PaymentWithVatData>;
  @useResult
  $Res call({num? total, num? recharging, num? vat});
}

/// @nodoc
class _$PaymentWithVatDataCopyWithImpl<$Res, $Val extends PaymentWithVatData>
    implements $PaymentWithVatDataCopyWith<$Res> {
  _$PaymentWithVatDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentWithVatData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? recharging = freezed,
    Object? vat = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      recharging: freezed == recharging
          ? _value.recharging
          : recharging // ignore: cast_nullable_to_non_nullable
              as num?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentWithVatDataImplCopyWith<$Res>
    implements $PaymentWithVatDataCopyWith<$Res> {
  factory _$$PaymentWithVatDataImplCopyWith(_$PaymentWithVatDataImpl value,
          $Res Function(_$PaymentWithVatDataImpl) then) =
      __$$PaymentWithVatDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? total, num? recharging, num? vat});
}

/// @nodoc
class __$$PaymentWithVatDataImplCopyWithImpl<$Res>
    extends _$PaymentWithVatDataCopyWithImpl<$Res, _$PaymentWithVatDataImpl>
    implements _$$PaymentWithVatDataImplCopyWith<$Res> {
  __$$PaymentWithVatDataImplCopyWithImpl(_$PaymentWithVatDataImpl _value,
      $Res Function(_$PaymentWithVatDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentWithVatData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? recharging = freezed,
    Object? vat = freezed,
  }) {
    return _then(_$PaymentWithVatDataImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      recharging: freezed == recharging
          ? _value.recharging
          : recharging // ignore: cast_nullable_to_non_nullable
              as num?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentWithVatDataImpl implements _PaymentWithVatData {
  _$PaymentWithVatDataImpl({this.total, this.recharging, this.vat});

  factory _$PaymentWithVatDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentWithVatDataImplFromJson(json);

  @override
  final num? total;
  @override
  final num? recharging;
  @override
  final num? vat;

  @override
  String toString() {
    return 'PaymentWithVatData(total: $total, recharging: $recharging, vat: $vat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentWithVatDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.recharging, recharging) ||
                other.recharging == recharging) &&
            (identical(other.vat, vat) || other.vat == vat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, recharging, vat);

  /// Create a copy of PaymentWithVatData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentWithVatDataImplCopyWith<_$PaymentWithVatDataImpl> get copyWith =>
      __$$PaymentWithVatDataImplCopyWithImpl<_$PaymentWithVatDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentWithVatDataImplToJson(
      this,
    );
  }
}

abstract class _PaymentWithVatData implements PaymentWithVatData {
  factory _PaymentWithVatData(
      {final num? total,
      final num? recharging,
      final num? vat}) = _$PaymentWithVatDataImpl;

  factory _PaymentWithVatData.fromJson(Map<String, dynamic> json) =
      _$PaymentWithVatDataImpl.fromJson;

  @override
  num? get total;
  @override
  num? get recharging;
  @override
  num? get vat;

  /// Create a copy of PaymentWithVatData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentWithVatDataImplCopyWith<_$PaymentWithVatDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
