// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_balance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientBalanceDto _$PatientBalanceDtoFromJson(Map<String, dynamic> json) {
  return _PatientBalanceDto.fromJson(json);
}

/// @nodoc
mixin _$PatientBalanceDto {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<WalletData>? get walletData => throw _privateConstructorUsedError;

  /// Serializes this PatientBalanceDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientBalanceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientBalanceDtoCopyWith<PatientBalanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientBalanceDtoCopyWith<$Res> {
  factory $PatientBalanceDtoCopyWith(
          PatientBalanceDto value, $Res Function(PatientBalanceDto) then) =
      _$PatientBalanceDtoCopyWithImpl<$Res, PatientBalanceDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      @JsonKey(name: 'data') List<WalletData>? walletData});
}

/// @nodoc
class _$PatientBalanceDtoCopyWithImpl<$Res, $Val extends PatientBalanceDto>
    implements $PatientBalanceDtoCopyWith<$Res> {
  _$PatientBalanceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientBalanceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? walletData = freezed,
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
      walletData: freezed == walletData
          ? _value.walletData
          : walletData // ignore: cast_nullable_to_non_nullable
              as List<WalletData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientBalanceDtoImplCopyWith<$Res>
    implements $PatientBalanceDtoCopyWith<$Res> {
  factory _$$PatientBalanceDtoImplCopyWith(_$PatientBalanceDtoImpl value,
          $Res Function(_$PatientBalanceDtoImpl) then) =
      __$$PatientBalanceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      @JsonKey(name: 'data') List<WalletData>? walletData});
}

/// @nodoc
class __$$PatientBalanceDtoImplCopyWithImpl<$Res>
    extends _$PatientBalanceDtoCopyWithImpl<$Res, _$PatientBalanceDtoImpl>
    implements _$$PatientBalanceDtoImplCopyWith<$Res> {
  __$$PatientBalanceDtoImplCopyWithImpl(_$PatientBalanceDtoImpl _value,
      $Res Function(_$PatientBalanceDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientBalanceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? walletData = freezed,
  }) {
    return _then(_$PatientBalanceDtoImpl(
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
      walletData: freezed == walletData
          ? _value._walletData
          : walletData // ignore: cast_nullable_to_non_nullable
              as List<WalletData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientBalanceDtoImpl implements _PatientBalanceDto {
  _$PatientBalanceDtoImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      @JsonKey(name: 'data') final List<WalletData>? walletData})
      : _walletData = walletData;

  factory _$PatientBalanceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientBalanceDtoImplFromJson(json);

  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  @override
  final num? code;
  @override
  @JsonKey(name: 'error_message')
  final String? errorMessage;
  final List<WalletData>? _walletData;
  @override
  @JsonKey(name: 'data')
  List<WalletData>? get walletData {
    final value = _walletData;
    if (value == null) return null;
    if (_walletData is EqualUnmodifiableListView) return _walletData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PatientBalanceDto(requestId: $requestId, code: $code, errorMessage: $errorMessage, walletData: $walletData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientBalanceDtoImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._walletData, _walletData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, code, errorMessage,
      const DeepCollectionEquality().hash(_walletData));

  /// Create a copy of PatientBalanceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientBalanceDtoImplCopyWith<_$PatientBalanceDtoImpl> get copyWith =>
      __$$PatientBalanceDtoImplCopyWithImpl<_$PatientBalanceDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientBalanceDtoImplToJson(
      this,
    );
  }
}

abstract class _PatientBalanceDto implements PatientBalanceDto {
  factory _PatientBalanceDto(
          {@JsonKey(name: 'request_id') final String? requestId,
          final num? code,
          @JsonKey(name: 'error_message') final String? errorMessage,
          @JsonKey(name: 'data') final List<WalletData>? walletData}) =
      _$PatientBalanceDtoImpl;

  factory _PatientBalanceDto.fromJson(Map<String, dynamic> json) =
      _$PatientBalanceDtoImpl.fromJson;

  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  num? get code;
  @override
  @JsonKey(name: 'error_message')
  String? get errorMessage;
  @override
  @JsonKey(name: 'data')
  List<WalletData>? get walletData;

  /// Create a copy of PatientBalanceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientBalanceDtoImplCopyWith<_$PatientBalanceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
