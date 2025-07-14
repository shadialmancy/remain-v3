import 'package:remain/src/features/medical_record/data/model/models.dart';

import '../../../../core/errors/custom_error.dart';
import '../../domain/entities/entities.dart';
import '../../domain/entities/prescription_entity/patient_prescription_entity.dart';
import '../datasource/medical_reports_datasource.dart';

abstract class BaseMedicalRecordsRepository {
  Future<PatientLabResultsEntity> getLabResults(
      String patientId, String fromDate, String toDate);
  Future<PatientLabResultsEntity> getXRayResults(
      String patientId, String fromDate, String toDate);
  Future<PatientPrescriptionEntity> getPatientPrescription(
      {required String patientId,
      required String fromDate,
      required String toDate});
  Future<RecordStatementEntity> getRecordStatements(
      {required String patientId,
      required String fromDate,
      required String toDate});
  Future<PatientInsuranceEntity> getPatientInsurances(
      {required String patientId, required String patientIdNum});
  Future<PatientApprovalEntity> getPatientApprovals(
      {required String patientId, required String patientIdNum});
  Future<SickLeaveEntity> fetchSickLeaveReports(
      String patientId, String patientMrn);
  Future<String> getDocumentsToDownload(
      String value, String spName, String rptID);
  Future<RecordStatementEntity> getMyBills(
      {required String patientId,
      required String fromDate,
      required String toDate});
}

class MedicalRecordsRepositoryImpl implements BaseMedicalRecordsRepository {
  MedicalRecordsSourceImpl dataSource = MedicalRecordsSourceImpl();
  @override
  Future<PatientLabResultsEntity> getLabResults(
      String patientId, String fromDate, String toDate) async {
    try {
      return await dataSource
          .getLabResults(patientId, fromDate, toDate)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get lab results', err: e, stackTrace: stack);
    }
  }

  @override
  Future<PatientPrescriptionEntity> getPatientPrescription(
      {required String patientId,
      required String fromDate,
      required String toDate}) async {
    try {
      return await dataSource
          .getPatientPrescription(
              patientId: patientId, fromDate: fromDate, toDate: toDate)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get prescription',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<PatientLabResultsEntity> getXRayResults(
      String patientId, String fromDate, String toDate) async {
    try {
      return await dataSource
          .getXRayResults(patientId, fromDate, toDate)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get xray results',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<RecordStatementEntity> getRecordStatements(
      {required String patientId,
      required String fromDate,
      required String toDate}) async {
    try {
      return await dataSource
          .getRecordStatements(
              patientId: patientId, fromDate: fromDate, toDate: toDate)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get medical records',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<String> getDocumentsToDownload(
      String value, String spName, String rptID) async {
    try {
      return await dataSource.getDocumentsToDownload(value, spName, rptID);
    } catch (e, stack) {
      throw CustomError('Failed to download patient report',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<SickLeaveEntity> fetchSickLeaveReports(
      String patientId, String patientMrn) async {
    try {
      return await dataSource
          .fetchSickLeaveReports(patientId, patientMrn)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to download patient report',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<PatientInsuranceEntity> getPatientInsurances(
      {required String patientId, required String patientIdNum}) async {
    try {
      return await dataSource
          .getPatientInsurances(
              patientId: patientId, patientIdNum: patientIdNum)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get patient insurances',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<PatientApprovalEntity> getPatientApprovals(
      {required String patientId, required String patientIdNum}) async {
    try {
      return await dataSource
          .getPatientApprovals(patientId: patientId, patientIdNum: patientIdNum)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get patient approvals',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<RecordStatementEntity> getMyBills(
      {required String patientId,
      required String fromDate,
      required String toDate}) async {
    try {
      return await dataSource
          .getMyBills(patientId: patientId, fromDate: fromDate, toDate: toDate)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get medical records',
          err: e, stackTrace: stack);
    }
  }
}
