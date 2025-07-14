// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculate_payment_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalculatePaymentResponseDto _$CalculatePaymentResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _CalculatePaymentResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CalculatePaymentResponseDto {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  PaymentWithVatData? get data => throw _privateConstructorUsedError;

  /// Serializes this CalculatePaymentResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculatePaymentResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatePaymentResponseDtoCopyWith<CalculatePaymentResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatePaymentResponseDtoCopyWith<$Res> {
  factory $CalculatePaymentResponseDtoCopyWith(
          CalculatePaymentResponseDto value,
          $Res Function(CalculatePaymentResponseDto) then) =
      _$CalculatePaymentResponseDtoCopyWithImpl<$Res,
          CalculatePaymentResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      PaymentWithVatData? data});

  $PaymentWithVatDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CalculatePaymentResponseDtoCopyWithImpl<$Res,
        $Val extends CalculatePaymentResponseDto>
    implements $CalculatePaymentResponseDtoCopyWith<$Res> {
  _$CalculatePaymentResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatePaymentResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentWithVatData?,
    ) as $Val);
  }

  /// Create a copy of CalculatePaymentResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentWithVatDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PaymentWithVatDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalculatePaymentResponseDtoImplCopyWith<$Res>
    implements $CalculatePaymentResponseDtoCopyWith<$Res> {
  factory _$$CalculatePaymentResponseDtoImplCopyWith(
          _$CalculatePaymentResponseDtoImpl value,
          $Res Function(_$CalculatePaymentResponseDtoImpl) then) =
      __$$CalculatePaymentResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      PaymentWithVatData? data});

  @override
  $PaymentWithVatDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CalculatePaymentResponseDtoImplCopyWithImpl<$Res>
    extends _$CalculatePaymentResponseDtoCopyWithImpl<$Res,
        _$CalculatePaymentResponseDtoImpl>
    implements _$$CalculatePaymentResponseDtoImplCopyWith<$Res> {
  __$$CalculatePaymentResponseDtoImplCopyWithImpl(
      _$CalculatePaymentResponseDtoImpl _value,
      $Res Function(_$CalculatePaymentResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatePaymentResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CalculatePaymentResponseDtoImpl(
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentWithVatData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatePaymentResponseDtoImpl
    implements _CalculatePaymentResponseDto {
  _$CalculatePaymentResponseDtoImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      this.data});

  factory _$CalculatePaymentResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CalculatePaymentResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  @override
  final num? code;
  @override
  @JsonKey(name: 'error_message')
  final String? errorMessage;
  @override
  final PaymentWithVatData? data;

  @override
  String toString() {
    return 'CalculatePaymentResponseDto(requestId: $requestId, code: $code, errorMessage: $errorMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatePaymentResponseDtoImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, requestId, code, errorMessage, data);

  /// Create a copy of CalculatePaymentResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatePaymentResponseDtoImplCopyWith<_$CalculatePaymentResponseDtoImpl>
      get copyWith => __$$CalculatePaymentResponseDtoImplCopyWithImpl<
          _$CalculatePaymentResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatePaymentResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _CalculatePaymentResponseDto
    implements CalculatePaymentResponseDto {
  factory _CalculatePaymentResponseDto(
      {@JsonKey(name: 'request_id') final String? requestId,
      final num? code,
      @JsonKey(name: 'error_message') final String? errorMessage,
      final PaymentWithVatData? data}) = _$CalculatePaymentResponseDtoImpl;

  factory _CalculatePaymentResponseDto.fromJson(Map<String, dynamic> json) =
      _$CalculatePaymentResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  num? get code;
  @override
  @JsonKey(name: 'error_message')
  String? get errorMessage;
  @override
  PaymentWithVatData? get data;

  /// Create a copy of CalculatePaymentResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatePaymentResponseDtoImplCopyWith<_$CalculatePaymentResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
