// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppTime _$AppTimeFromJson(Map<String, dynamic> json) {
  return _AppTime.fromJson(json);
}

/// @nodoc
mixin _$AppTime {
  @JsonKey(name: 'time_slot')
  String? get timeSlot => throw _privateConstructorUsedError;
  bool? get night => throw _privateConstructorUsedError;

  /// Serializes this AppTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppTimeCopyWith<AppTime> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppTimeCopyWith<$Res> {
  factory $AppTimeCopyWith(AppTime value, $Res Function(AppTime) then) =
      _$AppTimeCopyWithImpl<$Res, AppTime>;
  @useResult
  $Res call({@JsonKey(name: 'time_slot') String? timeSlot, bool? night});
}

/// @nodoc
class _$AppTimeCopyWithImpl<$Res, $Val extends AppTime>
    implements $AppTimeCopyWith<$Res> {
  _$AppTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlot = freezed,
    Object? night = freezed,
  }) {
    return _then(_value.copyWith(
      timeSlot: freezed == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppTimeImplCopyWith<$Res> implements $AppTimeCopyWith<$Res> {
  factory _$$AppTimeImplCopyWith(
          _$AppTimeImpl value, $Res Function(_$AppTimeImpl) then) =
      __$$AppTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'time_slot') String? timeSlot, bool? night});
}

/// @nodoc
class __$$AppTimeImplCopyWithImpl<$Res>
    extends _$AppTimeCopyWithImpl<$Res, _$AppTimeImpl>
    implements _$$AppTimeImplCopyWith<$Res> {
  __$$AppTimeImplCopyWithImpl(
      _$AppTimeImpl _value, $Res Function(_$AppTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlot = freezed,
    Object? night = freezed,
  }) {
    return _then(_$AppTimeImpl(
      timeSlot: freezed == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppTimeImpl implements _AppTime {
  _$AppTimeImpl({@JsonKey(name: 'time_slot') this.timeSlot, this.night});

  factory _$AppTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppTimeImplFromJson(json);

  @override
  @JsonKey(name: 'time_slot')
  final String? timeSlot;
  @override
  final bool? night;

  @override
  String toString() {
    return 'AppTime(timeSlot: $timeSlot, night: $night)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppTimeImpl &&
            (identical(other.timeSlot, timeSlot) ||
                other.timeSlot == timeSlot) &&
            (identical(other.night, night) || other.night == night));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timeSlot, night);

  /// Create a copy of AppTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppTimeImplCopyWith<_$AppTimeImpl> get copyWith =>
      __$$AppTimeImplCopyWithImpl<_$AppTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppTimeImplToJson(
      this,
    );
  }
}

abstract class _AppTime implements AppTime {
  factory _AppTime(
      {@JsonKey(name: 'time_slot') final String? timeSlot,
      final bool? night}) = _$AppTimeImpl;

  factory _AppTime.fromJson(Map<String, dynamic> json) = _$AppTimeImpl.fromJson;

  @override
  @JsonKey(name: 'time_slot')
  String? get timeSlot;
  @override
  bool? get night;

  /// Create a copy of AppTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppTimeImplCopyWith<_$AppTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
