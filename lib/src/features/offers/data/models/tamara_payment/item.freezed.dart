// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_id')
  String? get referenceId => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  num? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_amount')
  DiscountAmount? get discountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_amount')
  TaxAmount? get taxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  UnitPrice? get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  TotalAmount? get totalAmount => throw _privateConstructorUsedError;

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String? name,
      String? type,
      @JsonKey(name: 'reference_id') String? referenceId,
      String? sku,
      num? quantity,
      @JsonKey(name: 'discount_amount') DiscountAmount? discountAmount,
      @JsonKey(name: 'tax_amount') TaxAmount? taxAmount,
      @JsonKey(name: 'unit_price') UnitPrice? unitPrice,
      @JsonKey(name: 'total_amount') TotalAmount? totalAmount});

  $DiscountAmountCopyWith<$Res>? get discountAmount;
  $TaxAmountCopyWith<$Res>? get taxAmount;
  $UnitPriceCopyWith<$Res>? get unitPrice;
  $TotalAmountCopyWith<$Res>? get totalAmount;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? referenceId = freezed,
    Object? sku = freezed,
    Object? quantity = freezed,
    Object? discountAmount = freezed,
    Object? taxAmount = freezed,
    Object? unitPrice = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as DiscountAmount?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as TaxAmount?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as UnitPrice?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as TotalAmount?,
    ) as $Val);
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountAmountCopyWith<$Res>? get discountAmount {
    if (_value.discountAmount == null) {
      return null;
    }

    return $DiscountAmountCopyWith<$Res>(_value.discountAmount!, (value) {
      return _then(_value.copyWith(discountAmount: value) as $Val);
    });
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaxAmountCopyWith<$Res>? get taxAmount {
    if (_value.taxAmount == null) {
      return null;
    }

    return $TaxAmountCopyWith<$Res>(_value.taxAmount!, (value) {
      return _then(_value.copyWith(taxAmount: value) as $Val);
    });
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnitPriceCopyWith<$Res>? get unitPrice {
    if (_value.unitPrice == null) {
      return null;
    }

    return $UnitPriceCopyWith<$Res>(_value.unitPrice!, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TotalAmountCopyWith<$Res>? get totalAmount {
    if (_value.totalAmount == null) {
      return null;
    }

    return $TotalAmountCopyWith<$Res>(_value.totalAmount!, (value) {
      return _then(_value.copyWith(totalAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? type,
      @JsonKey(name: 'reference_id') String? referenceId,
      String? sku,
      num? quantity,
      @JsonKey(name: 'discount_amount') DiscountAmount? discountAmount,
      @JsonKey(name: 'tax_amount') TaxAmount? taxAmount,
      @JsonKey(name: 'unit_price') UnitPrice? unitPrice,
      @JsonKey(name: 'total_amount') TotalAmount? totalAmount});

  @override
  $DiscountAmountCopyWith<$Res>? get discountAmount;
  @override
  $TaxAmountCopyWith<$Res>? get taxAmount;
  @override
  $UnitPriceCopyWith<$Res>? get unitPrice;
  @override
  $TotalAmountCopyWith<$Res>? get totalAmount;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? referenceId = freezed,
    Object? sku = freezed,
    Object? quantity = freezed,
    Object? discountAmount = freezed,
    Object? taxAmount = freezed,
    Object? unitPrice = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(_$ItemImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as DiscountAmount?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as TaxAmount?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as UnitPrice?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as TotalAmount?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  _$ItemImpl(
      {this.name,
      this.type,
      @JsonKey(name: 'reference_id') this.referenceId,
      this.sku,
      this.quantity,
      @JsonKey(name: 'discount_amount') this.discountAmount,
      @JsonKey(name: 'tax_amount') this.taxAmount,
      @JsonKey(name: 'unit_price') this.unitPrice,
      @JsonKey(name: 'total_amount') this.totalAmount});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  @JsonKey(name: 'reference_id')
  final String? referenceId;
  @override
  final String? sku;
  @override
  final num? quantity;
  @override
  @JsonKey(name: 'discount_amount')
  final DiscountAmount? discountAmount;
  @override
  @JsonKey(name: 'tax_amount')
  final TaxAmount? taxAmount;
  @override
  @JsonKey(name: 'unit_price')
  final UnitPrice? unitPrice;
  @override
  @JsonKey(name: 'total_amount')
  final TotalAmount? totalAmount;

  @override
  String toString() {
    return 'Item(name: $name, type: $type, referenceId: $referenceId, sku: $sku, quantity: $quantity, discountAmount: $discountAmount, taxAmount: $taxAmount, unitPrice: $unitPrice, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, referenceId, sku,
      quantity, discountAmount, taxAmount, unitPrice, totalAmount);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  factory _Item(
      {final String? name,
      final String? type,
      @JsonKey(name: 'reference_id') final String? referenceId,
      final String? sku,
      final num? quantity,
      @JsonKey(name: 'discount_amount') final DiscountAmount? discountAmount,
      @JsonKey(name: 'tax_amount') final TaxAmount? taxAmount,
      @JsonKey(name: 'unit_price') final UnitPrice? unitPrice,
      @JsonKey(name: 'total_amount')
      final TotalAmount? totalAmount}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  String? get name;
  @override
  String? get type;
  @override
  @JsonKey(name: 'reference_id')
  String? get referenceId;
  @override
  String? get sku;
  @override
  num? get quantity;
  @override
  @JsonKey(name: 'discount_amount')
  DiscountAmount? get discountAmount;
  @override
  @JsonKey(name: 'tax_amount')
  TaxAmount? get taxAmount;
  @override
  @JsonKey(name: 'unit_price')
  UnitPrice? get unitPrice;
  @override
  @JsonKey(name: 'total_amount')
  TotalAmount? get totalAmount;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
