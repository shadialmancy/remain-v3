// ignore_for_file: avoid_public_notifier_properties
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/custom_error.dart';
import '../../data/repositories_impl/medical_record_repositories_impl.dart';
import '../entities/entities.dart';
import '../entities/prescription_entity/patient_prescription_entity.dart';
part 'medical_reports_repository.g.dart';

@Riverpod(keepAlive: true)
class MedicalReportsRepository extends _$MedicalReportsRepository {
  @override
  FutureOr<void> build() {}

  final MedicalRecordsRepositoryImpl _medicalRecordsRepositoryImpl =
      MedicalRecordsRepositoryImpl();

  PatientLabResultsEntity? _patientLabResultsEntity;
  PatientLabResultsEntity? getPatientLabResultsEntity() =>
      _patientLabResultsEntity;

  Future<PatientLabResultsEntity?> getLabResults(
      String patientId, String fromDate, String toDate) async {
    try {
      _patientLabResultsEntity = await _medicalRecordsRepositoryImpl
          .getLabResults(patientId, fromDate, toDate);
      return _patientLabResultsEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get lab results', err: e, stackTrace: stack);
    }
  }

  PatientLabResultsEntity? _patientXRayResultsEntity;
  PatientLabResultsEntity? getPatientXRayResultsEntity() =>
      _patientXRayResultsEntity;

  Future<PatientLabResultsEntity?> getXRayResults(
      String patientId, String fromDate, String toDate) async {
    try {
      _patientXRayResultsEntity = await _medicalRecordsRepositoryImpl
          .getXRayResults(patientId, fromDate, toDate);
      return _patientXRayResultsEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get xray results',
          err: e, stackTrace: stack);
    }
  }

  PatientPrescriptionEntity? _patientPrescriptionEntity;
  PatientPrescriptionEntity? get getPatientPrescriptionEntity =>
      _patientPrescriptionEntity;

  Future<PatientPrescriptionEntity?> getPatientPrescription(
      {required String patientId,
      required String fromDate,
      required String toDate}) async {
    try {
      _patientPrescriptionEntity =
          await _medicalRecordsRepositoryImpl.getPatientPrescription(
              patientId: patientId, fromDate: fromDate, toDate: toDate);
      return _patientPrescriptionEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get prescription',
          err: e, stackTrace: stack);
    }
  }

  RecordStatementEntity? _recordStatementEntity;
  RecordStatementEntity? get getRecordStatementEntity => _recordStatementEntity;

  Future<RecordStatementEntity?> getRecordStatements(
      {required String patientId,
      required String fromDate,
      required String toDate}) async {
    try {
      _recordStatementEntity =
          await _medicalRecordsRepositoryImpl.getRecordStatements(
              patientId: patientId, fromDate: fromDate, toDate: toDate);
      return _recordStatementEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get medical records',
          err: e, stackTrace: stack);
    }
  }

  SickLeaveEntity? _sickLeaveEntity;
  Future<SickLeaveEntity?> getSickLeave(
      {String? patientId, String? patientMrn}) async {
    try {
      _sickLeaveEntity = await _medicalRecordsRepositoryImpl
          .fetchSickLeaveReports(patientId!, patientMrn!);
      return _sickLeaveEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get sick leave', err: e, stackTrace: stack);
    }
  }

  PatientInsuranceEntity? _patientInsuranceEntity;
  PatientInsuranceEntity? get getPatientInsuranceEntity =>
      _patientInsuranceEntity;

  Future<PatientInsuranceEntity?> getPatientInsurances(
      {required String patientId, required String patientIdNum}) async {
    try {
      _patientInsuranceEntity =
          await _medicalRecordsRepositoryImpl.getPatientInsurances(
              patientId: patientId, patientIdNum: patientIdNum);
      return _patientInsuranceEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get insurances', err: e, stackTrace: stack);
    }
  }

  Future<String> getDocumentsToDownload(
      String value, String spName, String rptID) async {
    try {
      return await _medicalRecordsRepositoryImpl.getDocumentsToDownload(
          value, spName, rptID);
    } catch (e, stack) {
      throw CustomError('Failed to download patient report',
          err: e, stackTrace: stack);
    }
  }

  PatientApprovalEntity? _patientApprovalEntity;
  PatientApprovalEntity? get getPatientApprovalEntity => _patientApprovalEntity;

  Future<PatientApprovalEntity?> getPatientApprovals(
      {required String patientId, required String patientIdNum}) async {
    try {
      _patientApprovalEntity =
          await _medicalRecordsRepositoryImpl.getPatientApprovals(
              patientId: patientId, patientIdNum: patientIdNum);
      return _patientApprovalEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get approvals', err: e, stackTrace: stack);
    }
  }

  RecordStatementEntity? _myBills;
  Future<RecordStatementEntity?> getMyBills(
      {required String patientId,
      required String fromDate,
      required String toDate}) async {
    try {
      _myBills = await _medicalRecordsRepositoryImpl.getMyBills(
          patientId: patientId, fromDate: fromDate, toDate: toDate);
      return _myBills;
    } catch (e, stack) {
      throw CustomError('Failed to get my bills', err: e, stackTrace: stack);
    }
  }
}
