import 'package:remain/src/features/authentication/data/models/patient_user_dto.dart';
import 'package:remain/src/features/home/data/models/home_services/home_services_dto.dart';
import 'package:remain/src/features/home/data/models/home_vital_signs_dto/home_vital_signs_dto.dart';
import 'package:remain/src/features/home/domain/entity/home_services_entity.dart';
import 'package:remain/src/features/home/domain/entity/home_vital_signs_entity.dart';
import '../../../../core/errors/custom_error.dart';
import '../../domain/entities/patient_user_entity.dart';
import '../datasource/authentication_datasource.dart';
import '../models/required_registeration_patient_info/required_registeration_patient_info.dart';

abstract class BaseAuthenticationRepository {
  Future<PatientUserEntity> loginPatient({String? phoneNumber, String? id});
  Future<PatientUserEntity?> registerNewPatient(
      RequiredRegisterationPatientInfo requiredRegisterPatientInfo);

  Future<HomeServicesEntity> getUserHomeServices({int? id});
  Future<HomeVitalSignsEntity> getUserHomeVitalSigns({int? id});
}

class AuthenticationRepositoryImpl implements BaseAuthenticationRepository {
  final AuthenticationSourceImpl dataSource = AuthenticationSourceImpl();

  @override
  Future<PatientUserEntity> loginPatient(
      {String? phoneNumber, String? id}) async {
    try {
      return await dataSource
          .loginPatient(id: id, phoneNumber: phoneNumber)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      //this throw for us to track the error, it will be caught in the terminal
      throw CustomError('Failed to login', err: e, stackTrace: stack);
    }
  }

  @override
  Future<PatientUserEntity?> registerNewPatient(
      RequiredRegisterationPatientInfo requiredRegisterPatientInfo) async {
    try {
      return await dataSource
          .registerNewPatient(requiredRegisterPatientInfo)
          .then((value) {
        return value?.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to register', err: e, stackTrace: stack);
    }
  }

  @override
  Future<HomeServicesEntity> getUserHomeServices({int? id}) async {
    try {
      return await dataSource.getUserHomeServices(id: id).then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get user home services',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<HomeVitalSignsEntity> getUserHomeVitalSigns({int? id}) async {
    try {
      return await dataSource.getUserHomeVitalSigns(id: id).then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get user home vital signs',
          err: e, stackTrace: stack);
    }
  }
}
