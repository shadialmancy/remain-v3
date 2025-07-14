// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_cart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfferCartEntity _$OfferCartEntityFromJson(Map<String, dynamic> json) {
  return _OfferCartEntity.fromJson(json);
}

/// @nodoc
mixin _$OfferCartEntity {
  List<OfferCartItem> get data => throw _privateConstructorUsedError;

  /// Serializes this OfferCartEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfferCartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferCartEntityCopyWith<OfferCartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCartEntityCopyWith<$Res> {
  factory $OfferCartEntityCopyWith(
          OfferCartEntity value, $Res Function(OfferCartEntity) then) =
      _$OfferCartEntityCopyWithImpl<$Res, OfferCartEntity>;
  @useResult
  $Res call({List<OfferCartItem> data});
}

/// @nodoc
class _$OfferCartEntityCopyWithImpl<$Res, $Val extends OfferCartEntity>
    implements $OfferCartEntityCopyWith<$Res> {
  _$OfferCartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferCartEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OfferCartItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferCartEntityImplCopyWith<$Res>
    implements $OfferCartEntityCopyWith<$Res> {
  factory _$$OfferCartEntityImplCopyWith(_$OfferCartEntityImpl value,
          $Res Function(_$OfferCartEntityImpl) then) =
      __$$OfferCartEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OfferCartItem> data});
}

/// @nodoc
class __$$OfferCartEntityImplCopyWithImpl<$Res>
    extends _$OfferCartEntityCopyWithImpl<$Res, _$OfferCartEntityImpl>
    implements _$$OfferCartEntityImplCopyWith<$Res> {
  __$$OfferCartEntityImplCopyWithImpl(
      _$OfferCartEntityImpl _value, $Res Function(_$OfferCartEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfferCartEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OfferCartEntityImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OfferCartItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferCartEntityImpl implements _OfferCartEntity {
  _$OfferCartEntityImpl({final List<OfferCartItem> data = const []})
      : _data = data;

  factory _$OfferCartEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferCartEntityImplFromJson(json);

  final List<OfferCartItem> _data;
  @override
  @JsonKey()
  List<OfferCartItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'OfferCartEntity(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferCartEntityImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of OfferCartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferCartEntityImplCopyWith<_$OfferCartEntityImpl> get copyWith =>
      __$$OfferCartEntityImplCopyWithImpl<_$OfferCartEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferCartEntityImplToJson(
      this,
    );
  }
}

abstract class _OfferCartEntity implements OfferCartEntity {
  factory _OfferCartEntity({final List<OfferCartItem> data}) =
      _$OfferCartEntityImpl;

  factory _OfferCartEntity.fromJson(Map<String, dynamic> json) =
      _$OfferCartEntityImpl.fromJson;

  @override
  List<OfferCartItem> get data;

  /// Create a copy of OfferCartEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferCartEntityImplCopyWith<_$OfferCartEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
