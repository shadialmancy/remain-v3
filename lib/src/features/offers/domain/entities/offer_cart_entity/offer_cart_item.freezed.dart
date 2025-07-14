// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfferCartItem _$OfferCartItemFromJson(Map<String, dynamic> json) {
  return _OfferCartItem.fromJson(json);
}

/// @nodoc
mixin _$OfferCartItem {
  @HiveField(0)
  String? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  num? get programId => throw _privateConstructorUsedError;
  @HiveField(2)
  num? get programVerId => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get programName => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get programArbName => throw _privateConstructorUsedError;
  @HiveField(5)
  num? get afterDiscount => throw _privateConstructorUsedError;
  @HiveField(6)
  num? get beforeDiscount => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get specialtie => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get specialtieId => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get locationsId => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get locations => throw _privateConstructorUsedError;
  @HiveField(11)
  num? get discountRate => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get programImage => throw _privateConstructorUsedError;
  @HiveField(13)
  int get quantity => throw _privateConstructorUsedError;
  @HiveField(14)
  DateTime? get purchaseDate => throw _privateConstructorUsedError;

  /// Serializes this OfferCartItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfferCartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferCartItemCopyWith<OfferCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCartItemCopyWith<$Res> {
  factory $OfferCartItemCopyWith(
          OfferCartItem value, $Res Function(OfferCartItem) then) =
      _$OfferCartItemCopyWithImpl<$Res, OfferCartItem>;
  @useResult
  $Res call(
      {@HiveField(0) String? code,
      @HiveField(1) num? programId,
      @HiveField(2) num? programVerId,
      @HiveField(3) String? programName,
      @HiveField(4) String? programArbName,
      @HiveField(5) num? afterDiscount,
      @HiveField(6) num? beforeDiscount,
      @HiveField(7) String? specialtie,
      @HiveField(8) String? specialtieId,
      @HiveField(9) String? locationsId,
      @HiveField(10) String? locations,
      @HiveField(11) num? discountRate,
      @HiveField(12) String? programImage,
      @HiveField(13) int quantity,
      @HiveField(14) DateTime? purchaseDate});
}

/// @nodoc
class _$OfferCartItemCopyWithImpl<$Res, $Val extends OfferCartItem>
    implements $OfferCartItemCopyWith<$Res> {
  _$OfferCartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferCartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? programId = freezed,
    Object? programVerId = freezed,
    Object? programName = freezed,
    Object? programArbName = freezed,
    Object? afterDiscount = freezed,
    Object? beforeDiscount = freezed,
    Object? specialtie = freezed,
    Object? specialtieId = freezed,
    Object? locationsId = freezed,
    Object? locations = freezed,
    Object? discountRate = freezed,
    Object? programImage = freezed,
    Object? quantity = null,
    Object? purchaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as num?,
      programVerId: freezed == programVerId
          ? _value.programVerId
          : programVerId // ignore: cast_nullable_to_non_nullable
              as num?,
      programName: freezed == programName
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String?,
      programArbName: freezed == programArbName
          ? _value.programArbName
          : programArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      afterDiscount: freezed == afterDiscount
          ? _value.afterDiscount
          : afterDiscount // ignore: cast_nullable_to_non_nullable
              as num?,
      beforeDiscount: freezed == beforeDiscount
          ? _value.beforeDiscount
          : beforeDiscount // ignore: cast_nullable_to_non_nullable
              as num?,
      specialtie: freezed == specialtie
          ? _value.specialtie
          : specialtie // ignore: cast_nullable_to_non_nullable
              as String?,
      specialtieId: freezed == specialtieId
          ? _value.specialtieId
          : specialtieId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationsId: freezed == locationsId
          ? _value.locationsId
          : locationsId // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as String?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as num?,
      programImage: freezed == programImage
          ? _value.programImage
          : programImage // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferCartItemImplCopyWith<$Res>
    implements $OfferCartItemCopyWith<$Res> {
  factory _$$OfferCartItemImplCopyWith(
          _$OfferCartItemImpl value, $Res Function(_$OfferCartItemImpl) then) =
      __$$OfferCartItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? code,
      @HiveField(1) num? programId,
      @HiveField(2) num? programVerId,
      @HiveField(3) String? programName,
      @HiveField(4) String? programArbName,
      @HiveField(5) num? afterDiscount,
      @HiveField(6) num? beforeDiscount,
      @HiveField(7) String? specialtie,
      @HiveField(8) String? specialtieId,
      @HiveField(9) String? locationsId,
      @HiveField(10) String? locations,
      @HiveField(11) num? discountRate,
      @HiveField(12) String? programImage,
      @HiveField(13) int quantity,
      @HiveField(14) DateTime? purchaseDate});
}

/// @nodoc
class __$$OfferCartItemImplCopyWithImpl<$Res>
    extends _$OfferCartItemCopyWithImpl<$Res, _$OfferCartItemImpl>
    implements _$$OfferCartItemImplCopyWith<$Res> {
  __$$OfferCartItemImplCopyWithImpl(
      _$OfferCartItemImpl _value, $Res Function(_$OfferCartItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfferCartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? programId = freezed,
    Object? programVerId = freezed,
    Object? programName = freezed,
    Object? programArbName = freezed,
    Object? afterDiscount = freezed,
    Object? beforeDiscount = freezed,
    Object? specialtie = freezed,
    Object? specialtieId = freezed,
    Object? locationsId = freezed,
    Object? locations = freezed,
    Object? discountRate = freezed,
    Object? programImage = freezed,
    Object? quantity = null,
    Object? purchaseDate = freezed,
  }) {
    return _then(_$OfferCartItemImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as num?,
      programVerId: freezed == programVerId
          ? _value.programVerId
          : programVerId // ignore: cast_nullable_to_non_nullable
              as num?,
      programName: freezed == programName
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String?,
      programArbName: freezed == programArbName
          ? _value.programArbName
          : programArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      afterDiscount: freezed == afterDiscount
          ? _value.afterDiscount
          : afterDiscount // ignore: cast_nullable_to_non_nullable
              as num?,
      beforeDiscount: freezed == beforeDiscount
          ? _value.beforeDiscount
          : beforeDiscount // ignore: cast_nullable_to_non_nullable
              as num?,
      specialtie: freezed == specialtie
          ? _value.specialtie
          : specialtie // ignore: cast_nullable_to_non_nullable
              as String?,
      specialtieId: freezed == specialtieId
          ? _value.specialtieId
          : specialtieId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationsId: freezed == locationsId
          ? _value.locationsId
          : locationsId // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as String?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as num?,
      programImage: freezed == programImage
          ? _value.programImage
          : programImage // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferCartItemImpl extends _OfferCartItem {
  _$OfferCartItemImpl(
      {@HiveField(0) this.code,
      @HiveField(1) this.programId,
      @HiveField(2) this.programVerId,
      @HiveField(3) this.programName,
      @HiveField(4) this.programArbName,
      @HiveField(5) this.afterDiscount,
      @HiveField(6) this.beforeDiscount,
      @HiveField(7) this.specialtie,
      @HiveField(8) this.specialtieId,
      @HiveField(9) this.locationsId,
      @HiveField(10) this.locations,
      @HiveField(11) this.discountRate,
      @HiveField(12) this.programImage,
      @HiveField(13) this.quantity = 0,
      @HiveField(14) required this.purchaseDate})
      : super._();

  factory _$OfferCartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferCartItemImplFromJson(json);

  @override
  @HiveField(0)
  final String? code;
  @override
  @HiveField(1)
  final num? programId;
  @override
  @HiveField(2)
  final num? programVerId;
  @override
  @HiveField(3)
  final String? programName;
  @override
  @HiveField(4)
  final String? programArbName;
  @override
  @HiveField(5)
  final num? afterDiscount;
  @override
  @HiveField(6)
  final num? beforeDiscount;
  @override
  @HiveField(7)
  final String? specialtie;
  @override
  @HiveField(8)
  final String? specialtieId;
  @override
  @HiveField(9)
  final String? locationsId;
  @override
  @HiveField(10)
  final String? locations;
  @override
  @HiveField(11)
  final num? discountRate;
  @override
  @HiveField(12)
  final String? programImage;
  @override
  @JsonKey()
  @HiveField(13)
  final int quantity;
  @override
  @HiveField(14)
  final DateTime? purchaseDate;

  /// Create a copy of OfferCartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferCartItemImplCopyWith<_$OfferCartItemImpl> get copyWith =>
      __$$OfferCartItemImplCopyWithImpl<_$OfferCartItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferCartItemImplToJson(
      this,
    );
  }
}

abstract class _OfferCartItem extends OfferCartItem {
  factory _OfferCartItem(
          {@HiveField(0) final String? code,
          @HiveField(1) final num? programId,
          @HiveField(2) final num? programVerId,
          @HiveField(3) final String? programName,
          @HiveField(4) final String? programArbName,
          @HiveField(5) final num? afterDiscount,
          @HiveField(6) final num? beforeDiscount,
          @HiveField(7) final String? specialtie,
          @HiveField(8) final String? specialtieId,
          @HiveField(9) final String? locationsId,
          @HiveField(10) final String? locations,
          @HiveField(11) final num? discountRate,
          @HiveField(12) final String? programImage,
          @HiveField(13) final int quantity,
          @HiveField(14) required final DateTime? purchaseDate}) =
      _$OfferCartItemImpl;
  _OfferCartItem._() : super._();

  factory _OfferCartItem.fromJson(Map<String, dynamic> json) =
      _$OfferCartItemImpl.fromJson;

  @override
  @HiveField(0)
  String? get code;
  @override
  @HiveField(1)
  num? get programId;
  @override
  @HiveField(2)
  num? get programVerId;
  @override
  @HiveField(3)
  String? get programName;
  @override
  @HiveField(4)
  String? get programArbName;
  @override
  @HiveField(5)
  num? get afterDiscount;
  @override
  @HiveField(6)
  num? get beforeDiscount;
  @override
  @HiveField(7)
  String? get specialtie;
  @override
  @HiveField(8)
  String? get specialtieId;
  @override
  @HiveField(9)
  String? get locationsId;
  @override
  @HiveField(10)
  String? get locations;
  @override
  @HiveField(11)
  num? get discountRate;
  @override
  @HiveField(12)
  String? get programImage;
  @override
  @HiveField(13)
  int get quantity;
  @override
  @HiveField(14)
  DateTime? get purchaseDate;

  /// Create a copy of OfferCartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferCartItemImplCopyWith<_$OfferCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
