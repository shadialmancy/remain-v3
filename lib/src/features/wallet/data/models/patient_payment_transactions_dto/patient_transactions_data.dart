// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_transactions_data.freezed.dart';
part 'patient_transactions_data.g.dart';

@freezed
class PatientTransactionsData with _$PatientTransactionsData {
  factory PatientTransactionsData({
    @JsonKey(name: 'TransPaymentID') num? transPaymentId,
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
    @JsonKey(name: 'report_spName') String? reportSpName,
  }) = _PatientTransactionsData;

  factory PatientTransactionsData.fromJson(Map<String, dynamic> json) =>
      _$PatientTransactionsDataFromJson(json);
}
