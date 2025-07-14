// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceInfo _$ServiceInfoFromJson(Map<String, dynamic> json) {
  return _ServiceInfo.fromJson(json);
}

/// @nodoc
mixin _$ServiceInfo {
  @JsonKey(name: 'serviceID')
  num? get serviceId => throw _privateConstructorUsedError;
  String? get serviceCode => throw _privateConstructorUsedError;
  String? get serviceEngName => throw _privateConstructorUsedError;
  String? get serviceArbName => throw _privateConstructorUsedError;
  num? get servicePrice => throw _privateConstructorUsedError;

  /// Serializes this ServiceInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceInfoCopyWith<ServiceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceInfoCopyWith<$Res> {
  factory $ServiceInfoCopyWith(
          ServiceInfo value, $Res Function(ServiceInfo) then) =
      _$ServiceInfoCopyWithImpl<$Res, ServiceInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'serviceID') num? serviceId,
      String? serviceCode,
      String? serviceEngName,
      String? serviceArbName,
      num? servicePrice});
}

/// @nodoc
class _$ServiceInfoCopyWithImpl<$Res, $Val extends ServiceInfo>
    implements $ServiceInfoCopyWith<$Res> {
  _$ServiceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = freezed,
    Object? serviceCode = freezed,
    Object? serviceEngName = freezed,
    Object? serviceArbName = freezed,
    Object? servicePrice = freezed,
  }) {
    return _then(_value.copyWith(
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as num?,
      serviceCode: freezed == serviceCode
          ? _value.serviceCode
          : serviceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceEngName: freezed == serviceEngName
          ? _value.serviceEngName
          : serviceEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceArbName: freezed == serviceArbName
          ? _value.serviceArbName
          : serviceArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      servicePrice: freezed == servicePrice
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceInfoImplCopyWith<$Res>
    implements $ServiceInfoCopyWith<$Res> {
  factory _$$ServiceInfoImplCopyWith(
          _$ServiceInfoImpl value, $Res Function(_$ServiceInfoImpl) then) =
      __$$ServiceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'serviceID') num? serviceId,
      String? serviceCode,
      String? serviceEngName,
      String? serviceArbName,
      num? servicePrice});
}

/// @nodoc
class __$$ServiceInfoImplCopyWithImpl<$Res>
    extends _$ServiceInfoCopyWithImpl<$Res, _$ServiceInfoImpl>
    implements _$$ServiceInfoImplCopyWith<$Res> {
  __$$ServiceInfoImplCopyWithImpl(
      _$ServiceInfoImpl _value, $Res Function(_$ServiceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = freezed,
    Object? serviceCode = freezed,
    Object? serviceEngName = freezed,
    Object? serviceArbName = freezed,
    Object? servicePrice = freezed,
  }) {
    return _then(_$ServiceInfoImpl(
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as num?,
      serviceCode: freezed == serviceCode
          ? _value.serviceCode
          : serviceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceEngName: freezed == serviceEngName
          ? _value.serviceEngName
          : serviceEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceArbName: freezed == serviceArbName
          ? _value.serviceArbName
          : serviceArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      servicePrice: freezed == servicePrice
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceInfoImpl implements _ServiceInfo {
  _$ServiceInfoImpl(
      {@JsonKey(name: 'serviceID') this.serviceId,
      this.serviceCode,
      this.serviceEngName,
      this.serviceArbName,
      this.servicePrice});

  factory _$ServiceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceInfoImplFromJson(json);

  @override
  @JsonKey(name: 'serviceID')
  final num? serviceId;
  @override
  final String? serviceCode;
  @override
  final String? serviceEngName;
  @override
  final String? serviceArbName;
  @override
  final num? servicePrice;

  @override
  String toString() {
    return 'ServiceInfo(serviceId: $serviceId, serviceCode: $serviceCode, serviceEngName: $serviceEngName, serviceArbName: $serviceArbName, servicePrice: $servicePrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceInfoImpl &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.serviceCode, serviceCode) ||
                other.serviceCode == serviceCode) &&
            (identical(other.serviceEngName, serviceEngName) ||
                other.serviceEngName == serviceEngName) &&
            (identical(other.serviceArbName, serviceArbName) ||
                other.serviceArbName == serviceArbName) &&
            (identical(other.servicePrice, servicePrice) ||
                other.servicePrice == servicePrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, serviceId, serviceCode,
      serviceEngName, serviceArbName, servicePrice);

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceInfoImplCopyWith<_$ServiceInfoImpl> get copyWith =>
      __$$ServiceInfoImplCopyWithImpl<_$ServiceInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceInfoImplToJson(
      this,
    );
  }
}

abstract class _ServiceInfo implements ServiceInfo {
  factory _ServiceInfo(
      {@JsonKey(name: 'serviceID') final num? serviceId,
      final String? serviceCode,
      final String? serviceEngName,
      final String? serviceArbName,
      final num? servicePrice}) = _$ServiceInfoImpl;

  factory _ServiceInfo.fromJson(Map<String, dynamic> json) =
      _$ServiceInfoImpl.fromJson;

  @override
  @JsonKey(name: 'serviceID')
  num? get serviceId;
  @override
  String? get serviceCode;
  @override
  String? get serviceEngName;
  @override
  String? get serviceArbName;
  @override
  num? get servicePrice;

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceInfoImplCopyWith<_$ServiceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
