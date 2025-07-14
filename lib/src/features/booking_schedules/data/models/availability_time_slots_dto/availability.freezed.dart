// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Availability _$AvailabilityFromJson(Map<String, dynamic> json) {
  return _Availability.fromJson(json);
}

/// @nodoc
mixin _$Availability {
  @JsonKey(name: 'day_name_eng')
  String? get dayNameEng => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_name_arb')
  String? get dayNameArb => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_number')
  String? get dayNumber => throw _privateConstructorUsedError;
  List<AppTime>? get appTimes => throw _privateConstructorUsedError;

  /// Serializes this Availability to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailabilityCopyWith<Availability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityCopyWith<$Res> {
  factory $AvailabilityCopyWith(
          Availability value, $Res Function(Availability) then) =
      _$AvailabilityCopyWithImpl<$Res, Availability>;
  @useResult
  $Res call(
      {@JsonKey(name: 'day_name_eng') String? dayNameEng,
      @JsonKey(name: 'day_name_arb') String? dayNameArb,
      @JsonKey(name: 'day_number') String? dayNumber,
      List<AppTime>? appTimes});
}

/// @nodoc
class _$AvailabilityCopyWithImpl<$Res, $Val extends Availability>
    implements $AvailabilityCopyWith<$Res> {
  _$AvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayNameEng = freezed,
    Object? dayNameArb = freezed,
    Object? dayNumber = freezed,
    Object? appTimes = freezed,
  }) {
    return _then(_value.copyWith(
      dayNameEng: freezed == dayNameEng
          ? _value.dayNameEng
          : dayNameEng // ignore: cast_nullable_to_non_nullable
              as String?,
      dayNameArb: freezed == dayNameArb
          ? _value.dayNameArb
          : dayNameArb // ignore: cast_nullable_to_non_nullable
              as String?,
      dayNumber: freezed == dayNumber
          ? _value.dayNumber
          : dayNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      appTimes: freezed == appTimes
          ? _value.appTimes
          : appTimes // ignore: cast_nullable_to_non_nullable
              as List<AppTime>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityImplCopyWith<$Res>
    implements $AvailabilityCopyWith<$Res> {
  factory _$$AvailabilityImplCopyWith(
          _$AvailabilityImpl value, $Res Function(_$AvailabilityImpl) then) =
      __$$AvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'day_name_eng') String? dayNameEng,
      @JsonKey(name: 'day_name_arb') String? dayNameArb,
      @JsonKey(name: 'day_number') String? dayNumber,
      List<AppTime>? appTimes});
}

/// @nodoc
class __$$AvailabilityImplCopyWithImpl<$Res>
    extends _$AvailabilityCopyWithImpl<$Res, _$AvailabilityImpl>
    implements _$$AvailabilityImplCopyWith<$Res> {
  __$$AvailabilityImplCopyWithImpl(
      _$AvailabilityImpl _value, $Res Function(_$AvailabilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayNameEng = freezed,
    Object? dayNameArb = freezed,
    Object? dayNumber = freezed,
    Object? appTimes = freezed,
  }) {
    return _then(_$AvailabilityImpl(
      dayNameEng: freezed == dayNameEng
          ? _value.dayNameEng
          : dayNameEng // ignore: cast_nullable_to_non_nullable
              as String?,
      dayNameArb: freezed == dayNameArb
          ? _value.dayNameArb
          : dayNameArb // ignore: cast_nullable_to_non_nullable
              as String?,
      dayNumber: freezed == dayNumber
          ? _value.dayNumber
          : dayNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      appTimes: freezed == appTimes
          ? _value._appTimes
          : appTimes // ignore: cast_nullable_to_non_nullable
              as List<AppTime>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityImpl implements _Availability {
  _$AvailabilityImpl(
      {@JsonKey(name: 'day_name_eng') this.dayNameEng,
      @JsonKey(name: 'day_name_arb') this.dayNameArb,
      @JsonKey(name: 'day_number') this.dayNumber,
      final List<AppTime>? appTimes})
      : _appTimes = appTimes;

  factory _$AvailabilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityImplFromJson(json);

  @override
  @JsonKey(name: 'day_name_eng')
  final String? dayNameEng;
  @override
  @JsonKey(name: 'day_name_arb')
  final String? dayNameArb;
  @override
  @JsonKey(name: 'day_number')
  final String? dayNumber;
  final List<AppTime>? _appTimes;
  @override
  List<AppTime>? get appTimes {
    final value = _appTimes;
    if (value == null) return null;
    if (_appTimes is EqualUnmodifiableListView) return _appTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Availability(dayNameEng: $dayNameEng, dayNameArb: $dayNameArb, dayNumber: $dayNumber, appTimes: $appTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityImpl &&
            (identical(other.dayNameEng, dayNameEng) ||
                other.dayNameEng == dayNameEng) &&
            (identical(other.dayNameArb, dayNameArb) ||
                other.dayNameArb == dayNameArb) &&
            (identical(other.dayNumber, dayNumber) ||
                other.dayNumber == dayNumber) &&
            const DeepCollectionEquality().equals(other._appTimes, _appTimes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dayNameEng, dayNameArb,
      dayNumber, const DeepCollectionEquality().hash(_appTimes));

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityImplCopyWith<_$AvailabilityImpl> get copyWith =>
      __$$AvailabilityImplCopyWithImpl<_$AvailabilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityImplToJson(
      this,
    );
  }
}

abstract class _Availability implements Availability {
  factory _Availability(
      {@JsonKey(name: 'day_name_eng') final String? dayNameEng,
      @JsonKey(name: 'day_name_arb') final String? dayNameArb,
      @JsonKey(name: 'day_number') final String? dayNumber,
      final List<AppTime>? appTimes}) = _$AvailabilityImpl;

  factory _Availability.fromJson(Map<String, dynamic> json) =
      _$AvailabilityImpl.fromJson;

  @override
  @JsonKey(name: 'day_name_eng')
  String? get dayNameEng;
  @override
  @JsonKey(name: 'day_name_arb')
  String? get dayNameArb;
  @override
  @JsonKey(name: 'day_number')
  String? get dayNumber;
  @override
  List<AppTime>? get appTimes;

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailabilityImplCopyWith<_$AvailabilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
