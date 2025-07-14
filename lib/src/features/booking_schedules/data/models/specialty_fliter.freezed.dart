// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialty_fliter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpecialtyFilter _$SpecialtyFilterFromJson(Map<String, dynamic> json) {
  return _SpecialtyFilter.fromJson(json);
}

/// @nodoc
mixin _$SpecialtyFilter {
  List<int>? get gender => throw _privateConstructorUsedError;
  bool? get isOnline => throw _privateConstructorUsedError;

  /// Serializes this SpecialtyFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpecialtyFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecialtyFilterCopyWith<SpecialtyFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialtyFilterCopyWith<$Res> {
  factory $SpecialtyFilterCopyWith(
          SpecialtyFilter value, $Res Function(SpecialtyFilter) then) =
      _$SpecialtyFilterCopyWithImpl<$Res, SpecialtyFilter>;
  @useResult
  $Res call({List<int>? gender, bool? isOnline});
}

/// @nodoc
class _$SpecialtyFilterCopyWithImpl<$Res, $Val extends SpecialtyFilter>
    implements $SpecialtyFilterCopyWith<$Res> {
  _$SpecialtyFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecialtyFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? isOnline = freezed,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialtyFilterImplCopyWith<$Res>
    implements $SpecialtyFilterCopyWith<$Res> {
  factory _$$SpecialtyFilterImplCopyWith(_$SpecialtyFilterImpl value,
          $Res Function(_$SpecialtyFilterImpl) then) =
      __$$SpecialtyFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int>? gender, bool? isOnline});
}

/// @nodoc
class __$$SpecialtyFilterImplCopyWithImpl<$Res>
    extends _$SpecialtyFilterCopyWithImpl<$Res, _$SpecialtyFilterImpl>
    implements _$$SpecialtyFilterImplCopyWith<$Res> {
  __$$SpecialtyFilterImplCopyWithImpl(
      _$SpecialtyFilterImpl _value, $Res Function(_$SpecialtyFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecialtyFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? isOnline = freezed,
  }) {
    return _then(_$SpecialtyFilterImpl(
      gender: freezed == gender
          ? _value._gender
          : gender // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecialtyFilterImpl implements _SpecialtyFilter {
  _$SpecialtyFilterImpl({final List<int>? gender, this.isOnline})
      : _gender = gender;

  factory _$SpecialtyFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialtyFilterImplFromJson(json);

  final List<int>? _gender;
  @override
  List<int>? get gender {
    final value = _gender;
    if (value == null) return null;
    if (_gender is EqualUnmodifiableListView) return _gender;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isOnline;

  @override
  String toString() {
    return 'SpecialtyFilter(gender: $gender, isOnline: $isOnline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialtyFilterImpl &&
            const DeepCollectionEquality().equals(other._gender, _gender) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_gender), isOnline);

  /// Create a copy of SpecialtyFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialtyFilterImplCopyWith<_$SpecialtyFilterImpl> get copyWith =>
      __$$SpecialtyFilterImplCopyWithImpl<_$SpecialtyFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialtyFilterImplToJson(
      this,
    );
  }
}

abstract class _SpecialtyFilter implements SpecialtyFilter {
  factory _SpecialtyFilter({final List<int>? gender, final bool? isOnline}) =
      _$SpecialtyFilterImpl;

  factory _SpecialtyFilter.fromJson(Map<String, dynamic> json) =
      _$SpecialtyFilterImpl.fromJson;

  @override
  List<int>? get gender;
  @override
  bool? get isOnline;

  /// Create a copy of SpecialtyFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecialtyFilterImplCopyWith<_$SpecialtyFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
