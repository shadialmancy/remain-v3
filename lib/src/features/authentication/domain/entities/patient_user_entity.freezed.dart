// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientUserEntity _$PatientUserEntityFromJson(Map<String, dynamic> json) {
  return _PatientUserEntity.fromJson(json);
}

/// @nodoc
mixin _$PatientUserEntity {
  String? get requestId => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  PatientInfo? get data => throw _privateConstructorUsedError;

  /// Serializes this PatientUserEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientUserEntityCopyWith<PatientUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientUserEntityCopyWith<$Res> {
  factory $PatientUserEntityCopyWith(
          PatientUserEntity value, $Res Function(PatientUserEntity) then) =
      _$PatientUserEntityCopyWithImpl<$Res, PatientUserEntity>;
  @useResult
  $Res call(
      {String? requestId, int? code, String? errorMessage, PatientInfo? data});

  $PatientInfoCopyWith<$Res>? get data;
}

/// @nodoc
class _$PatientUserEntityCopyWithImpl<$Res, $Val extends PatientUserEntity>
    implements $PatientUserEntityCopyWith<$Res> {
  _$PatientUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientUserEntity
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
              as int?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PatientInfo?,
    ) as $Val);
  }

  /// Create a copy of PatientUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PatientInfoCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PatientInfoCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientUserEntityImplCopyWith<$Res>
    implements $PatientUserEntityCopyWith<$Res> {
  factory _$$PatientUserEntityImplCopyWith(_$PatientUserEntityImpl value,
          $Res Function(_$PatientUserEntityImpl) then) =
      __$$PatientUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? requestId, int? code, String? errorMessage, PatientInfo? data});

  @override
  $PatientInfoCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PatientUserEntityImplCopyWithImpl<$Res>
    extends _$PatientUserEntityCopyWithImpl<$Res, _$PatientUserEntityImpl>
    implements _$$PatientUserEntityImplCopyWith<$Res> {
  __$$PatientUserEntityImplCopyWithImpl(_$PatientUserEntityImpl _value,
      $Res Function(_$PatientUserEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PatientUserEntityImpl(
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PatientInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientUserEntityImpl extends _PatientUserEntity {
  _$PatientUserEntityImpl(
      {this.requestId, this.code, this.errorMessage, this.data})
      : super._();

  factory _$PatientUserEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientUserEntityImplFromJson(json);

  @override
  final String? requestId;
  @override
  final int? code;
  @override
  final String? errorMessage;
  @override
  final PatientInfo? data;

  @override
  String toString() {
    return 'PatientUserEntity(requestId: $requestId, code: $code, errorMessage: $errorMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientUserEntityImpl &&
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

  /// Create a copy of PatientUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientUserEntityImplCopyWith<_$PatientUserEntityImpl> get copyWith =>
      __$$PatientUserEntityImplCopyWithImpl<_$PatientUserEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientUserEntityImplToJson(
      this,
    );
  }
}

abstract class _PatientUserEntity extends PatientUserEntity {
  factory _PatientUserEntity(
      {final String? requestId,
      final int? code,
      final String? errorMessage,
      final PatientInfo? data}) = _$PatientUserEntityImpl;
  _PatientUserEntity._() : super._();

  factory _PatientUserEntity.fromJson(Map<String, dynamic> json) =
      _$PatientUserEntityImpl.fromJson;

  @override
  String? get requestId;
  @override
  int? get code;
  @override
  String? get errorMessage;
  @override
  PatientInfo? get data;

  /// Create a copy of PatientUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientUserEntityImplCopyWith<_$PatientUserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
