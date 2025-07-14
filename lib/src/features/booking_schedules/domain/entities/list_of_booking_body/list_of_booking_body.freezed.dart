// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_of_booking_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListOfBookingBody _$ListOfBookingBodyFromJson(Map<String, dynamic> json) {
  return _ListOfBookingBody.fromJson(json);
}

/// @nodoc
mixin _$ListOfBookingBody {
  @JsonKey(name: 'Data')
  BookingDatum? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'ProgramData')
  List<ProgramData>? get programData => throw _privateConstructorUsedError;

  /// Serializes this ListOfBookingBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListOfBookingBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListOfBookingBodyCopyWith<ListOfBookingBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfBookingBodyCopyWith<$Res> {
  factory $ListOfBookingBodyCopyWith(
          ListOfBookingBody value, $Res Function(ListOfBookingBody) then) =
      _$ListOfBookingBodyCopyWithImpl<$Res, ListOfBookingBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Data') BookingDatum? data,
      @JsonKey(name: 'ProgramData') List<ProgramData>? programData});

  $BookingDatumCopyWith<$Res>? get data;
}

/// @nodoc
class _$ListOfBookingBodyCopyWithImpl<$Res, $Val extends ListOfBookingBody>
    implements $ListOfBookingBodyCopyWith<$Res> {
  _$ListOfBookingBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListOfBookingBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? programData = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingDatum?,
      programData: freezed == programData
          ? _value.programData
          : programData // ignore: cast_nullable_to_non_nullable
              as List<ProgramData>?,
    ) as $Val);
  }

  /// Create a copy of ListOfBookingBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingDatumCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BookingDatumCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListOfBookingBodyImplCopyWith<$Res>
    implements $ListOfBookingBodyCopyWith<$Res> {
  factory _$$ListOfBookingBodyImplCopyWith(_$ListOfBookingBodyImpl value,
          $Res Function(_$ListOfBookingBodyImpl) then) =
      __$$ListOfBookingBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Data') BookingDatum? data,
      @JsonKey(name: 'ProgramData') List<ProgramData>? programData});

  @override
  $BookingDatumCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ListOfBookingBodyImplCopyWithImpl<$Res>
    extends _$ListOfBookingBodyCopyWithImpl<$Res, _$ListOfBookingBodyImpl>
    implements _$$ListOfBookingBodyImplCopyWith<$Res> {
  __$$ListOfBookingBodyImplCopyWithImpl(_$ListOfBookingBodyImpl _value,
      $Res Function(_$ListOfBookingBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListOfBookingBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? programData = freezed,
  }) {
    return _then(_$ListOfBookingBodyImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingDatum?,
      programData: freezed == programData
          ? _value._programData
          : programData // ignore: cast_nullable_to_non_nullable
              as List<ProgramData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListOfBookingBodyImpl implements _ListOfBookingBody {
  _$ListOfBookingBodyImpl(
      {@JsonKey(name: 'Data') this.data,
      @JsonKey(name: 'ProgramData') final List<ProgramData>? programData})
      : _programData = programData;

  factory _$ListOfBookingBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListOfBookingBodyImplFromJson(json);

  @override
  @JsonKey(name: 'Data')
  final BookingDatum? data;
  final List<ProgramData>? _programData;
  @override
  @JsonKey(name: 'ProgramData')
  List<ProgramData>? get programData {
    final value = _programData;
    if (value == null) return null;
    if (_programData is EqualUnmodifiableListView) return _programData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListOfBookingBody(data: $data, programData: $programData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListOfBookingBodyImpl &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._programData, _programData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, data, const DeepCollectionEquality().hash(_programData));

  /// Create a copy of ListOfBookingBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListOfBookingBodyImplCopyWith<_$ListOfBookingBodyImpl> get copyWith =>
      __$$ListOfBookingBodyImplCopyWithImpl<_$ListOfBookingBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListOfBookingBodyImplToJson(
      this,
    );
  }
}

abstract class _ListOfBookingBody implements ListOfBookingBody {
  factory _ListOfBookingBody(
          {@JsonKey(name: 'Data') final BookingDatum? data,
          @JsonKey(name: 'ProgramData') final List<ProgramData>? programData}) =
      _$ListOfBookingBodyImpl;

  factory _ListOfBookingBody.fromJson(Map<String, dynamic> json) =
      _$ListOfBookingBodyImpl.fromJson;

  @override
  @JsonKey(name: 'Data')
  BookingDatum? get data;
  @override
  @JsonKey(name: 'ProgramData')
  List<ProgramData>? get programData;

  /// Create a copy of ListOfBookingBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListOfBookingBodyImplCopyWith<_$ListOfBookingBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
