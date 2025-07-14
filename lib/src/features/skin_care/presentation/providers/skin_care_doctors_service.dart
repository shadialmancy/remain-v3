// ignore_for_file: provider_dependencies
import 'package:remain/src/core/constants/app_strings.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/speciality_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/constants/constants.dart';
import '../../../booking_schedules/data/models/doctors_dto/doctor_data.dart';
import '../../../booking_schedules/domain/entities/doctors_entity.dart';
import '../../../booking_schedules/domain/repositories/booking_repository.dart';

part 'skin_care_doctors_service.g.dart';

@Riverpod(keepAlive: true)
class SkinCareDoctorsService extends _$SkinCareDoctorsService {
  @override
  FutureOr<DoctorsEntity?> build() async {
    state = const AsyncValue.loading();
    //await getSpecialities();
    return await getDoctors();
  }

  final int _skinCareLocationId = 6;

  Future<String?> getSpecialities() async {
    String? specialityId;
    try {
      final specialities = await ref
          .read(bookingRepositoryProvider.notifier)
          .getSpecialities(false, userlocationId: _skinCareLocationId);
      if (specialities?.data?.isNotEmpty ?? false) {
        specialityId = specialities?.data
                ?.where((element) {
                  return element.engName == AppStrings.dermatology;
                })
                .first
                .specId
                ?.toString() ??
            '';
        logger.i('Speciality ID: $specialityId');
        ref
            .read(specialityServiceProvider.notifier)
            .setSelectedSpecialityId(specialityId);
      }
      return specialityId;
    } catch (e) {
      return null;
    }
  }

  Future<DoctorsEntity?> getDoctors() async {
    try {
      state = const AsyncValue.loading();
      setSelectedDoctor(null);
      // String? specialityId = ref
      //     .read(specialityServiceProvider.notifier)
      //     .getSelectedSpecialityId();
      String? specialityId = '21';
      final doctors = await ref
          .read(bookingRepositoryProvider.notifier)
          .getDoctors(specialityId, userlocationId: _skinCareLocationId);
      state = AsyncValue.data(doctors);
      return doctors;
      // if (specialityId != null) {
      //   final doctors = await ref
      //       .read(bookingRepositoryProvider.notifier)
      //       .getDoctors(specialityId, userlocationId: _skinCareLocationId);
      //   state = AsyncValue.data(doctors);
      //   return doctors;
      // } else {
      //   state = const AsyncValue.data(null);
      //   return null;
      // }
    } catch (e) {
      state = const AsyncValue.data(null);
    }
    throw Exception('Failed to get doctors');
  }

  DoctorData? _selectedDoctor;

  void setSelectedDoctor(DoctorData? doctor) {
    _selectedDoctor = doctor;
    //ref.notifyListeners();
  }

  DoctorData? getSelectedDoctor() {
    logger.i('Selected Doctor: $_selectedDoctor');
    return _selectedDoctor;
  }

  void clearSelectedDoctor() {
    _selectedDoctor = null;
    ref.notifyListeners();
  }
}
