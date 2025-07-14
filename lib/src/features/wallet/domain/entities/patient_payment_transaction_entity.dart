// ignore_for_file: invalid_annotation_target

import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/patient_payment_transactions_dto/patient_payment_transactions_dto.dart';
import '../../data/models/patient_payment_transactions_dto/patient_transactions_data.dart';

part 'patient_payment_transaction_entity.freezed.dart';
part 'patient_payment_transaction_entity.g.dart';

@freezed
class PatientPaymentTransactionsEntity with _$PatientPaymentTransactionsEntity {
  factory PatientPaymentTransactionsEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<PatientTransactionsData>? data,
  }) = _PatientPaymentTransactionsEntity;

  factory PatientPaymentTransactionsEntity.fromJson(
          Map<String, dynamic> json) =>
      _$PatientPaymentTransactionsEntityFromJson(json);

  factory PatientPaymentTransactionsEntity.generateFakeData(
          {int numOfFakeData = 3}) =>
      PatientPaymentTransactionsEntity(
          data: List.generate(
        numOfFakeData,
        (index) => PatientTransactionsData(
          accountName: Faker().randomGenerator.numberOfLength(10),
          arbPatientName: Faker().randomGenerator.numberOfLength(10),
          doctorName: Faker().randomGenerator.numberOfLength(10),
          engName: Faker().randomGenerator.numberOfLength(10),
          engPatientName: Faker().randomGenerator.numberOfLength(10),
          paidAmount: 10000,
          mrn: 10000,
          voucherName: Faker().randomGenerator.numberOfLength(10),
          transNum: 10000,
          patientType: Faker().randomGenerator.numberOfLength(10),
          code: Faker().randomGenerator.numberOfLength(10),
          paymentTypeName: Faker().randomGenerator.numberOfLength(10),
          transDate: DateTime.now().toString(),
        ),
      ));
}

extension PatientPaymentTransactionsEntityX
    on PatientPaymentTransactionsEntity {
  PatientPaymentTransactionsDto toDto() => PatientPaymentTransactionsDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
