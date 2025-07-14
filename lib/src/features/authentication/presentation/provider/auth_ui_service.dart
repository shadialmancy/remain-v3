import 'package:hive_flutter/hive_flutter.dart';
import 'package:remain/src/core/widgets/app_toast.dart';
import 'package:remain/src/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/patient_info.dart';
import '../../data/models/required_registeration_patient_info/required_registeration_patient_info.dart';
import '../../domain/entities/patient_user_entity.dart';
part 'auth_ui_service.g.dart';

@Riverpod(
  keepAlive: true,
)
class AuthUiService extends _$AuthUiService {
  @override
  FutureOr<PatientInfo?> build() {
    return fetchSavedPatientInfo();
  }

  final String _patientInfoBox = 'patientInfoBox';

  Future<PatientInfo?> fetchSavedPatientInfo() async {
    if (!Hive.isBoxOpen(_patientInfoBox)) {
      try {
        await Hive.openBox(_patientInfoBox);
      } catch (e) {
        // Handle any errors that may occur during the box opening
        //   logger.e("Error opening box: $e");
        return null;
      }
    }

    var patientBox = Hive.box(_patientInfoBox);
    if (patientBox.isNotEmpty) {
      return patientBox.getAt(0);
    }
    return null;
  }

  Future<void> savePatientInfo(PatientInfo patientInfo) async {
    bool exists = Hive.isBoxOpen(_patientInfoBox);
    if (!exists) {
      await Hive.openBox(_patientInfoBox);
    }
    var patientBox = Hive.box(_patientInfoBox);
    patientBox.add(patientInfo);
  }

  PatientUserEntity? _patientUserEntity;
  PatientUserEntity? getPaitentUserEntity() => _patientUserEntity;

  String? _userPhoneNumber;
  void setUserPhoneNumber(String phoneNumber) {
    _userPhoneNumber = phoneNumber;
  }

  String? getUserPhoneNumber() => _userPhoneNumber;

  Future<PatientUserEntity?> loginPatient(
      {String? phoneNumber, String? id}) async {
    try {
      _patientUserEntity = null;
      state = const AsyncValue.loading();

      _patientUserEntity = await ref
          .read(authenticationRepositoryProvider.notifier)
          .loginPatient(phoneNumber: phoneNumber, id: id);

      state = AsyncValue.data(_patientUserEntity?.data);
      return _patientUserEntity;
    } catch (e) {
      state = const AsyncValue.data(null);

      AppToast.errorToast(e.toString());
    }
    return null;
  }

  Future<bool> verifyOtp(String? otp) async {
    bool isVerified = false;
    if (_patientUserEntity != null && _patientUserEntity?.code == 200) {
      if (_patientUserEntity?.data?.randCode == otp) {
        await savePatientInfo(_patientUserEntity?.data ?? PatientInfo());
        isVerified = true;
        await fetchSavedPatientInfo();
        reset();
      } else {
        isVerified = false;
      }
    } else {
      isVerified = false;
    }
    return isVerified;
  }

  Future<PatientUserEntity?> registerNewPatient(
      RequiredRegisterationPatientInfo requiredRegisterPatientInfo) async {
    try {
      _patientUserEntity = null;
      state = const AsyncValue.loading();
      _patientUserEntity = await ref
          .read(authenticationRepositoryProvider.notifier)
          .registerNewPatient(requiredRegisterPatientInfo);
      state = AsyncValue.data(_patientUserEntity?.data);
      return _patientUserEntity;
    } catch (e) {
      state = const AsyncValue.data(null);
      AppToast.errorToast(e.toString());
    }
    return null;
  }

  void reset() {
    _patientUserEntity = null;
    _userPhoneNumber = null;
  }

  void logout() {
    var patientBox = Hive.box(_patientInfoBox);
    _patientUserEntity = null;
    _userPhoneNumber = null;
    patientBox.clear();
    patientBox.close();
    ref.invalidateSelf();
  }
}
