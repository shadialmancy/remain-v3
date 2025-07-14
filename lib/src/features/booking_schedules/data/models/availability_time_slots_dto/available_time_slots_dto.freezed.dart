// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_time_slots_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvailableTimeSlotsDto _$AvailableTimeSlotsDtoFromJson(
    Map<String, dynamic> json) {
  return _AvailableTimeSlotsDto.fromJson(json);
}

/// @nodoc
mixin _$AvailableTimeSlotsDto {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  num? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Data? get data => throw _privateConstructorUsedError;

  /// Serializes this AvailableTimeSlotsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailableTimeSlotsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailableTimeSlotsDtoCopyWith<AvailableTimeSlotsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableTimeSlotsDtoCopyWith<$Res> {
  factory $AvailableTimeSlotsDtoCopyWith(AvailableTimeSlotsDto value,
          $Res Function(AvailableTimeSlotsDto) then) =
      _$AvailableTimeSlotsDtoCopyWithImpl<$Res, AvailableTimeSlotsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      @JsonKey(name: 'code') num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      @JsonKey(name: 'data') Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AvailableTimeSlotsDtoCopyWithImpl<$Res,
        $Val extends AvailableTimeSlotsDto>
    implements $AvailableTimeSlotsDtoCopyWith<$Res> {
  _$AvailableTimeSlotsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailableTimeSlotsDto
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
              as Data?,
    ) as $Val);
  }

  /// Create a copy of AvailableTimeSlotsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AvailableTimeSlotsDtoImplCopyWith<$Res>
    implements $AvailableTimeSlotsDtoCopyWith<$Res> {
  factory _$$AvailableTimeSlotsDtoImplCopyWith(
          _$AvailableTimeSlotsDtoImpl value,
          $Res Function(_$AvailableTimeSlotsDtoImpl) then) =
      __$$AvailableTimeSlotsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      @JsonKey(name: 'code') num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      @JsonKey(name: 'data') Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AvailableTimeSlotsDtoImplCopyWithImpl<$Res>
    extends _$AvailableTimeSlotsDtoCopyWithImpl<$Res,
        _$AvailableTimeSlotsDtoImpl>
    implements _$$AvailableTimeSlotsDtoImplCopyWith<$Res> {
  __$$AvailableTimeSlotsDtoImplCopyWithImpl(_$AvailableTimeSlotsDtoImpl _value,
      $Res Function(_$AvailableTimeSlotsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvailableTimeSlotsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AvailableTimeSlotsDtoImpl(
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
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableTimeSlotsDtoImpl implements _AvailableTimeSlotsDto {
  _$AvailableTimeSlotsDtoImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      @JsonKey(name: 'data') this.data});

  factory _$AvailableTimeSlotsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableTimeSlotsDtoImplFromJson(json);

  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  @override
  @JsonKey(name: 'code')
  final num? code;
  @override
  @JsonKey(name: 'error_message')
  final String? errorMessage;
  @override
  @JsonKey(name: 'data')
  final Data? data;

  @override
  String toString() {
    return 'AvailableTimeSlotsDto(requestId: $requestId, code: $code, errorMessage: $errorMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableTimeSlotsDtoImpl &&
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

  /// Create a copy of AvailableTimeSlotsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableTimeSlotsDtoImplCopyWith<_$AvailableTimeSlotsDtoImpl>
      get copyWith => __$$AvailableTimeSlotsDtoImplCopyWithImpl<
          _$AvailableTimeSlotsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableTimeSlotsDtoImplToJson(
      this,
    );
  }
}

abstract class _AvailableTimeSlotsDto implements AvailableTimeSlotsDto {
  factory _AvailableTimeSlotsDto(
      {@JsonKey(name: 'request_id') final String? requestId,
      @JsonKey(name: 'code') final num? code,
      @JsonKey(name: 'error_message') final String? errorMessage,
      @JsonKey(name: 'data') final Data? data}) = _$AvailableTimeSlotsDtoImpl;

  factory _AvailableTimeSlotsDto.fromJson(Map<String, dynamic> json) =
      _$AvailableTimeSlotsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  @JsonKey(name: 'code')
  num? get code;
  @override
  @JsonKey(name: 'error_message')
  String? get errorMessage;
  @override
  @JsonKey(name: 'data')
  Data? get data;

  /// Create a copy of AvailableTimeSlotsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailableTimeSlotsDtoImplCopyWith<_$AvailableTimeSlotsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
