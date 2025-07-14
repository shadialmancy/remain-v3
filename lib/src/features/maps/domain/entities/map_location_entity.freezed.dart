// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MapLocationEntity _$MapLocationEntityFromJson(Map<String, dynamic> json) {
  return _MapLocationEntity.fromJson(json);
}

/// @nodoc
mixin _$MapLocationEntity {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  num? get totalpage => throw _privateConstructorUsedError;
  List<LocationData>? get data => throw _privateConstructorUsedError;

  /// Serializes this MapLocationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MapLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapLocationEntityCopyWith<MapLocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapLocationEntityCopyWith<$Res> {
  factory $MapLocationEntityCopyWith(
          MapLocationEntity value, $Res Function(MapLocationEntity) then) =
      _$MapLocationEntityCopyWithImpl<$Res, MapLocationEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      num? totalpage,
      List<LocationData>? data});
}

/// @nodoc
class _$MapLocationEntityCopyWithImpl<$Res, $Val extends MapLocationEntity>
    implements $MapLocationEntityCopyWith<$Res> {
  _$MapLocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapLocationEntity
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
              as List<LocationData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapLocationEntityImplCopyWith<$Res>
    implements $MapLocationEntityCopyWith<$Res> {
  factory _$$MapLocationEntityImplCopyWith(_$MapLocationEntityImpl value,
          $Res Function(_$MapLocationEntityImpl) then) =
      __$$MapLocationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      num? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      num? totalpage,
      List<LocationData>? data});
}

/// @nodoc
class __$$MapLocationEntityImplCopyWithImpl<$Res>
    extends _$MapLocationEntityCopyWithImpl<$Res, _$MapLocationEntityImpl>
    implements _$$MapLocationEntityImplCopyWith<$Res> {
  __$$MapLocationEntityImplCopyWithImpl(_$MapLocationEntityImpl _value,
      $Res Function(_$MapLocationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapLocationEntity
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
    return _then(_$MapLocationEntityImpl(
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
              as List<LocationData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapLocationEntityImpl implements _MapLocationEntity {
  _$MapLocationEntityImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      this.totalpage,
      final List<LocationData>? data})
      : _data = data;

  factory _$MapLocationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapLocationEntityImplFromJson(json);

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
  final List<LocationData>? _data;
  @override
  List<LocationData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MapLocationEntity(requestId: $requestId, code: $code, errorMessage: $errorMessage, totalpage: $totalpage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapLocationEntityImpl &&
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

  /// Create a copy of MapLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapLocationEntityImplCopyWith<_$MapLocationEntityImpl> get copyWith =>
      __$$MapLocationEntityImplCopyWithImpl<_$MapLocationEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapLocationEntityImplToJson(
      this,
    );
  }
}

abstract class _MapLocationEntity implements MapLocationEntity {
  factory _MapLocationEntity(
      {@JsonKey(name: 'request_id') final String? requestId,
      final num? code,
      @JsonKey(name: 'error_message') final String? errorMessage,
      final num? totalpage,
      final List<LocationData>? data}) = _$MapLocationEntityImpl;

  factory _MapLocationEntity.fromJson(Map<String, dynamic> json) =
      _$MapLocationEntityImpl.fromJson;

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
  List<LocationData>? get data;

  /// Create a copy of MapLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapLocationEntityImplCopyWith<_$MapLocationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
