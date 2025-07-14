// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MerchantUrl _$MerchantUrlFromJson(Map<String, dynamic> json) {
  return _MerchantUrl.fromJson(json);
}

/// @nodoc
mixin _$MerchantUrl {
  String? get cancel => throw _privateConstructorUsedError;
  String? get failure => throw _privateConstructorUsedError;
  String? get success => throw _privateConstructorUsedError;
  String? get notification => throw _privateConstructorUsedError;

  /// Serializes this MerchantUrl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MerchantUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerchantUrlCopyWith<MerchantUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantUrlCopyWith<$Res> {
  factory $MerchantUrlCopyWith(
          MerchantUrl value, $Res Function(MerchantUrl) then) =
      _$MerchantUrlCopyWithImpl<$Res, MerchantUrl>;
  @useResult
  $Res call(
      {String? cancel, String? failure, String? success, String? notification});
}

/// @nodoc
class _$MerchantUrlCopyWithImpl<$Res, $Val extends MerchantUrl>
    implements $MerchantUrlCopyWith<$Res> {
  _$MerchantUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchantUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cancel = freezed,
    Object? failure = freezed,
    Object? success = freezed,
    Object? notification = freezed,
  }) {
    return _then(_value.copyWith(
      cancel: freezed == cancel
          ? _value.cancel
          : cancel // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String?,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MerchantUrlImplCopyWith<$Res>
    implements $MerchantUrlCopyWith<$Res> {
  factory _$$MerchantUrlImplCopyWith(
          _$MerchantUrlImpl value, $Res Function(_$MerchantUrlImpl) then) =
      __$$MerchantUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? cancel, String? failure, String? success, String? notification});
}

/// @nodoc
class __$$MerchantUrlImplCopyWithImpl<$Res>
    extends _$MerchantUrlCopyWithImpl<$Res, _$MerchantUrlImpl>
    implements _$$MerchantUrlImplCopyWith<$Res> {
  __$$MerchantUrlImplCopyWithImpl(
      _$MerchantUrlImpl _value, $Res Function(_$MerchantUrlImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchantUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cancel = freezed,
    Object? failure = freezed,
    Object? success = freezed,
    Object? notification = freezed,
  }) {
    return _then(_$MerchantUrlImpl(
      cancel: freezed == cancel
          ? _value.cancel
          : cancel // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String?,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MerchantUrlImpl implements _MerchantUrl {
  _$MerchantUrlImpl(
      {this.cancel, this.failure, this.success, this.notification});

  factory _$MerchantUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantUrlImplFromJson(json);

  @override
  final String? cancel;
  @override
  final String? failure;
  @override
  final String? success;
  @override
  final String? notification;

  @override
  String toString() {
    return 'MerchantUrl(cancel: $cancel, failure: $failure, success: $success, notification: $notification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantUrlImpl &&
            (identical(other.cancel, cancel) || other.cancel == cancel) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cancel, failure, success, notification);

  /// Create a copy of MerchantUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantUrlImplCopyWith<_$MerchantUrlImpl> get copyWith =>
      __$$MerchantUrlImplCopyWithImpl<_$MerchantUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantUrlImplToJson(
      this,
    );
  }
}

abstract class _MerchantUrl implements MerchantUrl {
  factory _MerchantUrl(
      {final String? cancel,
      final String? failure,
      final String? success,
      final String? notification}) = _$MerchantUrlImpl;

  factory _MerchantUrl.fromJson(Map<String, dynamic> json) =
      _$MerchantUrlImpl.fromJson;

  @override
  String? get cancel;
  @override
  String? get failure;
  @override
  String? get success;
  @override
  String? get notification;

  /// Create a copy of MerchantUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerchantUrlImplCopyWith<_$MerchantUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
