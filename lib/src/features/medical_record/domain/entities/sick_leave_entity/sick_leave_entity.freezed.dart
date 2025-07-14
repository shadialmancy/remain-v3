// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sick_leave_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SickLeaveEntity _$SickLeaveEntityFromJson(Map<String, dynamic> json) {
  return _SickLeaveEntity.fromJson(json);
}

/// @nodoc
mixin _$SickLeaveEntity {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  List<SickLeaveData>? get data => throw _privateConstructorUsedError;

  /// Serializes this SickLeaveEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SickLeaveEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SickLeaveEntityCopyWith<SickLeaveEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SickLeaveEntityCopyWith<$Res> {
  factory $SickLeaveEntityCopyWith(
          SickLeaveEntity value, $Res Function(SickLeaveEntity) then) =
      _$SickLeaveEntityCopyWithImpl<$Res, SickLeaveEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      List<SickLeaveData>? data});
}

/// @nodoc
class _$SickLeaveEntityCopyWithImpl<$Res, $Val extends SickLeaveEntity>
    implements $SickLeaveEntityCopyWith<$Res> {
  _$SickLeaveEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SickLeaveEntity
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
              as List<SickLeaveData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SickLeaveEntityImplCopyWith<$Res>
    implements $SickLeaveEntityCopyWith<$Res> {
  factory _$$SickLeaveEntityImplCopyWith(_$SickLeaveEntityImpl value,
          $Res Function(_$SickLeaveEntityImpl) then) =
      __$$SickLeaveEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      List<SickLeaveData>? data});
}

/// @nodoc
class __$$SickLeaveEntityImplCopyWithImpl<$Res>
    extends _$SickLeaveEntityCopyWithImpl<$Res, _$SickLeaveEntityImpl>
    implements _$$SickLeaveEntityImplCopyWith<$Res> {
  __$$SickLeaveEntityImplCopyWithImpl(
      _$SickLeaveEntityImpl _value, $Res Function(_$SickLeaveEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SickLeaveEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SickLeaveEntityImpl(
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
              as List<SickLeaveData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SickLeaveEntityImpl implements _SickLeaveEntity {
  _$SickLeaveEntityImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      final List<SickLeaveData>? data})
      : _data = data;

  factory _$SickLeaveEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SickLeaveEntityImplFromJson(json);

  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  @override
  final num? code;
  @override
  @JsonKey(name: 'error_message')
  final String? errorMessage;
  final List<SickLeaveData>? _data;
  @override
  List<SickLeaveData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SickLeaveEntity(requestId: $requestId, code: $code, errorMessage: $errorMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SickLeaveEntityImpl &&
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

  /// Create a copy of SickLeaveEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SickLeaveEntityImplCopyWith<_$SickLeaveEntityImpl> get copyWith =>
      __$$SickLeaveEntityImplCopyWithImpl<_$SickLeaveEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SickLeaveEntityImplToJson(
      this,
    );
  }
}

abstract class _SickLeaveEntity implements SickLeaveEntity {
  factory _SickLeaveEntity(
      {@JsonKey(name: 'request_id') final String? requestId,
      final num? code,
      @JsonKey(name: 'error_message') final String? errorMessage,
      final List<SickLeaveData>? data}) = _$SickLeaveEntityImpl;

  factory _SickLeaveEntity.fromJson(Map<String, dynamic> json) =
      _$SickLeaveEntityImpl.fromJson;

  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  num? get code;
  @override
  @JsonKey(name: 'error_message')
  String? get errorMessage;
  @override
  List<SickLeaveData>? get data;

  /// Create a copy of SickLeaveEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SickLeaveEntityImplCopyWith<_$SickLeaveEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
