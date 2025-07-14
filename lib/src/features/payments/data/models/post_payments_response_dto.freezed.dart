// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_payments_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostPaymentsResponseDto _$PostPaymentsResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _PostPaymentsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$PostPaymentsResponseDto {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this PostPaymentsResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostPaymentsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostPaymentsResponseDtoCopyWith<PostPaymentsResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPaymentsResponseDtoCopyWith<$Res> {
  factory $PostPaymentsResponseDtoCopyWith(PostPaymentsResponseDto value,
          $Res Function(PostPaymentsResponseDto) then) =
      _$PostPaymentsResponseDtoCopyWithImpl<$Res, PostPaymentsResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      String? message});
}

/// @nodoc
class _$PostPaymentsResponseDtoCopyWithImpl<$Res,
        $Val extends PostPaymentsResponseDto>
    implements $PostPaymentsResponseDtoCopyWith<$Res> {
  _$PostPaymentsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostPaymentsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? message = freezed,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostPaymentsResponseDtoImplCopyWith<$Res>
    implements $PostPaymentsResponseDtoCopyWith<$Res> {
  factory _$$PostPaymentsResponseDtoImplCopyWith(
          _$PostPaymentsResponseDtoImpl value,
          $Res Function(_$PostPaymentsResponseDtoImpl) then) =
      __$$PostPaymentsResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      String? message});
}

/// @nodoc
class __$$PostPaymentsResponseDtoImplCopyWithImpl<$Res>
    extends _$PostPaymentsResponseDtoCopyWithImpl<$Res,
        _$PostPaymentsResponseDtoImpl>
    implements _$$PostPaymentsResponseDtoImplCopyWith<$Res> {
  __$$PostPaymentsResponseDtoImplCopyWithImpl(
      _$PostPaymentsResponseDtoImpl _value,
      $Res Function(_$PostPaymentsResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostPaymentsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PostPaymentsResponseDtoImpl(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as num?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostPaymentsResponseDtoImpl implements _PostPaymentsResponseDto {
  _$PostPaymentsResponseDtoImpl(
      {@JsonKey(name: 'request_id') this.requestId, this.code, this.message});

  factory _$PostPaymentsResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostPaymentsResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  @override
  final num? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'PostPaymentsResponseDto(requestId: $requestId, code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPaymentsResponseDtoImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, code, message);

  /// Create a copy of PostPaymentsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPaymentsResponseDtoImplCopyWith<_$PostPaymentsResponseDtoImpl>
      get copyWith => __$$PostPaymentsResponseDtoImplCopyWithImpl<
          _$PostPaymentsResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPaymentsResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _PostPaymentsResponseDto implements PostPaymentsResponseDto {
  factory _PostPaymentsResponseDto(
      {@JsonKey(name: 'request_id') final String? requestId,
      final num? code,
      final String? message}) = _$PostPaymentsResponseDtoImpl;

  factory _PostPaymentsResponseDto.fromJson(Map<String, dynamic> json) =
      _$PostPaymentsResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  num? get code;
  @override
  String? get message;

  /// Create a copy of PostPaymentsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostPaymentsResponseDtoImplCopyWith<_$PostPaymentsResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
