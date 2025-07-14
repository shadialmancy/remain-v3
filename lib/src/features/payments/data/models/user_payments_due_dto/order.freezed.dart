// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int? get servicePrice => throw _privateConstructorUsedError;
  String? get serviceName => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  num? get totalPrice => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int? servicePrice, String? serviceName, int? quantity, num? totalPrice});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servicePrice = freezed,
    Object? serviceName = freezed,
    Object? quantity = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      servicePrice: freezed == servicePrice
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceName: freezed == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? servicePrice, String? serviceName, int? quantity, num? totalPrice});
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servicePrice = freezed,
    Object? serviceName = freezed,
    Object? quantity = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$OrderImpl(
      servicePrice: freezed == servicePrice
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceName: freezed == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  _$OrderImpl(
      {this.servicePrice, this.serviceName, this.quantity, this.totalPrice});

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final int? servicePrice;
  @override
  final String? serviceName;
  @override
  final int? quantity;
  @override
  final num? totalPrice;

  @override
  String toString() {
    return 'Order(servicePrice: $servicePrice, serviceName: $serviceName, quantity: $quantity, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.servicePrice, servicePrice) ||
                other.servicePrice == servicePrice) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, servicePrice, serviceName, quantity, totalPrice);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order(
      {final int? servicePrice,
      final String? serviceName,
      final int? quantity,
      final num? totalPrice}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  int? get servicePrice;
  @override
  String? get serviceName;
  @override
  int? get quantity;
  @override
  num? get totalPrice;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
