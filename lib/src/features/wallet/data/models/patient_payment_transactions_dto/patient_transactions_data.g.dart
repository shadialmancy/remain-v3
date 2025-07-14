// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_transactions_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientTransactionsDataImpl _$$PatientTransactionsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientTransactionsDataImpl(
      transPaymentId: json['TransPaymentID'] as num?,
      transNum: json['TransNum'] as num?,
      regDate: json['RegDate'] as String?,
      transDate: json['TransDate'] as String?,
      mrn: json['MRN'] as num?,
      payrollNum: json['PayrollNum'] as String?,
      patientType: json['PatientType'] as String?,
      engPatientName: json['EngPatientName'] as String?,
      arbPatientName: json['ArbPatientName'] as String?,
      doctorCode: json['DoctorCode'] as String?,
      doctorName: json['DoctorName'] as String?,
      accountCode: json['AccountCode'] as String?,
      accountName: json['AccountName'] as String?,
      cancelDate: json['CancelDate'],
      patientIdNum: json['PatientIDNum'] as String?,
      transPaymentRemarks: json['TransPaymentRemarks'] as String?,
      accountRemarks: json['AccountRemarks'],
      paidAmount: json['PaidAmount'] as num?,
      approvalCode: json['ApprovalCode'] as String?,
      cardChequeNum: json['CardChequeNum'] as String?,
      expIssDate: json['ExpIssDate'] as String?,
      payeeName: json['PayeeName'] as String?,
      paymentType: json['PaymentType'] as String?,
      paymentTypeCode: json['PaymentTypeCode'] as String?,
      paymentTypeName: json['PaymentTypeName'] as String?,
      voucherName: json['VoucherName'] as String?,
      code: json['Code'] as String?,
      engName: json['EngName'] as String?,
      vat: json['VAT'],
      rptId: json['rptId'] as String?,
      reportSpName: json['report_spName'] as String?,
    );

Map<String, dynamic> _$$PatientTransactionsDataImplToJson(
        _$PatientTransactionsDataImpl instance) =>
    <String, dynamic>{
      'TransPaymentID': instance.transPaymentId,
      'TransNum': instance.transNum,
      'RegDate': instance.regDate,
      'TransDate': instance.transDate,
      'MRN': instance.mrn,
      'PayrollNum': instance.payrollNum,
      'PatientType': instance.patientType,
      'EngPatientName': instance.engPatientName,
      'ArbPatientName': instance.arbPatientName,
      'DoctorCode': instance.doctorCode,
      'DoctorName': instance.doctorName,
      'AccountCode': instance.accountCode,
      'AccountName': instance.accountName,
      'CancelDate': instance.cancelDate,
      'PatientIDNum': instance.patientIdNum,
      'TransPaymentRemarks': instance.transPaymentRemarks,
      'AccountRemarks': instance.accountRemarks,
      'PaidAmount': instance.paidAmount,
      'ApprovalCode': instance.approvalCode,
      'CardChequeNum': instance.cardChequeNum,
      'ExpIssDate': instance.expIssDate,
      'PayeeName': instance.payeeName,
      'PaymentType': instance.paymentType,
      'PaymentTypeCode': instance.paymentTypeCode,
      'PaymentTypeName': instance.paymentTypeName,
      'VoucherName': instance.voucherName,
      'Code': instance.code,
      'EngName': instance.engName,
      'VAT': instance.vat,
      'rptId': instance.rptId,
      'report_spName': instance.reportSpName,
    };
