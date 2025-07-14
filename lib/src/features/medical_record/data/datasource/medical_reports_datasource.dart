import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../model/models.dart';

abstract class MedicalRecordsSource {
  Future<PatientLabResultsDto> getLabResults(
      String patientId, String fromDate, String toDate);
  Future<PatientPrescriptionDto> getPatientPrescription(
      {required String patientId,
      required String fromDate,
      required String toDate});
  Future<PatientLabResultsDto> getXRayResults(
      String patientId, String fromDate, String toDate);
  Future<RecordStatementDto> getRecordStatements(
      {required String patientId,
      required String fromDate,
      required String toDate});
  Future<PatientInsuranceDto> getPatientInsurances(
      {required String patientId, required String patientIdNum});
  Future<PatientApprovalDto> getPatientApprovals(
      {required String patientId, required String patientIdNum});
  Future<SickLeaveDto> fetchSickLeaveReports(
      String patientId, String patientMrn);
  Future<String> getDocumentsToDownload(
      String value, String spName, String rptID);
  Future<RecordStatementDto> getMyBills(
      {required String patientId,
      required String fromDate,
      required String toDate});
}

class MedicalRecordsSourceImpl implements MedicalRecordsSource {
  @override
  Future<PatientLabResultsDto> getLabResults(
      String patientId, String fromDate, String toDate) async {
    Map<String, String> queryParams = {
      AppStrings.patientID: patientId,
      TransactionTypeStrings.fromDate: fromDate,
      TransactionTypeStrings.toDate: toDate,
      TransactionTypeStrings.respCenterType: TransactionTypeStrings.lapType,
    };
    logger.i(queryParams);
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.getTransactionByType,
            data: queryParams,
          );
      if (response.data['code'] == 200) {
        return PatientLabResultsDto.fromJson(response.data);
      } else {
        return PatientLabResultsDto();
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<String> getDocumentsToDownload(
      String value, String spName, String rptID) async {
    String pdfPath = '';
    logger.i('Downloading report');
    var body = {
      TransactionTypeStrings.value: value,
      TransactionTypeStrings.spName: spName,
      TransactionTypeStrings.rptID: rptID,
    };
    logger.i(body);
    try {
      Response response = await BaseDioClient().dio.post(
            AppConstants.documentDownload,
            data: body,
            options: Options(
              responseType: ResponseType.bytes,
            ),
          );
      if (response.statusCode == 302) {
        pdfPath = response.headers.value('location') ?? '';
      }
      log(body.toString());
      return pdfPath;
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<PatientPrescriptionDto> getPatientPrescription(
      {required String patientId,
      required String fromDate,
      required String toDate}) async {
    Map<String, String> queryParams = {
      TransactionTypeStrings.fromDate: fromDate,
      TransactionTypeStrings.patientId: patientId,
      TransactionTypeStrings.toDate: toDate,
      TransactionTypeStrings.respCenterType:
          TransactionTypeStrings.prescriptionType,
    };
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.getPatientPrescriptionUrl,
            data: queryParams,
          );
      if (response.statusCode == 200) {
        if (response.data['code'] == 200) {
          return PatientPrescriptionDto.fromJson(response.data);
        }
        return PatientPrescriptionDto(
          data: [],
        );
      } else {
        return PatientPrescriptionDto();
        // throw CustomError(response.statusMessage.toString());
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<PatientLabResultsDto> getXRayResults(
      String patientId, String fromDate, String toDate) async {
    Map<String, String> queryParams = {
      AppStrings.patientID: patientId,
      TransactionTypeStrings.fromDate: fromDate,
      TransactionTypeStrings.toDate: toDate,
      TransactionTypeStrings.respCenterType: TransactionTypeStrings.xrayType,
    };
    logger.i(queryParams);
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.getTransactionByType,
            data: queryParams,
          );
      if (response.data['code'] == 200) {
        return PatientLabResultsDto.fromJson(response.data);
      } else {
        return PatientLabResultsDto();
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<RecordStatementDto> getRecordStatements(
      {required String patientId,
      required String fromDate,
      required String toDate}) async {
    Map<String, String> queryParams = {
      TransactionTypeStrings.fromDate: fromDate,
      TransactionTypeStrings.patientId: patientId,
      TransactionTypeStrings.toDate: toDate,
    };
    logger.i(queryParams);
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.getMedicalRecordUrl,
            data: queryParams,
          );
      if (response.data['code'] == 200) {
        return RecordStatementDto.fromJson(response.data);
      } else {
        return RecordStatementDto();
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<PatientInsuranceDto> getPatientInsurances(
      {required String patientId, required String patientIdNum}) async {
    try {
      final response = await BaseDioClient()
          .dio
          .post(AppConstants.getPatientInsuranceUrl, data: {
        AppStrings.patientId: patientId,
        AppStrings.patientIdNum: patientIdNum
      });
      if (response.data['code'] == 200) {
        return PatientInsuranceDto.fromJson(response.data);
      } else {
        return PatientInsuranceDto();
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<PatientApprovalDto> getPatientApprovals(
      {required String patientId, required String patientIdNum}) async {
    try {
      final response = await BaseDioClient()
          .dio
          .post(AppConstants.getPatientApprovalUrl, data: {
        AppStrings.patientId: patientId,
        AppStrings.patientIdNum: patientIdNum
      });
      if (response.data['code'] == 200) {
        return PatientApprovalDto.fromJson(response.data);
      } else {
        return PatientApprovalDto();
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<SickLeaveDto> fetchSickLeaveReports(
      String patientId, String patientMrn) async {
    Map<String, String> queryParams = {
      TransactionTypeStrings.patientId: patientId,
      TransactionTypeStrings.patientMrn: patientMrn,
      TransactionTypeStrings.documentType: TransactionTypeStrings.sickLeave,
    };
    logger.i(queryParams);
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.getSickLeave,
            data: queryParams,
          );
      return SickLeaveDto.fromJson(response.data);
      // if (response.data['code'] == 200) {
      //   return SickLeaveDto.fromJson(response.data);
      // } else {
      //   throw SickLeaveDto();
      // }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<RecordStatementDto> getMyBills(
      {required String patientId,
      required String fromDate,
      required String toDate}) async {
    Map<String, String> queryParams = {
      TransactionTypeStrings.fromDate: fromDate,
      TransactionTypeStrings.patientId: patientId,
      TransactionTypeStrings.toDate: toDate,
    };
    logger.i(queryParams);
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.getMedicalRecordUrl,
            data: queryParams,
          );
      if (response.statusCode == 200) {
        return RecordStatementDto.fromJson(response.data);
      } else {
        throw CustomError(response.statusMessage.toString());
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
