// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_payments_due_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPaymentsDueDto _$UserPaymentsDueDtoFromJson(Map<String, dynamic> json) {
  return _UserPaymentsDueDto.fromJson(json);
}

/// @nodoc
mixin _$UserPaymentsDueDto {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  int? get totalpage => throw _privateConstructorUsedError;
  List<PaymentsDueDatum>? get data => throw _privateConstructorUsedError;

  /// Serializes this UserPaymentsDueDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPaymentsDueDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPaymentsDueDtoCopyWith<UserPaymentsDueDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPaymentsDueDtoCopyWith<$Res> {
  factory $UserPaymentsDueDtoCopyWith(
          UserPaymentsDueDto value, $Res Function(UserPaymentsDueDto) then) =
      _$UserPaymentsDueDtoCopyWithImpl<$Res, UserPaymentsDueDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      int? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      int? totalpage,
      List<PaymentsDueDatum>? data});
}

/// @nodoc
class _$UserPaymentsDueDtoCopyWithImpl<$Res, $Val extends UserPaymentsDueDto>
    implements $UserPaymentsDueDtoCopyWith<$Res> {
  _$UserPaymentsDueDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPaymentsDueDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? totalpage = freezed,
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
              as int?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      totalpage: freezed == totalpage
          ? _value.totalpage
          : totalpage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PaymentsDueDatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPaymentsDueDtoImplCopyWith<$Res>
    implements $UserPaymentsDueDtoCopyWith<$Res> {
  factory _$$UserPaymentsDueDtoImplCopyWith(_$UserPaymentsDueDtoImpl value,
          $Res Function(_$UserPaymentsDueDtoImpl) then) =
      __$$UserPaymentsDueDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      int? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      int? totalpage,
      List<PaymentsDueDatum>? data});
}

/// @nodoc
class __$$UserPaymentsDueDtoImplCopyWithImpl<$Res>
    extends _$UserPaymentsDueDtoCopyWithImpl<$Res, _$UserPaymentsDueDtoImpl>
    implements _$$UserPaymentsDueDtoImplCopyWith<$Res> {
  __$$UserPaymentsDueDtoImplCopyWithImpl(_$UserPaymentsDueDtoImpl _value,
      $Res Function(_$UserPaymentsDueDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPaymentsDueDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? totalpage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserPaymentsDueDtoImpl(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      totalpage: freezed == totalpage
          ? _value.totalpage
          : totalpage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PaymentsDueDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPaymentsDueDtoImpl implements _UserPaymentsDueDto {
  _$UserPaymentsDueDtoImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      this.totalpage,
      final List<PaymentsDueDatum>? data})
      : _data = data;

  factory _$UserPaymentsDueDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPaymentsDueDtoImplFromJson(json);

  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  @override
  final int? code;
  @override
  @JsonKey(name: 'error_message')
  final String? errorMessage;
  @override
  final int? totalpage;
  final List<PaymentsDueDatum>? _data;
  @override
  List<PaymentsDueDatum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserPaymentsDueDto(requestId: $requestId, code: $code, errorMessage: $errorMessage, totalpage: $totalpage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPaymentsDueDtoImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.totalpage, totalpage) ||
                other.totalpage == totalpage) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, code, errorMessage,
      totalpage, const DeepCollectionEquality().hash(_data));

  /// Create a copy of UserPaymentsDueDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPaymentsDueDtoImplCopyWith<_$UserPaymentsDueDtoImpl> get copyWith =>
      __$$UserPaymentsDueDtoImplCopyWithImpl<_$UserPaymentsDueDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPaymentsDueDtoImplToJson(
      this,
    );
  }
}

abstract class _UserPaymentsDueDto implements UserPaymentsDueDto {
  factory _UserPaymentsDueDto(
      {@JsonKey(name: 'request_id') final String? requestId,
      final int? code,
      @JsonKey(name: 'error_message') final String? errorMessage,
      final int? totalpage,
      final List<PaymentsDueDatum>? data}) = _$UserPaymentsDueDtoImpl;

  factory _UserPaymentsDueDto.fromJson(Map<String, dynamic> json) =
      _$UserPaymentsDueDtoImpl.fromJson;

  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  int? get code;
  @override
  @JsonKey(name: 'error_message')
  String? get errorMessage;
  @override
  int? get totalpage;
  @override
  List<PaymentsDueDatum>? get data;

  /// Create a copy of UserPaymentsDueDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPaymentsDueDtoImplCopyWith<_$UserPaymentsDueDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
