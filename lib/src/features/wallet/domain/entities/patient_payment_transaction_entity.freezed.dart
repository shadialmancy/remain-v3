// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_payment_transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientPaymentTransactionsEntity _$PatientPaymentTransactionsEntityFromJson(
    Map<String, dynamic> json) {
  return _PatientPaymentTransactionsEntity.fromJson(json);
}

/// @nodoc
mixin _$PatientPaymentTransactionsEntity {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  List<PatientTransactionsData>? get data => throw _privateConstructorUsedError;

  /// Serializes this PatientPaymentTransactionsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientPaymentTransactionsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientPaymentTransactionsEntityCopyWith<PatientPaymentTransactionsEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientPaymentTransactionsEntityCopyWith<$Res> {
  factory $PatientPaymentTransactionsEntityCopyWith(
          PatientPaymentTransactionsEntity value,
          $Res Function(PatientPaymentTransactionsEntity) then) =
      _$PatientPaymentTransactionsEntityCopyWithImpl<$Res,
          PatientPaymentTransactionsEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      List<PatientTransactionsData>? data});
}

/// @nodoc
class _$PatientPaymentTransactionsEntityCopyWithImpl<$Res,
        $Val extends PatientPaymentTransactionsEntity>
    implements $PatientPaymentTransactionsEntityCopyWith<$Res> {
  _$PatientPaymentTransactionsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientPaymentTransactionsEntity
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
              as List<PatientTransactionsData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientPaymentTransactionsEntityImplCopyWith<$Res>
    implements $PatientPaymentTransactionsEntityCopyWith<$Res> {
  factory _$$PatientPaymentTransactionsEntityImplCopyWith(
          _$PatientPaymentTransactionsEntityImpl value,
          $Res Function(_$PatientPaymentTransactionsEntityImpl) then) =
      __$$PatientPaymentTransactionsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      List<PatientTransactionsData>? data});
}

/// @nodoc
class __$$PatientPaymentTransactionsEntityImplCopyWithImpl<$Res>
    extends _$PatientPaymentTransactionsEntityCopyWithImpl<$Res,
        _$PatientPaymentTransactionsEntityImpl>
    implements _$$PatientPaymentTransactionsEntityImplCopyWith<$Res> {
  __$$PatientPaymentTransactionsEntityImplCopyWithImpl(
      _$PatientPaymentTransactionsEntityImpl _value,
      $Res Function(_$PatientPaymentTransactionsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientPaymentTransactionsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PatientPaymentTransactionsEntityImpl(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PatientTransactionsData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientPaymentTransactionsEntityImpl
    implements _PatientPaymentTransactionsEntity {
  _$PatientPaymentTransactionsEntityImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      final List<PatientTransactionsData>? data})
      : _data = data;

  factory _$PatientPaymentTransactionsEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PatientPaymentTransactionsEntityImplFromJson(json);

  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  @override
  final num? code;
  @override
  @JsonKey(name: 'error_message')
  final String? errorMessage;
  final List<PatientTransactionsData>? _data;
  @override
  List<PatientTransactionsData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PatientPaymentTransactionsEntity(requestId: $requestId, code: $code, errorMessage: $errorMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientPaymentTransactionsEntityImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, code, errorMessage,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of PatientPaymentTransactionsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientPaymentTransactionsEntityImplCopyWith<
          _$PatientPaymentTransactionsEntityImpl>
      get copyWith => __$$PatientPaymentTransactionsEntityImplCopyWithImpl<
          _$PatientPaymentTransactionsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientPaymentTransactionsEntityImplToJson(
      this,
    );
  }
}

abstract class _PatientPaymentTransactionsEntity
    implements PatientPaymentTransactionsEntity {
  factory _PatientPaymentTransactionsEntity(
          {@JsonKey(name: 'request_id') final String? requestId,
          final num? code,
          @JsonKey(name: 'error_message') final String? errorMessage,
          final List<PatientTransactionsData>? data}) =
      _$PatientPaymentTransactionsEntityImpl;

  factory _PatientPaymentTransactionsEntity.fromJson(
          Map<String, dynamic> json) =
      _$PatientPaymentTransactionsEntityImpl.fromJson;

  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  num? get code;
  @override
  @JsonKey(name: 'error_message')
  String? get errorMessage;
  @override
  List<PatientTransactionsData>? get data;

  /// Create a copy of PatientPaymentTransactionsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientPaymentTransactionsEntityImplCopyWith<
          _$PatientPaymentTransactionsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
