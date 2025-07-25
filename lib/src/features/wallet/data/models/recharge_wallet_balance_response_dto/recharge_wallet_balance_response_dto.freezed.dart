// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recharge_wallet_balance_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RechargeWalletBalanceResponseDto _$RechargeWalletBalanceResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _RechargeWalletBalanceResponseDto.fromJson(json);
}

/// @nodoc
mixin _$RechargeWalletBalanceResponseDto {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this RechargeWalletBalanceResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RechargeWalletBalanceResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RechargeWalletBalanceResponseDtoCopyWith<RechargeWalletBalanceResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RechargeWalletBalanceResponseDtoCopyWith<$Res> {
  factory $RechargeWalletBalanceResponseDtoCopyWith(
          RechargeWalletBalanceResponseDto value,
          $Res Function(RechargeWalletBalanceResponseDto) then) =
      _$RechargeWalletBalanceResponseDtoCopyWithImpl<$Res,
          RechargeWalletBalanceResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage});
}

/// @nodoc
class _$RechargeWalletBalanceResponseDtoCopyWithImpl<$Res,
        $Val extends RechargeWalletBalanceResponseDto>
    implements $RechargeWalletBalanceResponseDtoCopyWith<$Res> {
  _$RechargeWalletBalanceResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RechargeWalletBalanceResponseDto
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
abstract class _$$RechargeWalletBalanceResponseDtoImplCopyWith<$Res>
    implements $RechargeWalletBalanceResponseDtoCopyWith<$Res> {
  factory _$$RechargeWalletBalanceResponseDtoImplCopyWith(
          _$RechargeWalletBalanceResponseDtoImpl value,
          $Res Function(_$RechargeWalletBalanceResponseDtoImpl) then) =
      __$$RechargeWalletBalanceResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage});
}

/// @nodoc
class __$$RechargeWalletBalanceResponseDtoImplCopyWithImpl<$Res>
    extends _$RechargeWalletBalanceResponseDtoCopyWithImpl<$Res,
        _$RechargeWalletBalanceResponseDtoImpl>
    implements _$$RechargeWalletBalanceResponseDtoImplCopyWith<$Res> {
  __$$RechargeWalletBalanceResponseDtoImplCopyWithImpl(
      _$RechargeWalletBalanceResponseDtoImpl _value,
      $Res Function(_$RechargeWalletBalanceResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RechargeWalletBalanceResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$RechargeWalletBalanceResponseDtoImpl(
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
class _$RechargeWalletBalanceResponseDtoImpl
    implements _RechargeWalletBalanceResponseDto {
  _$RechargeWalletBalanceResponseDtoImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage});

  factory _$RechargeWalletBalanceResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RechargeWalletBalanceResponseDtoImplFromJson(json);

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
    return 'RechargeWalletBalanceResponseDto(requestId: $requestId, code: $code, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RechargeWalletBalanceResponseDtoImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, code, errorMessage);

  /// Create a copy of RechargeWalletBalanceResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RechargeWalletBalanceResponseDtoImplCopyWith<
          _$RechargeWalletBalanceResponseDtoImpl>
      get copyWith => __$$RechargeWalletBalanceResponseDtoImplCopyWithImpl<
          _$RechargeWalletBalanceResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RechargeWalletBalanceResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _RechargeWalletBalanceResponseDto
    implements RechargeWalletBalanceResponseDto {
  factory _RechargeWalletBalanceResponseDto(
          {@JsonKey(name: 'request_id') final String? requestId,
          final num? code,
          @JsonKey(name: 'error_message') final String? errorMessage}) =
      _$RechargeWalletBalanceResponseDtoImpl;

  factory _RechargeWalletBalanceResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$RechargeWalletBalanceResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  num? get code;
  @override
  @JsonKey(name: 'error_message')
  String? get errorMessage;

  /// Create a copy of RechargeWalletBalanceResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RechargeWalletBalanceResponseDtoImplCopyWith<
          _$RechargeWalletBalanceResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
