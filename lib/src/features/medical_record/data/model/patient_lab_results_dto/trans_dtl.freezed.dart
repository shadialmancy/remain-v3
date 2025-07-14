// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trans_dtl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransDtl _$TransDtlFromJson(Map<String, dynamic> json) {
  return _TransDtl.fromJson(json);
}

/// @nodoc
mixin _$TransDtl {
  @JsonKey(name: 'dtlID')
  num? get dtlId => throw _privateConstructorUsedError;
  String? get serviceArbName => throw _privateConstructorUsedError;
  String? get serviceEngName => throw _privateConstructorUsedError;

  /// Serializes this TransDtl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransDtl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransDtlCopyWith<TransDtl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransDtlCopyWith<$Res> {
  factory $TransDtlCopyWith(TransDtl value, $Res Function(TransDtl) then) =
      _$TransDtlCopyWithImpl<$Res, TransDtl>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dtlID') num? dtlId,
      String? serviceArbName,
      String? serviceEngName});
}

/// @nodoc
class _$TransDtlCopyWithImpl<$Res, $Val extends TransDtl>
    implements $TransDtlCopyWith<$Res> {
  _$TransDtlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransDtl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dtlId = freezed,
    Object? serviceArbName = freezed,
    Object? serviceEngName = freezed,
  }) {
    return _then(_value.copyWith(
      dtlId: freezed == dtlId
          ? _value.dtlId
          : dtlId // ignore: cast_nullable_to_non_nullable
              as num?,
      serviceArbName: freezed == serviceArbName
          ? _value.serviceArbName
          : serviceArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceEngName: freezed == serviceEngName
          ? _value.serviceEngName
          : serviceEngName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransDtlImplCopyWith<$Res>
    implements $TransDtlCopyWith<$Res> {
  factory _$$TransDtlImplCopyWith(
          _$TransDtlImpl value, $Res Function(_$TransDtlImpl) then) =
      __$$TransDtlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dtlID') num? dtlId,
      String? serviceArbName,
      String? serviceEngName});
}

/// @nodoc
class __$$TransDtlImplCopyWithImpl<$Res>
    extends _$TransDtlCopyWithImpl<$Res, _$TransDtlImpl>
    implements _$$TransDtlImplCopyWith<$Res> {
  __$$TransDtlImplCopyWithImpl(
      _$TransDtlImpl _value, $Res Function(_$TransDtlImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransDtl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dtlId = freezed,
    Object? serviceArbName = freezed,
    Object? serviceEngName = freezed,
  }) {
    return _then(_$TransDtlImpl(
      dtlId: freezed == dtlId
          ? _value.dtlId
          : dtlId // ignore: cast_nullable_to_non_nullable
              as num?,
      serviceArbName: freezed == serviceArbName
          ? _value.serviceArbName
          : serviceArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceEngName: freezed == serviceEngName
          ? _value.serviceEngName
          : serviceEngName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransDtlImpl implements _TransDtl {
  _$TransDtlImpl(
      {@JsonKey(name: 'dtlID') this.dtlId,
      this.serviceArbName,
      this.serviceEngName});

  factory _$TransDtlImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransDtlImplFromJson(json);

  @override
  @JsonKey(name: 'dtlID')
  final num? dtlId;
  @override
  final String? serviceArbName;
  @override
  final String? serviceEngName;

  @override
  String toString() {
    return 'TransDtl(dtlId: $dtlId, serviceArbName: $serviceArbName, serviceEngName: $serviceEngName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransDtlImpl &&
            (identical(other.dtlId, dtlId) || other.dtlId == dtlId) &&
            (identical(other.serviceArbName, serviceArbName) ||
                other.serviceArbName == serviceArbName) &&
            (identical(other.serviceEngName, serviceEngName) ||
                other.serviceEngName == serviceEngName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dtlId, serviceArbName, serviceEngName);

  /// Create a copy of TransDtl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransDtlImplCopyWith<_$TransDtlImpl> get copyWith =>
      __$$TransDtlImplCopyWithImpl<_$TransDtlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransDtlImplToJson(
      this,
    );
  }
}

abstract class _TransDtl implements TransDtl {
  factory _TransDtl(
      {@JsonKey(name: 'dtlID') final num? dtlId,
      final String? serviceArbName,
      final String? serviceEngName}) = _$TransDtlImpl;

  factory _TransDtl.fromJson(Map<String, dynamic> json) =
      _$TransDtlImpl.fromJson;

  @override
  @JsonKey(name: 'dtlID')
  num? get dtlId;
  @override
  String? get serviceArbName;
  @override
  String? get serviceEngName;

  /// Create a copy of TransDtl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransDtlImplCopyWith<_$TransDtlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
