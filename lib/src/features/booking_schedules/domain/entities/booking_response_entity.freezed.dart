// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingResponseEntity _$BookingResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _BookingResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$BookingResponseEntity {
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  BookingData? get data => throw _privateConstructorUsedError;

  /// Serializes this BookingResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingResponseEntityCopyWith<BookingResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingResponseEntityCopyWith<$Res> {
  factory $BookingResponseEntityCopyWith(BookingResponseEntity value,
          $Res Function(BookingResponseEntity) then) =
      _$BookingResponseEntityCopyWithImpl<$Res, BookingResponseEntity>;
  @useResult
  $Res call(
      {String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      @JsonKey(name: 'Data') BookingData? data});

  $BookingDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BookingResponseEntityCopyWithImpl<$Res,
        $Val extends BookingResponseEntity>
    implements $BookingResponseEntityCopyWith<$Res> {
  _$BookingResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingResponseEntity
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
              as BookingData?,
    ) as $Val);
  }

  /// Create a copy of BookingResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BookingDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingResponseEntityImplCopyWith<$Res>
    implements $BookingResponseEntityCopyWith<$Res> {
  factory _$$BookingResponseEntityImplCopyWith(
          _$BookingResponseEntityImpl value,
          $Res Function(_$BookingResponseEntityImpl) then) =
      __$$BookingResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      @JsonKey(name: 'Data') BookingData? data});

  @override
  $BookingDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BookingResponseEntityImplCopyWithImpl<$Res>
    extends _$BookingResponseEntityCopyWithImpl<$Res,
        _$BookingResponseEntityImpl>
    implements _$$BookingResponseEntityImplCopyWith<$Res> {
  __$$BookingResponseEntityImplCopyWithImpl(_$BookingResponseEntityImpl _value,
      $Res Function(_$BookingResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BookingResponseEntityImpl(
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
              as BookingData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingResponseEntityImpl extends _BookingResponseEntity {
  _$BookingResponseEntityImpl(
      {this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      @JsonKey(name: 'Data') this.data})
      : super._();

  factory _$BookingResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingResponseEntityImplFromJson(json);

  @override
  final String? requestId;
  @override
  final num? code;
  @override
  @JsonKey(name: 'error_message')
  final String? errorMessage;
  @override
  @JsonKey(name: 'Data')
  final BookingData? data;

  @override
  String toString() {
    return 'BookingResponseEntity(requestId: $requestId, code: $code, errorMessage: $errorMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingResponseEntityImpl &&
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

  /// Create a copy of BookingResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingResponseEntityImplCopyWith<_$BookingResponseEntityImpl>
      get copyWith => __$$BookingResponseEntityImplCopyWithImpl<
          _$BookingResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _BookingResponseEntity extends BookingResponseEntity {
  factory _BookingResponseEntity(
          {final String? requestId,
          final num? code,
          @JsonKey(name: 'error_message') final String? errorMessage,
          @JsonKey(name: 'Data') final BookingData? data}) =
      _$BookingResponseEntityImpl;
  _BookingResponseEntity._() : super._();

  factory _BookingResponseEntity.fromJson(Map<String, dynamic> json) =
      _$BookingResponseEntityImpl.fromJson;

  @override
  String? get requestId;
  @override
  num? get code;
  @override
  @JsonKey(name: 'error_message')
  String? get errorMessage;
  @override
  @JsonKey(name: 'Data')
  BookingData? get data;

  /// Create a copy of BookingResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingResponseEntityImplCopyWith<_$BookingResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
