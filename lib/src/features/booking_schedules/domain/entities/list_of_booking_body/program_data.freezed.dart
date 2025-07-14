// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProgramData _$ProgramDataFromJson(Map<String, dynamic> json) {
  return _ProgramData.fromJson(json);
}

/// @nodoc
mixin _$ProgramData {
  @JsonKey(name: 'programID')
  String? get programId => throw _privateConstructorUsedError;
  @JsonKey(name: 'programVerID')
  String? get programVerId => throw _privateConstructorUsedError;

  /// Serializes this ProgramData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgramData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramDataCopyWith<ProgramData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramDataCopyWith<$Res> {
  factory $ProgramDataCopyWith(
          ProgramData value, $Res Function(ProgramData) then) =
      _$ProgramDataCopyWithImpl<$Res, ProgramData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'programID') String? programId,
      @JsonKey(name: 'programVerID') String? programVerId});
}

/// @nodoc
class _$ProgramDataCopyWithImpl<$Res, $Val extends ProgramData>
    implements $ProgramDataCopyWith<$Res> {
  _$ProgramDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? programVerId = freezed,
  }) {
    return _then(_value.copyWith(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String?,
      programVerId: freezed == programVerId
          ? _value.programVerId
          : programVerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramDataImplCopyWith<$Res>
    implements $ProgramDataCopyWith<$Res> {
  factory _$$ProgramDataImplCopyWith(
          _$ProgramDataImpl value, $Res Function(_$ProgramDataImpl) then) =
      __$$ProgramDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'programID') String? programId,
      @JsonKey(name: 'programVerID') String? programVerId});
}

/// @nodoc
class __$$ProgramDataImplCopyWithImpl<$Res>
    extends _$ProgramDataCopyWithImpl<$Res, _$ProgramDataImpl>
    implements _$$ProgramDataImplCopyWith<$Res> {
  __$$ProgramDataImplCopyWithImpl(
      _$ProgramDataImpl _value, $Res Function(_$ProgramDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? programVerId = freezed,
  }) {
    return _then(_$ProgramDataImpl(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String?,
      programVerId: freezed == programVerId
          ? _value.programVerId
          : programVerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramDataImpl implements _ProgramData {
  _$ProgramDataImpl(
      {@JsonKey(name: 'programID') this.programId,
      @JsonKey(name: 'programVerID') this.programVerId});

  factory _$ProgramDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramDataImplFromJson(json);

  @override
  @JsonKey(name: 'programID')
  final String? programId;
  @override
  @JsonKey(name: 'programVerID')
  final String? programVerId;

  @override
  String toString() {
    return 'ProgramData(programId: $programId, programVerId: $programVerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramDataImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.programVerId, programVerId) ||
                other.programVerId == programVerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, programId, programVerId);

  /// Create a copy of ProgramData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramDataImplCopyWith<_$ProgramDataImpl> get copyWith =>
      __$$ProgramDataImplCopyWithImpl<_$ProgramDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramDataImplToJson(
      this,
    );
  }
}

abstract class _ProgramData implements ProgramData {
  factory _ProgramData(
          {@JsonKey(name: 'programID') final String? programId,
          @JsonKey(name: 'programVerID') final String? programVerId}) =
      _$ProgramDataImpl;

  factory _ProgramData.fromJson(Map<String, dynamic> json) =
      _$ProgramDataImpl.fromJson;

  @override
  @JsonKey(name: 'programID')
  String? get programId;
  @override
  @JsonKey(name: 'programVerID')
  String? get programVerId;

  /// Create a copy of ProgramData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramDataImplCopyWith<_$ProgramDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
