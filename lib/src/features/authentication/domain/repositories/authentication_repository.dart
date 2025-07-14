import 'package:remain/src/features/home/domain/entity/home_services_entity.dart';

import '../../../../core/errors/custom_error.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../home/domain/entity/home_vital_signs_entity.dart';
import '../../data/models/patient_info.dart';
import '../../data/models/required_registeration_patient_info/required_registeration_patient_info.dart';
import '../../data/repositories_impl/authentication_repository_impl.dart';
import '../entities/patient_user_entity.dart';
part 'authentication_repository.g.dart';

@Riverpod(keepAlive: true)
class AuthenticationRepository extends _$AuthenticationRepository {
  @override
  FutureOr<void> build() {}

  final AuthenticationRepositoryImpl _authenticationSourceImpl =
      AuthenticationRepositoryImpl();

  PatientUserEntity? _patientUserEntity;
  PatientUserEntity? getPaitentUserEntity() => _patientUserEntity;

  PatientInfo? _patientInfo;
  PatientInfo? getPatientInfo() {
    return _patientInfo;
  }

  Future<PatientUserEntity?> loginPatient(
      {String? phoneNumber, String? id}) async {
    try {
      _patientUserEntity = await _authenticationSourceImpl.loginPatient(
          id: id, phoneNumber: phoneNumber);
      return _patientUserEntity;
    } catch (e, stack) {
      throw CustomError('Failed to login', err: e, stackTrace: stack);
    }
  }

  Future<PatientUserEntity?> registerNewPatient(
      RequiredRegisterationPatientInfo requiredRegisterPatientInfo) async {
    try {
      _patientUserEntity = await _authenticationSourceImpl
          .registerNewPatient(requiredRegisterPatientInfo);

      return _patientUserEntity;
    } catch (e, stack) {
      throw CustomError('Failed to register', err: e, stackTrace: stack);
    }
  }

  Future<HomeServicesEntity> getUserHomeServices({int? id}) async {
    try {
      return await _authenticationSourceImpl.getUserHomeServices(id: id);
    } catch (e, stack) {
      throw CustomError('Failed to get user home services',
          err: e, stackTrace: stack);
    }
  }

  Future<HomeVitalSignsEntity> getUserHomeVitalSigns({int? id}) async {
    try {
      return await _authenticationSourceImpl.getUserHomeVitalSigns(id: id);
    } catch (e, stack) {
      throw CustomError('Failed to get user home vital signs',
          err: e, stackTrace: stack);
    }
  }
}
