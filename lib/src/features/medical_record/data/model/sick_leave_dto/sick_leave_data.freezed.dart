// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sick_leave_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SickLeaveData _$SickLeaveDataFromJson(Map<String, dynamic> json) {
  return _SickLeaveData.fromJson(json);
}

/// @nodoc
mixin _$SickLeaveData {
  String? get spName => throw _privateConstructorUsedError;
  String? get rptId => throw _privateConstructorUsedError;
  String? get patientMrn => throw _privateConstructorUsedError;
  String? get trnCodeCol => throw _privateConstructorUsedError;
  String? get regDate => throw _privateConstructorUsedError;

  /// Serializes this SickLeaveData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SickLeaveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SickLeaveDataCopyWith<SickLeaveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SickLeaveDataCopyWith<$Res> {
  factory $SickLeaveDataCopyWith(
          SickLeaveData value, $Res Function(SickLeaveData) then) =
      _$SickLeaveDataCopyWithImpl<$Res, SickLeaveData>;
  @useResult
  $Res call(
      {String? spName,
      String? rptId,
      String? patientMrn,
      String? trnCodeCol,
      String? regDate});
}

/// @nodoc
class _$SickLeaveDataCopyWithImpl<$Res, $Val extends SickLeaveData>
    implements $SickLeaveDataCopyWith<$Res> {
  _$SickLeaveDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SickLeaveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spName = freezed,
    Object? rptId = freezed,
    Object? patientMrn = freezed,
    Object? trnCodeCol = freezed,
    Object? regDate = freezed,
  }) {
    return _then(_value.copyWith(
      spName: freezed == spName
          ? _value.spName
          : spName // ignore: cast_nullable_to_non_nullable
              as String?,
      rptId: freezed == rptId
          ? _value.rptId
          : rptId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientMrn: freezed == patientMrn
          ? _value.patientMrn
          : patientMrn // ignore: cast_nullable_to_non_nullable
              as String?,
      trnCodeCol: freezed == trnCodeCol
          ? _value.trnCodeCol
          : trnCodeCol // ignore: cast_nullable_to_non_nullable
              as String?,
      regDate: freezed == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SickLeaveDataImplCopyWith<$Res>
    implements $SickLeaveDataCopyWith<$Res> {
  factory _$$SickLeaveDataImplCopyWith(
          _$SickLeaveDataImpl value, $Res Function(_$SickLeaveDataImpl) then) =
      __$$SickLeaveDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? spName,
      String? rptId,
      String? patientMrn,
      String? trnCodeCol,
      String? regDate});
}

/// @nodoc
class __$$SickLeaveDataImplCopyWithImpl<$Res>
    extends _$SickLeaveDataCopyWithImpl<$Res, _$SickLeaveDataImpl>
    implements _$$SickLeaveDataImplCopyWith<$Res> {
  __$$SickLeaveDataImplCopyWithImpl(
      _$SickLeaveDataImpl _value, $Res Function(_$SickLeaveDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SickLeaveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spName = freezed,
    Object? rptId = freezed,
    Object? patientMrn = freezed,
    Object? trnCodeCol = freezed,
    Object? regDate = freezed,
  }) {
    return _then(_$SickLeaveDataImpl(
      spName: freezed == spName
          ? _value.spName
          : spName // ignore: cast_nullable_to_non_nullable
              as String?,
      rptId: freezed == rptId
          ? _value.rptId
          : rptId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientMrn: freezed == patientMrn
          ? _value.patientMrn
          : patientMrn // ignore: cast_nullable_to_non_nullable
              as String?,
      trnCodeCol: freezed == trnCodeCol
          ? _value.trnCodeCol
          : trnCodeCol // ignore: cast_nullable_to_non_nullable
              as String?,
      regDate: freezed == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SickLeaveDataImpl implements _SickLeaveData {
  _$SickLeaveDataImpl(
      {this.spName,
      this.rptId,
      this.patientMrn,
      this.trnCodeCol,
      this.regDate});

  factory _$SickLeaveDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SickLeaveDataImplFromJson(json);

  @override
  final String? spName;
  @override
  final String? rptId;
  @override
  final String? patientMrn;
  @override
  final String? trnCodeCol;
  @override
  final String? regDate;

  @override
  String toString() {
    return 'SickLeaveData(spName: $spName, rptId: $rptId, patientMrn: $patientMrn, trnCodeCol: $trnCodeCol, regDate: $regDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SickLeaveDataImpl &&
            (identical(other.spName, spName) || other.spName == spName) &&
            (identical(other.rptId, rptId) || other.rptId == rptId) &&
            (identical(other.patientMrn, patientMrn) ||
                other.patientMrn == patientMrn) &&
            (identical(other.trnCodeCol, trnCodeCol) ||
                other.trnCodeCol == trnCodeCol) &&
            (identical(other.regDate, regDate) || other.regDate == regDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, spName, rptId, patientMrn, trnCodeCol, regDate);

  /// Create a copy of SickLeaveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SickLeaveDataImplCopyWith<_$SickLeaveDataImpl> get copyWith =>
      __$$SickLeaveDataImplCopyWithImpl<_$SickLeaveDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SickLeaveDataImplToJson(
      this,
    );
  }
}

abstract class _SickLeaveData implements SickLeaveData {
  factory _SickLeaveData(
      {final String? spName,
      final String? rptId,
      final String? patientMrn,
      final String? trnCodeCol,
      final String? regDate}) = _$SickLeaveDataImpl;

  factory _SickLeaveData.fromJson(Map<String, dynamic> json) =
      _$SickLeaveDataImpl.fromJson;

  @override
  String? get spName;
  @override
  String? get rptId;
  @override
  String? get patientMrn;
  @override
  String? get trnCodeCol;
  @override
  String? get regDate;

  /// Create a copy of SickLeaveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SickLeaveDataImplCopyWith<_$SickLeaveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
