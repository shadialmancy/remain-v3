// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_statement_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecordStatementDto _$RecordStatementDtoFromJson(Map<String, dynamic> json) {
  return _RecordStatementDto.fromJson(json);
}

/// @nodoc
mixin _$RecordStatementDto {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  List<RecordStatementData>? get data => throw _privateConstructorUsedError;

  /// Serializes this RecordStatementDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecordStatementDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordStatementDtoCopyWith<RecordStatementDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordStatementDtoCopyWith<$Res> {
  factory $RecordStatementDtoCopyWith(
          RecordStatementDto value, $Res Function(RecordStatementDto) then) =
      _$RecordStatementDtoCopyWithImpl<$Res, RecordStatementDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      List<RecordStatementData>? data});
}

/// @nodoc
class _$RecordStatementDtoCopyWithImpl<$Res, $Val extends RecordStatementDto>
    implements $RecordStatementDtoCopyWith<$Res> {
  _$RecordStatementDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordStatementDto
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
              as List<RecordStatementData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordStatementDtoImplCopyWith<$Res>
    implements $RecordStatementDtoCopyWith<$Res> {
  factory _$$RecordStatementDtoImplCopyWith(_$RecordStatementDtoImpl value,
          $Res Function(_$RecordStatementDtoImpl) then) =
      __$$RecordStatementDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      List<RecordStatementData>? data});
}

/// @nodoc
class __$$RecordStatementDtoImplCopyWithImpl<$Res>
    extends _$RecordStatementDtoCopyWithImpl<$Res, _$RecordStatementDtoImpl>
    implements _$$RecordStatementDtoImplCopyWith<$Res> {
  __$$RecordStatementDtoImplCopyWithImpl(_$RecordStatementDtoImpl _value,
      $Res Function(_$RecordStatementDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordStatementDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$RecordStatementDtoImpl(
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
              as List<RecordStatementData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordStatementDtoImpl implements _RecordStatementDto {
  _$RecordStatementDtoImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      final List<RecordStatementData>? data})
      : _data = data;

  factory _$RecordStatementDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordStatementDtoImplFromJson(json);

  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  @override
  final num? code;
  @override
  @JsonKey(name: 'error_message')
  final String? errorMessage;
  final List<RecordStatementData>? _data;
  @override
  List<RecordStatementData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecordStatementDto(requestId: $requestId, code: $code, errorMessage: $errorMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordStatementDtoImpl &&
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

  /// Create a copy of RecordStatementDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordStatementDtoImplCopyWith<_$RecordStatementDtoImpl> get copyWith =>
      __$$RecordStatementDtoImplCopyWithImpl<_$RecordStatementDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordStatementDtoImplToJson(
      this,
    );
  }
}

abstract class _RecordStatementDto implements RecordStatementDto {
  factory _RecordStatementDto(
      {@JsonKey(name: 'request_id') final String? requestId,
      final num? code,
      @JsonKey(name: 'error_message') final String? errorMessage,
      final List<RecordStatementData>? data}) = _$RecordStatementDtoImpl;

  factory _RecordStatementDto.fromJson(Map<String, dynamic> json) =
      _$RecordStatementDtoImpl.fromJson;

  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  num? get code;
  @override
  @JsonKey(name: 'error_message')
  String? get errorMessage;
  @override
  List<RecordStatementData>? get data;

  /// Create a copy of RecordStatementDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordStatementDtoImplCopyWith<_$RecordStatementDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
