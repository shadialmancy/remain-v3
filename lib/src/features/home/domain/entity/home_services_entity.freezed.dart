// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_services_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeServicesEntity _$HomeServicesEntityFromJson(Map<String, dynamic> json) {
  return _HomeServicesEntity.fromJson(json);
}

/// @nodoc
mixin _$HomeServicesEntity {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  int? get totalpage => throw _privateConstructorUsedError;
  List<ServicesDatum>? get data => throw _privateConstructorUsedError;

  /// Serializes this HomeServicesEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeServicesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeServicesEntityCopyWith<HomeServicesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeServicesEntityCopyWith<$Res> {
  factory $HomeServicesEntityCopyWith(
          HomeServicesEntity value, $Res Function(HomeServicesEntity) then) =
      _$HomeServicesEntityCopyWithImpl<$Res, HomeServicesEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      int? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      int? totalpage,
      List<ServicesDatum>? data});
}

/// @nodoc
class _$HomeServicesEntityCopyWithImpl<$Res, $Val extends HomeServicesEntity>
    implements $HomeServicesEntityCopyWith<$Res> {
  _$HomeServicesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeServicesEntity
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
              as int?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      totalpage: freezed == totalpage
          ? _value.totalpage
          : totalpage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ServicesDatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeServicesEntityImplCopyWith<$Res>
    implements $HomeServicesEntityCopyWith<$Res> {
  factory _$$HomeServicesEntityImplCopyWith(_$HomeServicesEntityImpl value,
          $Res Function(_$HomeServicesEntityImpl) then) =
      __$$HomeServicesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      int? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      int? totalpage,
      List<ServicesDatum>? data});
}

/// @nodoc
class __$$HomeServicesEntityImplCopyWithImpl<$Res>
    extends _$HomeServicesEntityCopyWithImpl<$Res, _$HomeServicesEntityImpl>
    implements _$$HomeServicesEntityImplCopyWith<$Res> {
  __$$HomeServicesEntityImplCopyWithImpl(_$HomeServicesEntityImpl _value,
      $Res Function(_$HomeServicesEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeServicesEntity
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
    return _then(_$HomeServicesEntityImpl(
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
      totalpage: freezed == totalpage
          ? _value.totalpage
          : totalpage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ServicesDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeServicesEntityImpl implements _HomeServicesEntity {
  _$HomeServicesEntityImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      this.totalpage,
      final List<ServicesDatum>? data})
      : _data = data;

  factory _$HomeServicesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeServicesEntityImplFromJson(json);

  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  @override
  final int? code;
  @override
  @JsonKey(name: 'error_message')
  final String? errorMessage;
  @override
  final int? totalpage;
  final List<ServicesDatum>? _data;
  @override
  List<ServicesDatum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeServicesEntity(requestId: $requestId, code: $code, errorMessage: $errorMessage, totalpage: $totalpage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeServicesEntityImpl &&
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

  /// Create a copy of HomeServicesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeServicesEntityImplCopyWith<_$HomeServicesEntityImpl> get copyWith =>
      __$$HomeServicesEntityImplCopyWithImpl<_$HomeServicesEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeServicesEntityImplToJson(
      this,
    );
  }
}

abstract class _HomeServicesEntity implements HomeServicesEntity {
  factory _HomeServicesEntity(
      {@JsonKey(name: 'request_id') final String? requestId,
      final int? code,
      @JsonKey(name: 'error_message') final String? errorMessage,
      final int? totalpage,
      final List<ServicesDatum>? data}) = _$HomeServicesEntityImpl;

  factory _HomeServicesEntity.fromJson(Map<String, dynamic> json) =
      _$HomeServicesEntityImpl.fromJson;

  @override
  @JsonKey(name: 'request_id')
  String? get requestId;
  @override
  int? get code;
  @override
  @JsonKey(name: 'error_message')
  String? get errorMessage;
  @override
  int? get totalpage;
  @override
  List<ServicesDatum>? get data;

  /// Create a copy of HomeServicesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeServicesEntityImplCopyWith<_$HomeServicesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
