// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BillingAddress _$BillingAddressFromJson(Map<String, dynamic> json) {
  return _BillingAddress.fromJson(json);
}

/// @nodoc
mixin _$BillingAddress {
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get line1 => throw _privateConstructorUsedError;
  String? get line2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;

  /// Serializes this BillingAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillingAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingAddressCopyWith<BillingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingAddressCopyWith<$Res> {
  factory $BillingAddressCopyWith(
          BillingAddress value, $Res Function(BillingAddress) then) =
      _$BillingAddressCopyWithImpl<$Res, BillingAddress>;
  @useResult
  $Res call(
      {String? city,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? line1,
      String? line2,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? region});
}

/// @nodoc
class _$BillingAddressCopyWithImpl<$Res, $Val extends BillingAddress>
    implements $BillingAddressCopyWith<$Res> {
  _$BillingAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? countryCode = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? line1 = freezed,
    Object? line2 = freezed,
    Object? phoneNumber = freezed,
    Object? region = freezed,
  }) {
    return _then(_value.copyWith(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      line1: freezed == line1
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as String?,
      line2: freezed == line2
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingAddressImplCopyWith<$Res>
    implements $BillingAddressCopyWith<$Res> {
  factory _$$BillingAddressImplCopyWith(_$BillingAddressImpl value,
          $Res Function(_$BillingAddressImpl) then) =
      __$$BillingAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? city,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? line1,
      String? line2,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? region});
}

/// @nodoc
class __$$BillingAddressImplCopyWithImpl<$Res>
    extends _$BillingAddressCopyWithImpl<$Res, _$BillingAddressImpl>
    implements _$$BillingAddressImplCopyWith<$Res> {
  __$$BillingAddressImplCopyWithImpl(
      _$BillingAddressImpl _value, $Res Function(_$BillingAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? countryCode = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? line1 = freezed,
    Object? line2 = freezed,
    Object? phoneNumber = freezed,
    Object? region = freezed,
  }) {
    return _then(_$BillingAddressImpl(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      line1: freezed == line1
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as String?,
      line2: freezed == line2
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingAddressImpl implements _BillingAddress {
  _$BillingAddressImpl(
      {this.city,
      @JsonKey(name: 'country_code') this.countryCode,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.line1,
      this.line2,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.region});

  factory _$BillingAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingAddressImplFromJson(json);

  @override
  final String? city;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? line1;
  @override
  final String? line2;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  final String? region;

  @override
  String toString() {
    return 'BillingAddress(city: $city, countryCode: $countryCode, firstName: $firstName, lastName: $lastName, line1: $line1, line2: $line2, phoneNumber: $phoneNumber, region: $region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingAddressImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.line1, line1) || other.line1 == line1) &&
            (identical(other.line2, line2) || other.line2 == line2) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.region, region) || other.region == region));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, city, countryCode, firstName,
      lastName, line1, line2, phoneNumber, region);

  /// Create a copy of BillingAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingAddressImplCopyWith<_$BillingAddressImpl> get copyWith =>
      __$$BillingAddressImplCopyWithImpl<_$BillingAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingAddressImplToJson(
      this,
    );
  }
}

abstract class _BillingAddress implements BillingAddress {
  factory _BillingAddress(
      {final String? city,
      @JsonKey(name: 'country_code') final String? countryCode,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      final String? line1,
      final String? line2,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      final String? region}) = _$BillingAddressImpl;

  factory _BillingAddress.fromJson(Map<String, dynamic> json) =
      _$BillingAddressImpl.fromJson;

  @override
  String? get city;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get line1;
  @override
  String? get line2;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  String? get region;

  /// Create a copy of BillingAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingAddressImplCopyWith<_$BillingAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
