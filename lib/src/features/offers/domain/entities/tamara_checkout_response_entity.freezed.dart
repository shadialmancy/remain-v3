// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tamara_checkout_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TamaraCheckoutResponseEntity _$TamaraCheckoutResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _TamaraCheckoutResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$TamaraCheckoutResponseEntity {
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkout_id')
  String? get checkoutId => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkout_url')
  String? get checkoutUrl => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this TamaraCheckoutResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TamaraCheckoutResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TamaraCheckoutResponseEntityCopyWith<TamaraCheckoutResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TamaraCheckoutResponseEntityCopyWith<$Res> {
  factory $TamaraCheckoutResponseEntityCopyWith(
          TamaraCheckoutResponseEntity value,
          $Res Function(TamaraCheckoutResponseEntity) then) =
      _$TamaraCheckoutResponseEntityCopyWithImpl<$Res,
          TamaraCheckoutResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'checkout_id') String? checkoutId,
      @JsonKey(name: 'checkout_url') String? checkoutUrl,
      String? status});
}

/// @nodoc
class _$TamaraCheckoutResponseEntityCopyWithImpl<$Res,
        $Val extends TamaraCheckoutResponseEntity>
    implements $TamaraCheckoutResponseEntityCopyWith<$Res> {
  _$TamaraCheckoutResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TamaraCheckoutResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? checkoutId = freezed,
    Object? checkoutUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutId: freezed == checkoutId
          ? _value.checkoutId
          : checkoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutUrl: freezed == checkoutUrl
          ? _value.checkoutUrl
          : checkoutUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TamaraCheckoutResponseEntityImplCopyWith<$Res>
    implements $TamaraCheckoutResponseEntityCopyWith<$Res> {
  factory _$$TamaraCheckoutResponseEntityImplCopyWith(
          _$TamaraCheckoutResponseEntityImpl value,
          $Res Function(_$TamaraCheckoutResponseEntityImpl) then) =
      __$$TamaraCheckoutResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'checkout_id') String? checkoutId,
      @JsonKey(name: 'checkout_url') String? checkoutUrl,
      String? status});
}

/// @nodoc
class __$$TamaraCheckoutResponseEntityImplCopyWithImpl<$Res>
    extends _$TamaraCheckoutResponseEntityCopyWithImpl<$Res,
        _$TamaraCheckoutResponseEntityImpl>
    implements _$$TamaraCheckoutResponseEntityImplCopyWith<$Res> {
  __$$TamaraCheckoutResponseEntityImplCopyWithImpl(
      _$TamaraCheckoutResponseEntityImpl _value,
      $Res Function(_$TamaraCheckoutResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TamaraCheckoutResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? checkoutId = freezed,
    Object? checkoutUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_$TamaraCheckoutResponseEntityImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutId: freezed == checkoutId
          ? _value.checkoutId
          : checkoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutUrl: freezed == checkoutUrl
          ? _value.checkoutUrl
          : checkoutUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TamaraCheckoutResponseEntityImpl
    implements _TamaraCheckoutResponseEntity {
  _$TamaraCheckoutResponseEntityImpl(
      {@JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'checkout_id') this.checkoutId,
      @JsonKey(name: 'checkout_url') this.checkoutUrl,
      this.status});

  factory _$TamaraCheckoutResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TamaraCheckoutResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final String? orderId;
  @override
  @JsonKey(name: 'checkout_id')
  final String? checkoutId;
  @override
  @JsonKey(name: 'checkout_url')
  final String? checkoutUrl;
  @override
  final String? status;

  @override
  String toString() {
    return 'TamaraCheckoutResponseEntity(orderId: $orderId, checkoutId: $checkoutId, checkoutUrl: $checkoutUrl, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TamaraCheckoutResponseEntityImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.checkoutId, checkoutId) ||
                other.checkoutId == checkoutId) &&
            (identical(other.checkoutUrl, checkoutUrl) ||
                other.checkoutUrl == checkoutUrl) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, checkoutId, checkoutUrl, status);

  /// Create a copy of TamaraCheckoutResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TamaraCheckoutResponseEntityImplCopyWith<
          _$TamaraCheckoutResponseEntityImpl>
      get copyWith => __$$TamaraCheckoutResponseEntityImplCopyWithImpl<
          _$TamaraCheckoutResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TamaraCheckoutResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _TamaraCheckoutResponseEntity
    implements TamaraCheckoutResponseEntity {
  factory _TamaraCheckoutResponseEntity(
      {@JsonKey(name: 'order_id') final String? orderId,
      @JsonKey(name: 'checkout_id') final String? checkoutId,
      @JsonKey(name: 'checkout_url') final String? checkoutUrl,
      final String? status}) = _$TamaraCheckoutResponseEntityImpl;

  factory _TamaraCheckoutResponseEntity.fromJson(Map<String, dynamic> json) =
      _$TamaraCheckoutResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: 'order_id')
  String? get orderId;
  @override
  @JsonKey(name: 'checkout_id')
  String? get checkoutId;
  @override
  @JsonKey(name: 'checkout_url')
  String? get checkoutUrl;
  @override
  String? get status;

  /// Create a copy of TamaraCheckoutResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TamaraCheckoutResponseEntityImplCopyWith<
          _$TamaraCheckoutResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
