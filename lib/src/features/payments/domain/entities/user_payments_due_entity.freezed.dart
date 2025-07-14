// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_payments_due_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPaymentsDueEntity _$UserPaymentsDueEntityFromJson(
    Map<String, dynamic> json) {
  return _UserPaymentsDueEntity.fromJson(json);
}

/// @nodoc
mixin _$UserPaymentsDueEntity {
  @JsonKey(name: 'request_id')
  String? get requestId => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;
  int? get totalpage => throw _privateConstructorUsedError;
  List<PaymentsDueDatum>? get data => throw _privateConstructorUsedError;

  /// Serializes this UserPaymentsDueEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPaymentsDueEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPaymentsDueEntityCopyWith<UserPaymentsDueEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPaymentsDueEntityCopyWith<$Res> {
  factory $UserPaymentsDueEntityCopyWith(UserPaymentsDueEntity value,
          $Res Function(UserPaymentsDueEntity) then) =
      _$UserPaymentsDueEntityCopyWithImpl<$Res, UserPaymentsDueEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      int? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      int? totalpage,
      List<PaymentsDueDatum>? data});
}

/// @nodoc
class _$UserPaymentsDueEntityCopyWithImpl<$Res,
        $Val extends UserPaymentsDueEntity>
    implements $UserPaymentsDueEntityCopyWith<$Res> {
  _$UserPaymentsDueEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPaymentsDueEntity
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
              as List<PaymentsDueDatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPaymentsDueEntityImplCopyWith<$Res>
    implements $UserPaymentsDueEntityCopyWith<$Res> {
  factory _$$UserPaymentsDueEntityImplCopyWith(
          _$UserPaymentsDueEntityImpl value,
          $Res Function(_$UserPaymentsDueEntityImpl) then) =
      __$$UserPaymentsDueEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') String? requestId,
      int? code,
      @JsonKey(name: 'error_message') String? errorMessage,
      int? totalpage,
      List<PaymentsDueDatum>? data});
}

/// @nodoc
class __$$UserPaymentsDueEntityImplCopyWithImpl<$Res>
    extends _$UserPaymentsDueEntityCopyWithImpl<$Res,
        _$UserPaymentsDueEntityImpl>
    implements _$$UserPaymentsDueEntityImplCopyWith<$Res> {
  __$$UserPaymentsDueEntityImplCopyWithImpl(_$UserPaymentsDueEntityImpl _value,
      $Res Function(_$UserPaymentsDueEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPaymentsDueEntity
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
    return _then(_$UserPaymentsDueEntityImpl(
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
              as List<PaymentsDueDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPaymentsDueEntityImpl implements _UserPaymentsDueEntity {
  _$UserPaymentsDueEntityImpl(
      {@JsonKey(name: 'request_id') this.requestId,
      this.code,
      @JsonKey(name: 'error_message') this.errorMessage,
      this.totalpage,
      final List<PaymentsDueDatum>? data})
      : _data = data;

  factory _$UserPaymentsDueEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPaymentsDueEntityImplFromJson(json);

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
  final List<PaymentsDueDatum>? _data;
  @override
  List<PaymentsDueDatum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserPaymentsDueEntity(requestId: $requestId, code: $code, errorMessage: $errorMessage, totalpage: $totalpage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPaymentsDueEntityImpl &&
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

  /// Create a copy of UserPaymentsDueEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPaymentsDueEntityImplCopyWith<_$UserPaymentsDueEntityImpl>
      get copyWith => __$$UserPaymentsDueEntityImplCopyWithImpl<
          _$UserPaymentsDueEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPaymentsDueEntityImplToJson(
      this,
    );
  }
}

abstract class _UserPaymentsDueEntity implements UserPaymentsDueEntity {
  factory _UserPaymentsDueEntity(
      {@JsonKey(name: 'request_id') final String? requestId,
      final int? code,
      @JsonKey(name: 'error_message') final String? errorMessage,
      final int? totalpage,
      final List<PaymentsDueDatum>? data}) = _$UserPaymentsDueEntityImpl;

  factory _UserPaymentsDueEntity.fromJson(Map<String, dynamic> json) =
      _$UserPaymentsDueEntityImpl.fromJson;

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
  List<PaymentsDueDatum>? get data;

  /// Create a copy of UserPaymentsDueEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPaymentsDueEntityImplCopyWith<_$UserPaymentsDueEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
