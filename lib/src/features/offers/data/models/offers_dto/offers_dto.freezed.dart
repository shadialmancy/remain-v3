// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffersDto _$OffersDtoFromJson(Map<String, dynamic> json) {
  return _OffersDto.fromJson(json);
}

/// @nodoc
mixin _$OffersDto {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  num? get totalpage => throw _privateConstructorUsedError;
  List<OfferData>? get data => throw _privateConstructorUsedError;

  /// Serializes this OffersDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OffersDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffersDtoCopyWith<OffersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersDtoCopyWith<$Res> {
  factory $OffersDtoCopyWith(OffersDto value, $Res Function(OffersDto) then) =
      _$OffersDtoCopyWithImpl<$Res, OffersDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      num? totalpage,
      List<OfferData>? data});
}

/// @nodoc
class _$OffersDtoCopyWithImpl<$Res, $Val extends OffersDto>
    implements $OffersDtoCopyWith<$Res> {
  _$OffersDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffersDto
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
              as num?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      totalpage: freezed == totalpage
          ? _value.totalpage
          : totalpage // ignore: cast_nullable_to_non_nullable
              as num?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OfferData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffersDtoImplCopyWith<$Res>
    implements $OffersDtoCopyWith<$Res> {
  factory _$$OffersDtoImplCopyWith(
          _$OffersDtoImpl value, $Res Function(_$OffersDtoImpl) then) =
      __$$OffersDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      num? totalpage,
      List<OfferData>? data});
}

/// @nodoc
class __$$OffersDtoImplCopyWithImpl<$Res>
    extends _$OffersDtoCopyWithImpl<$Res, _$OffersDtoImpl>
    implements _$$OffersDtoImplCopyWith<$Res> {
  __$$OffersDtoImplCopyWithImpl(
      _$OffersDtoImpl _value, $Res Function(_$OffersDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OffersDto
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
    return _then(_$OffersDtoImpl(
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
      totalpage: freezed == totalpage
          ? _value.totalpage
          : totalpage // ignore: cast_nullable_to_non_nullable
              as num?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OfferData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffersDtoImpl implements _OffersDto {
  _$OffersDtoImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      this.totalpage,
      final List<OfferData>? data})
      : _data = data;

  factory _$OffersDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffersDtoImplFromJson(json);

  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  @override
  final num? code;
  @override
  @JsonKey(name: 'error_message')
  final String? errorMessage;
  @override
  final num? totalpage;
  final List<OfferData>? _data;
  @override
  List<OfferData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OffersDto(requestId: $requestId, code: $code, errorMessage: $errorMessage, totalpage: $totalpage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersDtoImpl &&
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

  /// Create a copy of OffersDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersDtoImplCopyWith<_$OffersDtoImpl> get copyWith =>
      __$$OffersDtoImplCopyWithImpl<_$OffersDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffersDtoImplToJson(
      this,
    );
  }
}

abstract class _OffersDto implements OffersDto {
  factory _OffersDto(
      {@JsonKey(name: 'request_id') final String? requestId,
      final num? code,
      @JsonKey(name: 'error_message') final String? errorMessage,
      final num? totalpage,
      final List<OfferData>? data}) = _$OffersDtoImpl;

  factory _OffersDto.fromJson(Map<String, dynamic> json) =
      _$OffersDtoImpl.fromJson;

  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  num? get code;
  @override
  @JsonKey(name: 'error_message')
  String? get errorMessage;
  @override
  num? get totalpage;
  @override
  List<OfferData>? get data;

  /// Create a copy of OffersDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffersDtoImplCopyWith<_$OffersDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
