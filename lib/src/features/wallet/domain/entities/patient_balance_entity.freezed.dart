// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_balance_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientBalanceEntity _$PatientBalanceEntityFromJson(Map<String, dynamic> json) {
  return _PatientBalanceEntity.fromJson(json);
}

/// @nodoc
mixin _$PatientBalanceEntity {
  String? get requestId => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<WalletData>? get walletData => throw _privateConstructorUsedError;

  /// Serializes this PatientBalanceEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientBalanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientBalanceEntityCopyWith<PatientBalanceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientBalanceEntityCopyWith<$Res> {
  factory $PatientBalanceEntityCopyWith(PatientBalanceEntity value,
          $Res Function(PatientBalanceEntity) then) =
      _$PatientBalanceEntityCopyWithImpl<$Res, PatientBalanceEntity>;
  @useResult
  $Res call(
      {String? requestId,
      num? code,
      String? errorMessage,
      List<WalletData>? walletData});
}

/// @nodoc
class _$PatientBalanceEntityCopyWithImpl<$Res,
        $Val extends PatientBalanceEntity>
    implements $PatientBalanceEntityCopyWith<$Res> {
  _$PatientBalanceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientBalanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? walletData = freezed,
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
      walletData: freezed == walletData
          ? _value.walletData
          : walletData // ignore: cast_nullable_to_non_nullable
              as List<WalletData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientBalanceEntityImplCopyWith<$Res>
    implements $PatientBalanceEntityCopyWith<$Res> {
  factory _$$PatientBalanceEntityImplCopyWith(_$PatientBalanceEntityImpl value,
          $Res Function(_$PatientBalanceEntityImpl) then) =
      __$$PatientBalanceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? requestId,
      num? code,
      String? errorMessage,
      List<WalletData>? walletData});
}

/// @nodoc
class __$$PatientBalanceEntityImplCopyWithImpl<$Res>
    extends _$PatientBalanceEntityCopyWithImpl<$Res, _$PatientBalanceEntityImpl>
    implements _$$PatientBalanceEntityImplCopyWith<$Res> {
  __$$PatientBalanceEntityImplCopyWithImpl(_$PatientBalanceEntityImpl _value,
      $Res Function(_$PatientBalanceEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientBalanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
    Object? errorMessage = freezed,
    Object? walletData = freezed,
  }) {
    return _then(_$PatientBalanceEntityImpl(
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
      walletData: freezed == walletData
          ? _value._walletData
          : walletData // ignore: cast_nullable_to_non_nullable
              as List<WalletData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientBalanceEntityImpl extends _PatientBalanceEntity {
  _$PatientBalanceEntityImpl(
      {this.requestId,
      this.code,
      this.errorMessage,
      final List<WalletData>? walletData})
      : _walletData = walletData,
        super._();

  factory _$PatientBalanceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientBalanceEntityImplFromJson(json);

  @override
  final String? requestId;
  @override
  final num? code;
  @override
  final String? errorMessage;
  final List<WalletData>? _walletData;
  @override
  List<WalletData>? get walletData {
    final value = _walletData;
    if (value == null) return null;
    if (_walletData is EqualUnmodifiableListView) return _walletData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PatientBalanceEntity(requestId: $requestId, code: $code, errorMessage: $errorMessage, walletData: $walletData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientBalanceEntityImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._walletData, _walletData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, code, errorMessage,
      const DeepCollectionEquality().hash(_walletData));

  /// Create a copy of PatientBalanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientBalanceEntityImplCopyWith<_$PatientBalanceEntityImpl>
      get copyWith =>
          __$$PatientBalanceEntityImplCopyWithImpl<_$PatientBalanceEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientBalanceEntityImplToJson(
      this,
    );
  }
}

abstract class _PatientBalanceEntity extends PatientBalanceEntity {
  factory _PatientBalanceEntity(
      {final String? requestId,
      final num? code,
      final String? errorMessage,
      final List<WalletData>? walletData}) = _$PatientBalanceEntityImpl;
  _PatientBalanceEntity._() : super._();

  factory _PatientBalanceEntity.fromJson(Map<String, dynamic> json) =
      _$PatientBalanceEntityImpl.fromJson;

  @override
  String? get requestId;
  @override
  num? get code;
  @override
  String? get errorMessage;
  @override
  List<WalletData>? get walletData;

  /// Create a copy of PatientBalanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientBalanceEntityImplCopyWith<_$PatientBalanceEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
