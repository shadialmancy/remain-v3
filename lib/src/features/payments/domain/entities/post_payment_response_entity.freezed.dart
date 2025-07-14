// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_payment_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostPaymentsResponseEntity _$PostPaymentsResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _PostPaymentsResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$PostPaymentsResponseEntity {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this PostPaymentsResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostPaymentsResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostPaymentsResponseEntityCopyWith<PostPaymentsResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPaymentsResponseEntityCopyWith<$Res> {
  factory $PostPaymentsResponseEntityCopyWith(PostPaymentsResponseEntity value,
          $Res Function(PostPaymentsResponseEntity) then) =
      _$PostPaymentsResponseEntityCopyWithImpl<$Res,
          PostPaymentsResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      String? message});
}

/// @nodoc
class _$PostPaymentsResponseEntityCopyWithImpl<$Res,
        $Val extends PostPaymentsResponseEntity>
    implements $PostPaymentsResponseEntityCopyWith<$Res> {
  _$PostPaymentsResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostPaymentsResponseEntity
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
abstract class _$$PostPaymentsResponseEntityImplCopyWith<$Res>
    implements $PostPaymentsResponseEntityCopyWith<$Res> {
  factory _$$PostPaymentsResponseEntityImplCopyWith(
          _$PostPaymentsResponseEntityImpl value,
          $Res Function(_$PostPaymentsResponseEntityImpl) then) =
      __$$PostPaymentsResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      String? message});
}

/// @nodoc
class __$$PostPaymentsResponseEntityImplCopyWithImpl<$Res>
    extends _$PostPaymentsResponseEntityCopyWithImpl<$Res,
        _$PostPaymentsResponseEntityImpl>
    implements _$$PostPaymentsResponseEntityImplCopyWith<$Res> {
  __$$PostPaymentsResponseEntityImplCopyWithImpl(
      _$PostPaymentsResponseEntityImpl _value,
      $Res Function(_$PostPaymentsResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostPaymentsResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PostPaymentsResponseEntityImpl(
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
class _$PostPaymentsResponseEntityImpl implements _PostPaymentsResponseEntity {
  _$PostPaymentsResponseEntityImpl(
      {@JsonKey(name: 'request_id') this.requestId, this.code, this.message});

  factory _$PostPaymentsResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostPaymentsResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  @override
  final num? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'PostPaymentsResponseEntity(requestId: $requestId, code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPaymentsResponseEntityImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, code, message);

  /// Create a copy of PostPaymentsResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPaymentsResponseEntityImplCopyWith<_$PostPaymentsResponseEntityImpl>
      get copyWith => __$$PostPaymentsResponseEntityImplCopyWithImpl<
          _$PostPaymentsResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPaymentsResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _PostPaymentsResponseEntity
    implements PostPaymentsResponseEntity {
  factory _PostPaymentsResponseEntity(
      {@JsonKey(name: 'request_id') final String? requestId,
      final num? code,
      final String? message}) = _$PostPaymentsResponseEntityImpl;

  factory _PostPaymentsResponseEntity.fromJson(Map<String, dynamic> json) =
      _$PostPaymentsResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  num? get code;
  @override
  String? get message;

  /// Create a copy of PostPaymentsResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostPaymentsResponseEntityImplCopyWith<_$PostPaymentsResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
