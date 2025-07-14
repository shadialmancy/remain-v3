// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recharge_wallet_balance_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RechargeWalletBalanceResponseEntity
    _$RechargeWalletBalanceResponseEntityFromJson(Map<String, dynamic> json) {
  return _RechargeWalletBalanceResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$RechargeWalletBalanceResponseEntity {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this RechargeWalletBalanceResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RechargeWalletBalanceResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RechargeWalletBalanceResponseEntityCopyWith<
          RechargeWalletBalanceResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RechargeWalletBalanceResponseEntityCopyWith<$Res> {
  factory $RechargeWalletBalanceResponseEntityCopyWith(
          RechargeWalletBalanceResponseEntity value,
          $Res Function(RechargeWalletBalanceResponseEntity) then) =
      _$RechargeWalletBalanceResponseEntityCopyWithImpl<$Res,
          RechargeWalletBalanceResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage});
}

/// @nodoc
class _$RechargeWalletBalanceResponseEntityCopyWithImpl<$Res,
        $Val extends RechargeWalletBalanceResponseEntity>
    implements $RechargeWalletBalanceResponseEntityCopyWith<$Res> {
  _$RechargeWalletBalanceResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RechargeWalletBalanceResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as num?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RechargeWalletBalanceResponseEntityImplCopyWith<$Res>
    implements $RechargeWalletBalanceResponseEntityCopyWith<$Res> {
  factory _$$RechargeWalletBalanceResponseEntityImplCopyWith(
          _$RechargeWalletBalanceResponseEntityImpl value,
          $Res Function(_$RechargeWalletBalanceResponseEntityImpl) then) =
      __$$RechargeWalletBalanceResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage});
}

/// @nodoc
class __$$RechargeWalletBalanceResponseEntityImplCopyWithImpl<$Res>
    extends _$RechargeWalletBalanceResponseEntityCopyWithImpl<$Res,
        _$RechargeWalletBalanceResponseEntityImpl>
    implements _$$RechargeWalletBalanceResponseEntityImplCopyWith<$Res> {
  __$$RechargeWalletBalanceResponseEntityImplCopyWithImpl(
      _$RechargeWalletBalanceResponseEntityImpl _value,
      $Res Function(_$RechargeWalletBalanceResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RechargeWalletBalanceResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$RechargeWalletBalanceResponseEntityImpl(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as num?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RechargeWalletBalanceResponseEntityImpl
    implements _RechargeWalletBalanceResponseEntity {
  _$RechargeWalletBalanceResponseEntityImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage});

  factory _$RechargeWalletBalanceResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RechargeWalletBalanceResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  @override
  final num? code;
  @override
  @JsonKey(name: 'error_message')
  final String? errorMessage;

  @override
  String toString() {
    return 'RechargeWalletBalanceResponseEntity(requestId: $requestId, code: $code, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RechargeWalletBalanceResponseEntityImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, code, errorMessage);

  /// Create a copy of RechargeWalletBalanceResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RechargeWalletBalanceResponseEntityImplCopyWith<
          _$RechargeWalletBalanceResponseEntityImpl>
      get copyWith => __$$RechargeWalletBalanceResponseEntityImplCopyWithImpl<
          _$RechargeWalletBalanceResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RechargeWalletBalanceResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _RechargeWalletBalanceResponseEntity
    implements RechargeWalletBalanceResponseEntity {
  factory _RechargeWalletBalanceResponseEntity(
          {@JsonKey(name: 'request_id') final String? requestId,
          final num? code,
          @JsonKey(name: 'error_message') final String? errorMessage}) =
      _$RechargeWalletBalanceResponseEntityImpl;

  factory _RechargeWalletBalanceResponseEntity.fromJson(
          Map<String, dynamic> json) =
      _$RechargeWalletBalanceResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  num? get code;
  @override
  @JsonKey(name: 'error_message')
  String? get errorMessage;

  /// Create a copy of RechargeWalletBalanceResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RechargeWalletBalanceResponseEntityImplCopyWith<
          _$RechargeWalletBalanceResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
