// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculate_payment_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalculatePaymentResponseEntity _$CalculatePaymentResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _CalculatePaymentResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$CalculatePaymentResponseEntity {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  PaymentWithVatData? get data => throw _privateConstructorUsedError;

  /// Serializes this CalculatePaymentResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculatePaymentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatePaymentResponseEntityCopyWith<CalculatePaymentResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatePaymentResponseEntityCopyWith<$Res> {
  factory $CalculatePaymentResponseEntityCopyWith(
          CalculatePaymentResponseEntity value,
          $Res Function(CalculatePaymentResponseEntity) then) =
      _$CalculatePaymentResponseEntityCopyWithImpl<$Res,
          CalculatePaymentResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      PaymentWithVatData? data});

  $PaymentWithVatDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CalculatePaymentResponseEntityCopyWithImpl<$Res,
        $Val extends CalculatePaymentResponseEntity>
    implements $CalculatePaymentResponseEntityCopyWith<$Res> {
  _$CalculatePaymentResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatePaymentResponseEntity
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

  /// Create a copy of CalculatePaymentResponseEntity
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
abstract class _$$CalculatePaymentResponseEntityImplCopyWith<$Res>
    implements $CalculatePaymentResponseEntityCopyWith<$Res> {
  factory _$$CalculatePaymentResponseEntityImplCopyWith(
          _$CalculatePaymentResponseEntityImpl value,
          $Res Function(_$CalculatePaymentResponseEntityImpl) then) =
      __$$CalculatePaymentResponseEntityImplCopyWithImpl<$Res>;
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
class __$$CalculatePaymentResponseEntityImplCopyWithImpl<$Res>
    extends _$CalculatePaymentResponseEntityCopyWithImpl<$Res,
        _$CalculatePaymentResponseEntityImpl>
    implements _$$CalculatePaymentResponseEntityImplCopyWith<$Res> {
  __$$CalculatePaymentResponseEntityImplCopyWithImpl(
      _$CalculatePaymentResponseEntityImpl _value,
      $Res Function(_$CalculatePaymentResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatePaymentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CalculatePaymentResponseEntityImpl(
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
class _$CalculatePaymentResponseEntityImpl
    implements _CalculatePaymentResponseEntity {
  _$CalculatePaymentResponseEntityImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      this.data});

  factory _$CalculatePaymentResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CalculatePaymentResponseEntityImplFromJson(json);

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
    return 'CalculatePaymentResponseEntity(requestId: $requestId, code: $code, errorMessage: $errorMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatePaymentResponseEntityImpl &&
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

  /// Create a copy of CalculatePaymentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatePaymentResponseEntityImplCopyWith<
          _$CalculatePaymentResponseEntityImpl>
      get copyWith => __$$CalculatePaymentResponseEntityImplCopyWithImpl<
          _$CalculatePaymentResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatePaymentResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _CalculatePaymentResponseEntity
    implements CalculatePaymentResponseEntity {
  factory _CalculatePaymentResponseEntity(
      {@JsonKey(name: 'request_id') final String? requestId,
      final num? code,
      @JsonKey(name: 'error_message') final String? errorMessage,
      final PaymentWithVatData? data}) = _$CalculatePaymentResponseEntityImpl;

  factory _CalculatePaymentResponseEntity.fromJson(Map<String, dynamic> json) =
      _$CalculatePaymentResponseEntityImpl.fromJson;

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

  /// Create a copy of CalculatePaymentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatePaymentResponseEntityImplCopyWith<
          _$CalculatePaymentResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
