// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_time_slots_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvailableTimeSlotsEntity _$AvailableTimeSlotsEntityFromJson(
    Map<String, dynamic> json) {
  return _AvailableTimeSlotsEntity.fromJson(json);
}

/// @nodoc
mixin _$AvailableTimeSlotsEntity {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  num? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Data? get data => throw _privateConstructorUsedError;

  /// Serializes this AvailableTimeSlotsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailableTimeSlotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailableTimeSlotsEntityCopyWith<AvailableTimeSlotsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableTimeSlotsEntityCopyWith<$Res> {
  factory $AvailableTimeSlotsEntityCopyWith(AvailableTimeSlotsEntity value,
          $Res Function(AvailableTimeSlotsEntity) then) =
      _$AvailableTimeSlotsEntityCopyWithImpl<$Res, AvailableTimeSlotsEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      @JsonKey(name: 'code') num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      @JsonKey(name: 'data') Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AvailableTimeSlotsEntityCopyWithImpl<$Res,
        $Val extends AvailableTimeSlotsEntity>
    implements $AvailableTimeSlotsEntityCopyWith<$Res> {
  _$AvailableTimeSlotsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailableTimeSlotsEntity
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

  /// Create a copy of AvailableTimeSlotsEntity
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
abstract class _$$AvailableTimeSlotsEntityImplCopyWith<$Res>
    implements $AvailableTimeSlotsEntityCopyWith<$Res> {
  factory _$$AvailableTimeSlotsEntityImplCopyWith(
          _$AvailableTimeSlotsEntityImpl value,
          $Res Function(_$AvailableTimeSlotsEntityImpl) then) =
      __$$AvailableTimeSlotsEntityImplCopyWithImpl<$Res>;
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
class __$$AvailableTimeSlotsEntityImplCopyWithImpl<$Res>
    extends _$AvailableTimeSlotsEntityCopyWithImpl<$Res,
        _$AvailableTimeSlotsEntityImpl>
    implements _$$AvailableTimeSlotsEntityImplCopyWith<$Res> {
  __$$AvailableTimeSlotsEntityImplCopyWithImpl(
      _$AvailableTimeSlotsEntityImpl _value,
      $Res Function(_$AvailableTimeSlotsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvailableTimeSlotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AvailableTimeSlotsEntityImpl(
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
class _$AvailableTimeSlotsEntityImpl extends _AvailableTimeSlotsEntity {
  _$AvailableTimeSlotsEntityImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      @JsonKey(name: 'data') this.data})
      : super._();

  factory _$AvailableTimeSlotsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableTimeSlotsEntityImplFromJson(json);

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
    return 'AvailableTimeSlotsEntity(requestId: $requestId, code: $code, errorMessage: $errorMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableTimeSlotsEntityImpl &&
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

  /// Create a copy of AvailableTimeSlotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableTimeSlotsEntityImplCopyWith<_$AvailableTimeSlotsEntityImpl>
      get copyWith => __$$AvailableTimeSlotsEntityImplCopyWithImpl<
          _$AvailableTimeSlotsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableTimeSlotsEntityImplToJson(
      this,
    );
  }
}

abstract class _AvailableTimeSlotsEntity extends AvailableTimeSlotsEntity {
  factory _AvailableTimeSlotsEntity(
          {@JsonKey(name: 'request_id') final String? requestId,
          @JsonKey(name: 'code') final num? code,
          @JsonKey(name: 'error_message') final String? errorMessage,
          @JsonKey(name: 'data') final Data? data}) =
      _$AvailableTimeSlotsEntityImpl;
  _AvailableTimeSlotsEntity._() : super._();

  factory _AvailableTimeSlotsEntity.fromJson(Map<String, dynamic> json) =
      _$AvailableTimeSlotsEntityImpl.fromJson;

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

  /// Create a copy of AvailableTimeSlotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailableTimeSlotsEntityImplCopyWith<_$AvailableTimeSlotsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
