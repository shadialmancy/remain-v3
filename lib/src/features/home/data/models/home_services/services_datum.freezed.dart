// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServicesDatum _$ServicesDatumFromJson(Map<String, dynamic> json) {
  return _ServicesDatum.fromJson(json);
}

/// @nodoc
mixin _$ServicesDatum {
  String? get serviceGroupName => throw _privateConstructorUsedError;
  @JsonKey(name: 'serviceGroupNameEN')
  String? get serviceGroupNameEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_Count')
  int? get serviceCount => throw _privateConstructorUsedError;

  /// Serializes this ServicesDatum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServicesDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServicesDatumCopyWith<ServicesDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesDatumCopyWith<$Res> {
  factory $ServicesDatumCopyWith(
          ServicesDatum value, $Res Function(ServicesDatum) then) =
      _$ServicesDatumCopyWithImpl<$Res, ServicesDatum>;
  @useResult
  $Res call(
      {String? serviceGroupName,
      @JsonKey(name: 'serviceGroupNameEN') String? serviceGroupNameEn,
      @JsonKey(name: 'service_Count') int? serviceCount});
}

/// @nodoc
class _$ServicesDatumCopyWithImpl<$Res, $Val extends ServicesDatum>
    implements $ServicesDatumCopyWith<$Res> {
  _$ServicesDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServicesDatum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceGroupName = freezed,
    Object? serviceGroupNameEn = freezed,
    Object? serviceCount = freezed,
  }) {
    return _then(_value.copyWith(
      serviceGroupName: freezed == serviceGroupName
          ? _value.serviceGroupName
          : serviceGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceGroupNameEn: freezed == serviceGroupNameEn
          ? _value.serviceGroupNameEn
          : serviceGroupNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceCount: freezed == serviceCount
          ? _value.serviceCount
          : serviceCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServicesDatumImplCopyWith<$Res>
    implements $ServicesDatumCopyWith<$Res> {
  factory _$$ServicesDatumImplCopyWith(
          _$ServicesDatumImpl value, $Res Function(_$ServicesDatumImpl) then) =
      __$$ServicesDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? serviceGroupName,
      @JsonKey(name: 'serviceGroupNameEN') String? serviceGroupNameEn,
      @JsonKey(name: 'service_Count') int? serviceCount});
}

/// @nodoc
class __$$ServicesDatumImplCopyWithImpl<$Res>
    extends _$ServicesDatumCopyWithImpl<$Res, _$ServicesDatumImpl>
    implements _$$ServicesDatumImplCopyWith<$Res> {
  __$$ServicesDatumImplCopyWithImpl(
      _$ServicesDatumImpl _value, $Res Function(_$ServicesDatumImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesDatum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceGroupName = freezed,
    Object? serviceGroupNameEn = freezed,
    Object? serviceCount = freezed,
  }) {
    return _then(_$ServicesDatumImpl(
      serviceGroupName: freezed == serviceGroupName
          ? _value.serviceGroupName
          : serviceGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceGroupNameEn: freezed == serviceGroupNameEn
          ? _value.serviceGroupNameEn
          : serviceGroupNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceCount: freezed == serviceCount
          ? _value.serviceCount
          : serviceCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServicesDatumImpl implements _ServicesDatum {
  _$ServicesDatumImpl(
      {this.serviceGroupName,
      @JsonKey(name: 'serviceGroupNameEN') this.serviceGroupNameEn,
      @JsonKey(name: 'service_Count') this.serviceCount});

  factory _$ServicesDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServicesDatumImplFromJson(json);

  @override
  final String? serviceGroupName;
  @override
  @JsonKey(name: 'serviceGroupNameEN')
  final String? serviceGroupNameEn;
  @override
  @JsonKey(name: 'service_Count')
  final int? serviceCount;

  @override
  String toString() {
    return 'ServicesDatum(serviceGroupName: $serviceGroupName, serviceGroupNameEn: $serviceGroupNameEn, serviceCount: $serviceCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicesDatumImpl &&
            (identical(other.serviceGroupName, serviceGroupName) ||
                other.serviceGroupName == serviceGroupName) &&
            (identical(other.serviceGroupNameEn, serviceGroupNameEn) ||
                other.serviceGroupNameEn == serviceGroupNameEn) &&
            (identical(other.serviceCount, serviceCount) ||
                other.serviceCount == serviceCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, serviceGroupName, serviceGroupNameEn, serviceCount);

  /// Create a copy of ServicesDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicesDatumImplCopyWith<_$ServicesDatumImpl> get copyWith =>
      __$$ServicesDatumImplCopyWithImpl<_$ServicesDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServicesDatumImplToJson(
      this,
    );
  }
}

abstract class _ServicesDatum implements ServicesDatum {
  factory _ServicesDatum(
          {final String? serviceGroupName,
          @JsonKey(name: 'serviceGroupNameEN') final String? serviceGroupNameEn,
          @JsonKey(name: 'service_Count') final int? serviceCount}) =
      _$ServicesDatumImpl;

  factory _ServicesDatum.fromJson(Map<String, dynamic> json) =
      _$ServicesDatumImpl.fromJson;

  @override
  String? get serviceGroupName;
  @override
  @JsonKey(name: 'serviceGroupNameEN')
  String? get serviceGroupNameEn;
  @override
  @JsonKey(name: 'service_Count')
  int? get serviceCount;

  /// Create a copy of ServicesDatum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServicesDatumImplCopyWith<_$ServicesDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
