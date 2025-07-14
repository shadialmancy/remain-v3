// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_transactions_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientTransactionsData _$PatientTransactionsDataFromJson(
    Map<String, dynamic> json) {
  return _PatientTransactionsData.fromJson(json);
}

/// @nodoc
mixin _$PatientTransactionsData {
  @JsonKey(name: 'TransPaymentID')
  num? get transPaymentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TransNum')
  num? get transNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'RegDate')
  String? get regDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'TransDate')
  String? get transDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'MRN')
  num? get mrn => throw _privateConstructorUsedError;
  @JsonKey(name: 'PayrollNum')
  String? get payrollNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'PatientType')
  String? get patientType => throw _privateConstructorUsedError;
  @JsonKey(name: 'EngPatientName')
  String? get engPatientName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ArbPatientName')
  String? get arbPatientName => throw _privateConstructorUsedError;
  @JsonKey(name: 'DoctorCode')
  String? get doctorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'DoctorName')
  String? get doctorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'AccountCode')
  String? get accountCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'AccountName')
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'CancelDate')
  dynamic get cancelDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'PatientIDNum')
  String? get patientIdNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'TransPaymentRemarks')
  String? get transPaymentRemarks => throw _privateConstructorUsedError;
  @JsonKey(name: 'AccountRemarks')
  dynamic get accountRemarks => throw _privateConstructorUsedError;
  @JsonKey(name: 'PaidAmount')
  num? get paidAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'ApprovalCode')
  String? get approvalCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'CardChequeNum')
  String? get cardChequeNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExpIssDate')
  String? get expIssDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'PayeeName')
  String? get payeeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PaymentType')
  String? get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'PaymentTypeCode')
  String? get paymentTypeCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'PaymentTypeName')
  String? get paymentTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'VoucherName')
  String? get voucherName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'EngName')
  String? get engName => throw _privateConstructorUsedError;
  @JsonKey(name: 'VAT')
  dynamic get vat => throw _privateConstructorUsedError;
  String? get rptId => throw _privateConstructorUsedError;
  @JsonKey(name: 'report_spName')
  String? get reportSpName => throw _privateConstructorUsedError;

  /// Serializes this PatientTransactionsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientTransactionsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientTransactionsDataCopyWith<PatientTransactionsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientTransactionsDataCopyWith<$Res> {
  factory $PatientTransactionsDataCopyWith(PatientTransactionsData value,
          $Res Function(PatientTransactionsData) then) =
      _$PatientTransactionsDataCopyWithImpl<$Res, PatientTransactionsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'TransPaymentID') num? transPaymentId,
      @JsonKey(name: 'TransNum') num? transNum,
      @JsonKey(name: 'RegDate') String? regDate,
      @JsonKey(name: 'TransDate') String? transDate,
      @JsonKey(name: 'MRN') num? mrn,
      @JsonKey(name: 'PayrollNum') String? payrollNum,
      @JsonKey(name: 'PatientType') String? patientType,
      @JsonKey(name: 'EngPatientName') String? engPatientName,
      @JsonKey(name: 'ArbPatientName') String? arbPatientName,
      @JsonKey(name: 'DoctorCode') String? doctorCode,
      @JsonKey(name: 'DoctorName') String? doctorName,
      @JsonKey(name: 'AccountCode') String? accountCode,
      @JsonKey(name: 'AccountName') String? accountName,
      @JsonKey(name: 'CancelDate') dynamic cancelDate,
      @JsonKey(name: 'PatientIDNum') String? patientIdNum,
      @JsonKey(name: 'TransPaymentRemarks') String? transPaymentRemarks,
      @JsonKey(name: 'AccountRemarks') dynamic accountRemarks,
      @JsonKey(name: 'PaidAmount') num? paidAmount,
      @JsonKey(name: 'ApprovalCode') String? approvalCode,
      @JsonKey(name: 'CardChequeNum') String? cardChequeNum,
      @JsonKey(name: 'ExpIssDate') String? expIssDate,
      @JsonKey(name: 'PayeeName') String? payeeName,
      @JsonKey(name: 'PaymentType') String? paymentType,
      @JsonKey(name: 'PaymentTypeCode') String? paymentTypeCode,
      @JsonKey(name: 'PaymentTypeName') String? paymentTypeName,
      @JsonKey(name: 'VoucherName') String? voucherName,
      @JsonKey(name: 'Code') String? code,
      @JsonKey(name: 'EngName') String? engName,
      @JsonKey(name: 'VAT') dynamic vat,
      String? rptId,
      @JsonKey(name: 'report_spName') String? reportSpName});
}

/// @nodoc
class _$PatientTransactionsDataCopyWithImpl<$Res,
        $Val extends PatientTransactionsData>
    implements $PatientTransactionsDataCopyWith<$Res> {
  _$PatientTransactionsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientTransactionsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transPaymentId = freezed,
    Object? transNum = freezed,
    Object? regDate = freezed,
    Object? transDate = freezed,
    Object? mrn = freezed,
    Object? payrollNum = freezed,
    Object? patientType = freezed,
    Object? engPatientName = freezed,
    Object? arbPatientName = freezed,
    Object? doctorCode = freezed,
    Object? doctorName = freezed,
    Object? accountCode = freezed,
    Object? accountName = freezed,
    Object? cancelDate = freezed,
    Object? patientIdNum = freezed,
    Object? transPaymentRemarks = freezed,
    Object? accountRemarks = freezed,
    Object? paidAmount = freezed,
    Object? approvalCode = freezed,
    Object? cardChequeNum = freezed,
    Object? expIssDate = freezed,
    Object? payeeName = freezed,
    Object? paymentType = freezed,
    Object? paymentTypeCode = freezed,
    Object? paymentTypeName = freezed,
    Object? voucherName = freezed,
    Object? code = freezed,
    Object? engName = freezed,
    Object? vat = freezed,
    Object? rptId = freezed,
    Object? reportSpName = freezed,
  }) {
    return _then(_value.copyWith(
      transPaymentId: freezed == transPaymentId
          ? _value.transPaymentId
          : transPaymentId // ignore: cast_nullable_to_non_nullable
              as num?,
      transNum: freezed == transNum
          ? _value.transNum
          : transNum // ignore: cast_nullable_to_non_nullable
              as num?,
      regDate: freezed == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as String?,
      transDate: freezed == transDate
          ? _value.transDate
          : transDate // ignore: cast_nullable_to_non_nullable
              as String?,
      mrn: freezed == mrn
          ? _value.mrn
          : mrn // ignore: cast_nullable_to_non_nullable
              as num?,
      payrollNum: freezed == payrollNum
          ? _value.payrollNum
          : payrollNum // ignore: cast_nullable_to_non_nullable
              as String?,
      patientType: freezed == patientType
          ? _value.patientType
          : patientType // ignore: cast_nullable_to_non_nullable
              as String?,
      engPatientName: freezed == engPatientName
          ? _value.engPatientName
          : engPatientName // ignore: cast_nullable_to_non_nullable
              as String?,
      arbPatientName: freezed == arbPatientName
          ? _value.arbPatientName
          : arbPatientName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorCode: freezed == doctorCode
          ? _value.doctorCode
          : doctorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCode: freezed == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelDate: freezed == cancelDate
          ? _value.cancelDate
          : cancelDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      patientIdNum: freezed == patientIdNum
          ? _value.patientIdNum
          : patientIdNum // ignore: cast_nullable_to_non_nullable
              as String?,
      transPaymentRemarks: freezed == transPaymentRemarks
          ? _value.transPaymentRemarks
          : transPaymentRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      accountRemarks: freezed == accountRemarks
          ? _value.accountRemarks
          : accountRemarks // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      approvalCode: freezed == approvalCode
          ? _value.approvalCode
          : approvalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      cardChequeNum: freezed == cardChequeNum
          ? _value.cardChequeNum
          : cardChequeNum // ignore: cast_nullable_to_non_nullable
              as String?,
      expIssDate: freezed == expIssDate
          ? _value.expIssDate
          : expIssDate // ignore: cast_nullable_to_non_nullable
              as String?,
      payeeName: freezed == payeeName
          ? _value.payeeName
          : payeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTypeCode: freezed == paymentTypeCode
          ? _value.paymentTypeCode
          : paymentTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTypeName: freezed == paymentTypeName
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      voucherName: freezed == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      engName: freezed == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rptId: freezed == rptId
          ? _value.rptId
          : rptId // ignore: cast_nullable_to_non_nullable
              as String?,
      reportSpName: freezed == reportSpName
          ? _value.reportSpName
          : reportSpName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientTransactionsDataImplCopyWith<$Res>
    implements $PatientTransactionsDataCopyWith<$Res> {
  factory _$$PatientTransactionsDataImplCopyWith(
          _$PatientTransactionsDataImpl value,
          $Res Function(_$PatientTransactionsDataImpl) then) =
      __$$PatientTransactionsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'TransPaymentID') num? transPaymentId,
      @JsonKey(name: 'TransNum') num? transNum,
      @JsonKey(name: 'RegDate') String? regDate,
      @JsonKey(name: 'TransDate') String? transDate,
      @JsonKey(name: 'MRN') num? mrn,
      @JsonKey(name: 'PayrollNum') String? payrollNum,
      @JsonKey(name: 'PatientType') String? patientType,
      @JsonKey(name: 'EngPatientName') String? engPatientName,
      @JsonKey(name: 'ArbPatientName') String? arbPatientName,
      @JsonKey(name: 'DoctorCode') String? doctorCode,
      @JsonKey(name: 'DoctorName') String? doctorName,
      @JsonKey(name: 'AccountCode') String? accountCode,
      @JsonKey(name: 'AccountName') String? accountName,
      @JsonKey(name: 'CancelDate') dynamic cancelDate,
      @JsonKey(name: 'PatientIDNum') String? patientIdNum,
      @JsonKey(name: 'TransPaymentRemarks') String? transPaymentRemarks,
      @JsonKey(name: 'AccountRemarks') dynamic accountRemarks,
      @JsonKey(name: 'PaidAmount') num? paidAmount,
      @JsonKey(name: 'ApprovalCode') String? approvalCode,
      @JsonKey(name: 'CardChequeNum') String? cardChequeNum,
      @JsonKey(name: 'ExpIssDate') String? expIssDate,
      @JsonKey(name: 'PayeeName') String? payeeName,
      @JsonKey(name: 'PaymentType') String? paymentType,
      @JsonKey(name: 'PaymentTypeCode') String? paymentTypeCode,
      @JsonKey(name: 'PaymentTypeName') String? paymentTypeName,
      @JsonKey(name: 'VoucherName') String? voucherName,
      @JsonKey(name: 'Code') String? code,
      @JsonKey(name: 'EngName') String? engName,
      @JsonKey(name: 'VAT') dynamic vat,
      String? rptId,
      @JsonKey(name: 'report_spName') String? reportSpName});
}

/// @nodoc
class __$$PatientTransactionsDataImplCopyWithImpl<$Res>
    extends _$PatientTransactionsDataCopyWithImpl<$Res,
        _$PatientTransactionsDataImpl>
    implements _$$PatientTransactionsDataImplCopyWith<$Res> {
  __$$PatientTransactionsDataImplCopyWithImpl(
      _$PatientTransactionsDataImpl _value,
      $Res Function(_$PatientTransactionsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientTransactionsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transPaymentId = freezed,
    Object? transNum = freezed,
    Object? regDate = freezed,
    Object? transDate = freezed,
    Object? mrn = freezed,
    Object? payrollNum = freezed,
    Object? patientType = freezed,
    Object? engPatientName = freezed,
    Object? arbPatientName = freezed,
    Object? doctorCode = freezed,
    Object? doctorName = freezed,
    Object? accountCode = freezed,
    Object? accountName = freezed,
    Object? cancelDate = freezed,
    Object? patientIdNum = freezed,
    Object? transPaymentRemarks = freezed,
    Object? accountRemarks = freezed,
    Object? paidAmount = freezed,
    Object? approvalCode = freezed,
    Object? cardChequeNum = freezed,
    Object? expIssDate = freezed,
    Object? payeeName = freezed,
    Object? paymentType = freezed,
    Object? paymentTypeCode = freezed,
    Object? paymentTypeName = freezed,
    Object? voucherName = freezed,
    Object? code = freezed,
    Object? engName = freezed,
    Object? vat = freezed,
    Object? rptId = freezed,
    Object? reportSpName = freezed,
  }) {
    return _then(_$PatientTransactionsDataImpl(
      transPaymentId: freezed == transPaymentId
          ? _value.transPaymentId
          : transPaymentId // ignore: cast_nullable_to_non_nullable
              as num?,
      transNum: freezed == transNum
          ? _value.transNum
          : transNum // ignore: cast_nullable_to_non_nullable
              as num?,
      regDate: freezed == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as String?,
      transDate: freezed == transDate
          ? _value.transDate
          : transDate // ignore: cast_nullable_to_non_nullable
              as String?,
      mrn: freezed == mrn
          ? _value.mrn
          : mrn // ignore: cast_nullable_to_non_nullable
              as num?,
      payrollNum: freezed == payrollNum
          ? _value.payrollNum
          : payrollNum // ignore: cast_nullable_to_non_nullable
              as String?,
      patientType: freezed == patientType
          ? _value.patientType
          : patientType // ignore: cast_nullable_to_non_nullable
              as String?,
      engPatientName: freezed == engPatientName
          ? _value.engPatientName
          : engPatientName // ignore: cast_nullable_to_non_nullable
              as String?,
      arbPatientName: freezed == arbPatientName
          ? _value.arbPatientName
          : arbPatientName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorCode: freezed == doctorCode
          ? _value.doctorCode
          : doctorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCode: freezed == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelDate: freezed == cancelDate
          ? _value.cancelDate
          : cancelDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      patientIdNum: freezed == patientIdNum
          ? _value.patientIdNum
          : patientIdNum // ignore: cast_nullable_to_non_nullable
              as String?,
      transPaymentRemarks: freezed == transPaymentRemarks
          ? _value.transPaymentRemarks
          : transPaymentRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      accountRemarks: freezed == accountRemarks
          ? _value.accountRemarks
          : accountRemarks // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      approvalCode: freezed == approvalCode
          ? _value.approvalCode
          : approvalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      cardChequeNum: freezed == cardChequeNum
          ? _value.cardChequeNum
          : cardChequeNum // ignore: cast_nullable_to_non_nullable
              as String?,
      expIssDate: freezed == expIssDate
          ? _value.expIssDate
          : expIssDate // ignore: cast_nullable_to_non_nullable
              as String?,
      payeeName: freezed == payeeName
          ? _value.payeeName
          : payeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTypeCode: freezed == paymentTypeCode
          ? _value.paymentTypeCode
          : paymentTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTypeName: freezed == paymentTypeName
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      voucherName: freezed == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      engName: freezed == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rptId: freezed == rptId
          ? _value.rptId
          : rptId // ignore: cast_nullable_to_non_nullable
              as String?,
      reportSpName: freezed == reportSpName
          ? _value.reportSpName
          : reportSpName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientTransactionsDataImpl implements _PatientTransactionsData {
  _$PatientTransactionsDataImpl(
      {@JsonKey(name: 'TransPaymentID') this.transPaymentId,
      @JsonKey(name: 'TransNum') this.transNum,
      @JsonKey(name: 'RegDate') this.regDate,
      @JsonKey(name: 'TransDate') this.transDate,
      @JsonKey(name: 'MRN') this.mrn,
      @JsonKey(name: 'PayrollNum') this.payrollNum,
      @JsonKey(name: 'PatientType') this.patientType,
      @JsonKey(name: 'EngPatientName') this.engPatientName,
      @JsonKey(name: 'ArbPatientName') this.arbPatientName,
      @JsonKey(name: 'DoctorCode') this.doctorCode,
      @JsonKey(name: 'DoctorName') this.doctorName,
      @JsonKey(name: 'AccountCode') this.accountCode,
      @JsonKey(name: 'AccountName') this.accountName,
      @JsonKey(name: 'CancelDate') this.cancelDate,
      @JsonKey(name: 'PatientIDNum') this.patientIdNum,
      @JsonKey(name: 'TransPaymentRemarks') this.transPaymentRemarks,
      @JsonKey(name: 'AccountRemarks') this.accountRemarks,
      @JsonKey(name: 'PaidAmount') this.paidAmount,
      @JsonKey(name: 'ApprovalCode') this.approvalCode,
      @JsonKey(name: 'CardChequeNum') this.cardChequeNum,
      @JsonKey(name: 'ExpIssDate') this.expIssDate,
      @JsonKey(name: 'PayeeName') this.payeeName,
      @JsonKey(name: 'PaymentType') this.paymentType,
      @JsonKey(name: 'PaymentTypeCode') this.paymentTypeCode,
      @JsonKey(name: 'PaymentTypeName') this.paymentTypeName,
      @JsonKey(name: 'VoucherName') this.voucherName,
      @JsonKey(name: 'Code') this.code,
      @JsonKey(name: 'EngName') this.engName,
      @JsonKey(name: 'VAT') this.vat,
      this.rptId,
      @JsonKey(name: 'report_spName') this.reportSpName});

  factory _$PatientTransactionsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientTransactionsDataImplFromJson(json);

  @override
  @JsonKey(name: 'TransPaymentID')
  final num? transPaymentId;
  @override
  @JsonKey(name: 'TransNum')
  final num? transNum;
  @override
  @JsonKey(name: 'RegDate')
  final String? regDate;
  @override
  @JsonKey(name: 'TransDate')
  final String? transDate;
  @override
  @JsonKey(name: 'MRN')
  final num? mrn;
  @override
  @JsonKey(name: 'PayrollNum')
  final String? payrollNum;
  @override
  @JsonKey(name: 'PatientType')
  final String? patientType;
  @override
  @JsonKey(name: 'EngPatientName')
  final String? engPatientName;
  @override
  @JsonKey(name: 'ArbPatientName')
  final String? arbPatientName;
  @override
  @JsonKey(name: 'DoctorCode')
  final String? doctorCode;
  @override
  @JsonKey(name: 'DoctorName')
  final String? doctorName;
  @override
  @JsonKey(name: 'AccountCode')
  final String? accountCode;
  @override
  @JsonKey(name: 'AccountName')
  final String? accountName;
  @override
  @JsonKey(name: 'CancelDate')
  final dynamic cancelDate;
  @override
  @JsonKey(name: 'PatientIDNum')
  final String? patientIdNum;
  @override
  @JsonKey(name: 'TransPaymentRemarks')
  final String? transPaymentRemarks;
  @override
  @JsonKey(name: 'AccountRemarks')
  final dynamic accountRemarks;
  @override
  @JsonKey(name: 'PaidAmount')
  final num? paidAmount;
  @override
  @JsonKey(name: 'ApprovalCode')
  final String? approvalCode;
  @override
  @JsonKey(name: 'CardChequeNum')
  final String? cardChequeNum;
  @override
  @JsonKey(name: 'ExpIssDate')
  final String? expIssDate;
  @override
  @JsonKey(name: 'PayeeName')
  final String? payeeName;
  @override
  @JsonKey(name: 'PaymentType')
  final String? paymentType;
  @override
  @JsonKey(name: 'PaymentTypeCode')
  final String? paymentTypeCode;
  @override
  @JsonKey(name: 'PaymentTypeName')
  final String? paymentTypeName;
  @override
  @JsonKey(name: 'VoucherName')
  final String? voucherName;
  @override
  @JsonKey(name: 'Code')
  final String? code;
  @override
  @JsonKey(name: 'EngName')
  final String? engName;
  @override
  @JsonKey(name: 'VAT')
  final dynamic vat;
  @override
  final String? rptId;
  @override
  @JsonKey(name: 'report_spName')
  final String? reportSpName;

  @override
  String toString() {
    return 'PatientTransactionsData(transPaymentId: $transPaymentId, transNum: $transNum, regDate: $regDate, transDate: $transDate, mrn: $mrn, payrollNum: $payrollNum, patientType: $patientType, engPatientName: $engPatientName, arbPatientName: $arbPatientName, doctorCode: $doctorCode, doctorName: $doctorName, accountCode: $accountCode, accountName: $accountName, cancelDate: $cancelDate, patientIdNum: $patientIdNum, transPaymentRemarks: $transPaymentRemarks, accountRemarks: $accountRemarks, paidAmount: $paidAmount, approvalCode: $approvalCode, cardChequeNum: $cardChequeNum, expIssDate: $expIssDate, payeeName: $payeeName, paymentType: $paymentType, paymentTypeCode: $paymentTypeCode, paymentTypeName: $paymentTypeName, voucherName: $voucherName, code: $code, engName: $engName, vat: $vat, rptId: $rptId, reportSpName: $reportSpName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientTransactionsDataImpl &&
            (identical(other.transPaymentId, transPaymentId) ||
                other.transPaymentId == transPaymentId) &&
            (identical(other.transNum, transNum) ||
                other.transNum == transNum) &&
            (identical(other.regDate, regDate) || other.regDate == regDate) &&
            (identical(other.transDate, transDate) ||
                other.transDate == transDate) &&
            (identical(other.mrn, mrn) || other.mrn == mrn) &&
            (identical(other.payrollNum, payrollNum) ||
                other.payrollNum == payrollNum) &&
            (identical(other.patientType, patientType) ||
                other.patientType == patientType) &&
            (identical(other.engPatientName, engPatientName) ||
                other.engPatientName == engPatientName) &&
            (identical(other.arbPatientName, arbPatientName) ||
                other.arbPatientName == arbPatientName) &&
            (identical(other.doctorCode, doctorCode) ||
                other.doctorCode == doctorCode) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.accountCode, accountCode) ||
                other.accountCode == accountCode) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            const DeepCollectionEquality()
                .equals(other.cancelDate, cancelDate) &&
            (identical(other.patientIdNum, patientIdNum) ||
                other.patientIdNum == patientIdNum) &&
            (identical(other.transPaymentRemarks, transPaymentRemarks) ||
                other.transPaymentRemarks == transPaymentRemarks) &&
            const DeepCollectionEquality()
                .equals(other.accountRemarks, accountRemarks) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.approvalCode, approvalCode) ||
                other.approvalCode == approvalCode) &&
            (identical(other.cardChequeNum, cardChequeNum) ||
                other.cardChequeNum == cardChequeNum) &&
            (identical(other.expIssDate, expIssDate) ||
                other.expIssDate == expIssDate) &&
            (identical(other.payeeName, payeeName) ||
                other.payeeName == payeeName) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentTypeCode, paymentTypeCode) ||
                other.paymentTypeCode == paymentTypeCode) &&
            (identical(other.paymentTypeName, paymentTypeName) ||
                other.paymentTypeName == paymentTypeName) &&
            (identical(other.voucherName, voucherName) ||
                other.voucherName == voucherName) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.engName, engName) || other.engName == engName) &&
            const DeepCollectionEquality().equals(other.vat, vat) &&
            (identical(other.rptId, rptId) || other.rptId == rptId) &&
            (identical(other.reportSpName, reportSpName) ||
                other.reportSpName == reportSpName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        transPaymentId,
        transNum,
        regDate,
        transDate,
        mrn,
        payrollNum,
        patientType,
        engPatientName,
        arbPatientName,
        doctorCode,
        doctorName,
        accountCode,
        accountName,
        const DeepCollectionEquality().hash(cancelDate),
        patientIdNum,
        transPaymentRemarks,
        const DeepCollectionEquality().hash(accountRemarks),
        paidAmount,
        approvalCode,
        cardChequeNum,
        expIssDate,
        payeeName,
        paymentType,
        paymentTypeCode,
        paymentTypeName,
        voucherName,
        code,
        engName,
        const DeepCollectionEquality().hash(vat),
        rptId,
        reportSpName
      ]);

  /// Create a copy of PatientTransactionsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientTransactionsDataImplCopyWith<_$PatientTransactionsDataImpl>
      get copyWith => __$$PatientTransactionsDataImplCopyWithImpl<
          _$PatientTransactionsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientTransactionsDataImplToJson(
      this,
    );
  }
}

abstract class _PatientTransactionsData implements PatientTransactionsData {
  factory _PatientTransactionsData(
      {@JsonKey(name: 'TransPaymentID') final num? transPaymentId,
      @JsonKey(name: 'TransNum') final num? transNum,
      @JsonKey(name: 'RegDate') final String? regDate,
      @JsonKey(name: 'TransDate') final String? transDate,
      @JsonKey(name: 'MRN') final num? mrn,
      @JsonKey(name: 'PayrollNum') final String? payrollNum,
      @JsonKey(name: 'PatientType') final String? patientType,
      @JsonKey(name: 'EngPatientName') final String? engPatientName,
      @JsonKey(name: 'ArbPatientName') final String? arbPatientName,
      @JsonKey(name: 'DoctorCode') final String? doctorCode,
      @JsonKey(name: 'DoctorName') final String? doctorName,
      @JsonKey(name: 'AccountCode') final String? accountCode,
      @JsonKey(name: 'AccountName') final String? accountName,
      @JsonKey(name: 'CancelDate') final dynamic cancelDate,
      @JsonKey(name: 'PatientIDNum') final String? patientIdNum,
      @JsonKey(name: 'TransPaymentRemarks') final String? transPaymentRemarks,
      @JsonKey(name: 'AccountRemarks') final dynamic accountRemarks,
      @JsonKey(name: 'PaidAmount') final num? paidAmount,
      @JsonKey(name: 'ApprovalCode') final String? approvalCode,
      @JsonKey(name: 'CardChequeNum') final String? cardChequeNum,
      @JsonKey(name: 'ExpIssDate') final String? expIssDate,
      @JsonKey(name: 'PayeeName') final String? payeeName,
      @JsonKey(name: 'PaymentType') final String? paymentType,
      @JsonKey(name: 'PaymentTypeCode') final String? paymentTypeCode,
      @JsonKey(name: 'PaymentTypeName') final String? paymentTypeName,
      @JsonKey(name: 'VoucherName') final String? voucherName,
      @JsonKey(name: 'Code') final String? code,
      @JsonKey(name: 'EngName') final String? engName,
      @JsonKey(name: 'VAT') final dynamic vat,
      final String? rptId,
      @JsonKey(name: 'report_spName')
      final String? reportSpName}) = _$PatientTransactionsDataImpl;

  factory _PatientTransactionsData.fromJson(Map<String, dynamic> json) =
      _$PatientTransactionsDataImpl.fromJson;

  @override
  @JsonKey(name: 'TransPaymentID')
  num? get transPaymentId;
  @override
  @JsonKey(name: 'TransNum')
  num? get transNum;
  @override
  @JsonKey(name: 'RegDate')
  String? get regDate;
  @override
  @JsonKey(name: 'TransDate')
  String? get transDate;
  @override
  @JsonKey(name: 'MRN')
  num? get mrn;
  @override
  @JsonKey(name: 'PayrollNum')
  String? get payrollNum;
  @override
  @JsonKey(name: 'PatientType')
  String? get patientType;
  @override
  @JsonKey(name: 'EngPatientName')
  String? get engPatientName;
  @override
  @JsonKey(name: 'ArbPatientName')
  String? get arbPatientName;
  @override
  @JsonKey(name: 'DoctorCode')
  String? get doctorCode;
  @override
  @JsonKey(name: 'DoctorName')
  String? get doctorName;
  @override
  @JsonKey(name: 'AccountCode')
  String? get accountCode;
  @override
  @JsonKey(name: 'AccountName')
  String? get accountName;
  @override
  @JsonKey(name: 'CancelDate')
  dynamic get cancelDate;
  @override
  @JsonKey(name: 'PatientIDNum')
  String? get patientIdNum;
  @override
  @JsonKey(name: 'TransPaymentRemarks')
  String? get transPaymentRemarks;
  @override
  @JsonKey(name: 'AccountRemarks')
  dynamic get accountRemarks;
  @override
  @JsonKey(name: 'PaidAmount')
  num? get paidAmount;
  @override
  @JsonKey(name: 'ApprovalCode')
  String? get approvalCode;
  @override
  @JsonKey(name: 'CardChequeNum')
  String? get cardChequeNum;
  @override
  @JsonKey(name: 'ExpIssDate')
  String? get expIssDate;
  @override
  @JsonKey(name: 'PayeeName')
  String? get payeeName;
  @override
  @JsonKey(name: 'PaymentType')
  String? get paymentType;
  @override
  @JsonKey(name: 'PaymentTypeCode')
  String? get paymentTypeCode;
  @override
  @JsonKey(name: 'PaymentTypeName')
  String? get paymentTypeName;
  @override
  @JsonKey(name: 'VoucherName')
  String? get voucherName;
  @override
  @JsonKey(name: 'Code')
  String? get code;
  @override
  @JsonKey(name: 'EngName')
  String? get engName;
  @override
  @JsonKey(name: 'VAT')
  dynamic get vat;
  @override
  String? get rptId;
  @override
  @JsonKey(name: 'report_spName')
  String? get reportSpName;

  /// Create a copy of PatientTransactionsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientTransactionsDataImplCopyWith<_$PatientTransactionsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
