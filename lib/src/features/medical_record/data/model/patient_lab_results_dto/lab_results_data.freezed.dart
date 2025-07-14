// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab_results_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LabResultsData _$LabResultsDataFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$LabResultsData {
  @JsonKey(name: 'thID')
  num? get thId => throw _privateConstructorUsedError;
  num? get transNum => throw _privateConstructorUsedError;
  num? get doctorId => throw _privateConstructorUsedError;
  String? get doctorArbName => throw _privateConstructorUsedError;
  String? get doctorEngName => throw _privateConstructorUsedError;
  num? get patFileNum => throw _privateConstructorUsedError;
  String? get patEngName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PatArbName')
  String? get patArbName => throw _privateConstructorUsedError;
  String? get respCenterArbName => throw _privateConstructorUsedError;
  String? get respCenterEngName => throw _privateConstructorUsedError;
  String? get paymethodEng => throw _privateConstructorUsedError;
  String? get paymethodArb => throw _privateConstructorUsedError;
  String? get transDate => throw _privateConstructorUsedError;
  num? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'report_spName')
  String? get reportSpName => throw _privateConstructorUsedError;
  String? get rptId => throw _privateConstructorUsedError;
  List<TransDtl>? get transDtl => throw _privateConstructorUsedError;

  /// Serializes this LabResultsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LabResultsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LabResultsDataCopyWith<LabResultsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabResultsDataCopyWith<$Res> {
  factory $LabResultsDataCopyWith(
          LabResultsData value, $Res Function(LabResultsData) then) =
      _$LabResultsDataCopyWithImpl<$Res, LabResultsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'thID') num? thId,
      num? transNum,
      num? doctorId,
      String? doctorArbName,
      String? doctorEngName,
      num? patFileNum,
      String? patEngName,
      @JsonKey(name: 'PatArbName') String? patArbName,
      String? respCenterArbName,
      String? respCenterEngName,
      String? paymethodEng,
      String? paymethodArb,
      String? transDate,
      num? amount,
      @JsonKey(name: 'report_spName') String? reportSpName,
      String? rptId,
      List<TransDtl>? transDtl});
}

/// @nodoc
class _$LabResultsDataCopyWithImpl<$Res, $Val extends LabResultsData>
    implements $LabResultsDataCopyWith<$Res> {
  _$LabResultsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LabResultsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thId = freezed,
    Object? transNum = freezed,
    Object? doctorId = freezed,
    Object? doctorArbName = freezed,
    Object? doctorEngName = freezed,
    Object? patFileNum = freezed,
    Object? patEngName = freezed,
    Object? patArbName = freezed,
    Object? respCenterArbName = freezed,
    Object? respCenterEngName = freezed,
    Object? paymethodEng = freezed,
    Object? paymethodArb = freezed,
    Object? transDate = freezed,
    Object? amount = freezed,
    Object? reportSpName = freezed,
    Object? rptId = freezed,
    Object? transDtl = freezed,
  }) {
    return _then(_value.copyWith(
      thId: freezed == thId
          ? _value.thId
          : thId // ignore: cast_nullable_to_non_nullable
              as num?,
      transNum: freezed == transNum
          ? _value.transNum
          : transNum // ignore: cast_nullable_to_non_nullable
              as num?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as num?,
      doctorArbName: freezed == doctorArbName
          ? _value.doctorArbName
          : doctorArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorEngName: freezed == doctorEngName
          ? _value.doctorEngName
          : doctorEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      patFileNum: freezed == patFileNum
          ? _value.patFileNum
          : patFileNum // ignore: cast_nullable_to_non_nullable
              as num?,
      patEngName: freezed == patEngName
          ? _value.patEngName
          : patEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      patArbName: freezed == patArbName
          ? _value.patArbName
          : patArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      respCenterArbName: freezed == respCenterArbName
          ? _value.respCenterArbName
          : respCenterArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      respCenterEngName: freezed == respCenterEngName
          ? _value.respCenterEngName
          : respCenterEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      paymethodEng: freezed == paymethodEng
          ? _value.paymethodEng
          : paymethodEng // ignore: cast_nullable_to_non_nullable
              as String?,
      paymethodArb: freezed == paymethodArb
          ? _value.paymethodArb
          : paymethodArb // ignore: cast_nullable_to_non_nullable
              as String?,
      transDate: freezed == transDate
          ? _value.transDate
          : transDate // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      reportSpName: freezed == reportSpName
          ? _value.reportSpName
          : reportSpName // ignore: cast_nullable_to_non_nullable
              as String?,
      rptId: freezed == rptId
          ? _value.rptId
          : rptId // ignore: cast_nullable_to_non_nullable
              as String?,
      transDtl: freezed == transDtl
          ? _value.transDtl
          : transDtl // ignore: cast_nullable_to_non_nullable
              as List<TransDtl>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res>
    implements $LabResultsDataCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'thID') num? thId,
      num? transNum,
      num? doctorId,
      String? doctorArbName,
      String? doctorEngName,
      num? patFileNum,
      String? patEngName,
      @JsonKey(name: 'PatArbName') String? patArbName,
      String? respCenterArbName,
      String? respCenterEngName,
      String? paymethodEng,
      String? paymethodArb,
      String? transDate,
      num? amount,
      @JsonKey(name: 'report_spName') String? reportSpName,
      String? rptId,
      List<TransDtl>? transDtl});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$LabResultsDataCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  /// Create a copy of LabResultsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thId = freezed,
    Object? transNum = freezed,
    Object? doctorId = freezed,
    Object? doctorArbName = freezed,
    Object? doctorEngName = freezed,
    Object? patFileNum = freezed,
    Object? patEngName = freezed,
    Object? patArbName = freezed,
    Object? respCenterArbName = freezed,
    Object? respCenterEngName = freezed,
    Object? paymethodEng = freezed,
    Object? paymethodArb = freezed,
    Object? transDate = freezed,
    Object? amount = freezed,
    Object? reportSpName = freezed,
    Object? rptId = freezed,
    Object? transDtl = freezed,
  }) {
    return _then(_$DatumImpl(
      thId: freezed == thId
          ? _value.thId
          : thId // ignore: cast_nullable_to_non_nullable
              as num?,
      transNum: freezed == transNum
          ? _value.transNum
          : transNum // ignore: cast_nullable_to_non_nullable
              as num?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as num?,
      doctorArbName: freezed == doctorArbName
          ? _value.doctorArbName
          : doctorArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorEngName: freezed == doctorEngName
          ? _value.doctorEngName
          : doctorEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      patFileNum: freezed == patFileNum
          ? _value.patFileNum
          : patFileNum // ignore: cast_nullable_to_non_nullable
              as num?,
      patEngName: freezed == patEngName
          ? _value.patEngName
          : patEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      patArbName: freezed == patArbName
          ? _value.patArbName
          : patArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      respCenterArbName: freezed == respCenterArbName
          ? _value.respCenterArbName
          : respCenterArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      respCenterEngName: freezed == respCenterEngName
          ? _value.respCenterEngName
          : respCenterEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      paymethodEng: freezed == paymethodEng
          ? _value.paymethodEng
          : paymethodEng // ignore: cast_nullable_to_non_nullable
              as String?,
      paymethodArb: freezed == paymethodArb
          ? _value.paymethodArb
          : paymethodArb // ignore: cast_nullable_to_non_nullable
              as String?,
      transDate: freezed == transDate
          ? _value.transDate
          : transDate // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      reportSpName: freezed == reportSpName
          ? _value.reportSpName
          : reportSpName // ignore: cast_nullable_to_non_nullable
              as String?,
      rptId: freezed == rptId
          ? _value.rptId
          : rptId // ignore: cast_nullable_to_non_nullable
              as String?,
      transDtl: freezed == transDtl
          ? _value._transDtl
          : transDtl // ignore: cast_nullable_to_non_nullable
              as List<TransDtl>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  _$DatumImpl(
      {@JsonKey(name: 'thID') this.thId,
      this.transNum,
      this.doctorId,
      this.doctorArbName,
      this.doctorEngName,
      this.patFileNum,
      this.patEngName,
      @JsonKey(name: 'PatArbName') this.patArbName,
      this.respCenterArbName,
      this.respCenterEngName,
      this.paymethodEng,
      this.paymethodArb,
      this.transDate,
      this.amount,
      @JsonKey(name: 'report_spName') this.reportSpName,
      this.rptId,
      final List<TransDtl>? transDtl})
      : _transDtl = transDtl;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: 'thID')
  final num? thId;
  @override
  final num? transNum;
  @override
  final num? doctorId;
  @override
  final String? doctorArbName;
  @override
  final String? doctorEngName;
  @override
  final num? patFileNum;
  @override
  final String? patEngName;
  @override
  @JsonKey(name: 'PatArbName')
  final String? patArbName;
  @override
  final String? respCenterArbName;
  @override
  final String? respCenterEngName;
  @override
  final String? paymethodEng;
  @override
  final String? paymethodArb;
  @override
  final String? transDate;
  @override
  final num? amount;
  @override
  @JsonKey(name: 'report_spName')
  final String? reportSpName;
  @override
  final String? rptId;
  final List<TransDtl>? _transDtl;
  @override
  List<TransDtl>? get transDtl {
    final value = _transDtl;
    if (value == null) return null;
    if (_transDtl is EqualUnmodifiableListView) return _transDtl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LabResultsData(thId: $thId, transNum: $transNum, doctorId: $doctorId, doctorArbName: $doctorArbName, doctorEngName: $doctorEngName, patFileNum: $patFileNum, patEngName: $patEngName, patArbName: $patArbName, respCenterArbName: $respCenterArbName, respCenterEngName: $respCenterEngName, paymethodEng: $paymethodEng, paymethodArb: $paymethodArb, transDate: $transDate, amount: $amount, reportSpName: $reportSpName, rptId: $rptId, transDtl: $transDtl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.thId, thId) || other.thId == thId) &&
            (identical(other.transNum, transNum) ||
                other.transNum == transNum) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.doctorArbName, doctorArbName) ||
                other.doctorArbName == doctorArbName) &&
            (identical(other.doctorEngName, doctorEngName) ||
                other.doctorEngName == doctorEngName) &&
            (identical(other.patFileNum, patFileNum) ||
                other.patFileNum == patFileNum) &&
            (identical(other.patEngName, patEngName) ||
                other.patEngName == patEngName) &&
            (identical(other.patArbName, patArbName) ||
                other.patArbName == patArbName) &&
            (identical(other.respCenterArbName, respCenterArbName) ||
                other.respCenterArbName == respCenterArbName) &&
            (identical(other.respCenterEngName, respCenterEngName) ||
                other.respCenterEngName == respCenterEngName) &&
            (identical(other.paymethodEng, paymethodEng) ||
                other.paymethodEng == paymethodEng) &&
            (identical(other.paymethodArb, paymethodArb) ||
                other.paymethodArb == paymethodArb) &&
            (identical(other.transDate, transDate) ||
                other.transDate == transDate) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.reportSpName, reportSpName) ||
                other.reportSpName == reportSpName) &&
            (identical(other.rptId, rptId) || other.rptId == rptId) &&
            const DeepCollectionEquality().equals(other._transDtl, _transDtl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      thId,
      transNum,
      doctorId,
      doctorArbName,
      doctorEngName,
      patFileNum,
      patEngName,
      patArbName,
      respCenterArbName,
      respCenterEngName,
      paymethodEng,
      paymethodArb,
      transDate,
      amount,
      reportSpName,
      rptId,
      const DeepCollectionEquality().hash(_transDtl));

  /// Create a copy of LabResultsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements LabResultsData {
  factory _Datum(
      {@JsonKey(name: 'thID') final num? thId,
      final num? transNum,
      final num? doctorId,
      final String? doctorArbName,
      final String? doctorEngName,
      final num? patFileNum,
      final String? patEngName,
      @JsonKey(name: 'PatArbName') final String? patArbName,
      final String? respCenterArbName,
      final String? respCenterEngName,
      final String? paymethodEng,
      final String? paymethodArb,
      final String? transDate,
      final num? amount,
      @JsonKey(name: 'report_spName') final String? reportSpName,
      final String? rptId,
      final List<TransDtl>? transDtl}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: 'thID')
  num? get thId;
  @override
  num? get transNum;
  @override
  num? get doctorId;
  @override
  String? get doctorArbName;
  @override
  String? get doctorEngName;
  @override
  num? get patFileNum;
  @override
  String? get patEngName;
  @override
  @JsonKey(name: 'PatArbName')
  String? get patArbName;
  @override
  String? get respCenterArbName;
  @override
  String? get respCenterEngName;
  @override
  String? get paymethodEng;
  @override
  String? get paymethodArb;
  @override
  String? get transDate;
  @override
  num? get amount;
  @override
  @JsonKey(name: 'report_spName')
  String? get reportSpName;
  @override
  String? get rptId;
  @override
  List<TransDtl>? get transDtl;

  /// Create a copy of LabResultsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
