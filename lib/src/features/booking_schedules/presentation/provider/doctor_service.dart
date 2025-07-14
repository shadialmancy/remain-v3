// ignore_for_file: provider_dependencies
import 'package:remain/src/core/constants/app_constants.dart';
import 'package:remain/src/features/booking_schedules/data/models/doctors_dto/doctor_data.dart';
import 'package:remain/src/features/booking_schedules/domain/entities/doctors_entity.dart';
import 'package:remain/src/features/booking_schedules/domain/repositories/booking_repository.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/speciality_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'doctor_service.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class DoctorService extends _$DoctorService {
  @override
  FutureOr<DoctorsEntity?> build() async {
    state = const AsyncValue.loading();
    return await getDoctors();
  }

  Future<DoctorsEntity?> getDoctors() async {
    try {
      state = const AsyncValue.loading();
      setSelectedDoctor(null);
      String? specialityId = ref
          .read(specialityServiceProvider.notifier)
          .getSelectedSpecialityId();
      if (specialityId != null) {
        final doctors = await ref
            .read(bookingRepositoryProvider.notifier)
            .getDoctors(specialityId);
        state = AsyncValue.data(doctors);
        return doctors;
      } else {
        state = const AsyncValue.data(null);
        return null;
      }
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
