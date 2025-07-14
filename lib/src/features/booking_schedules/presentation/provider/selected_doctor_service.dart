import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/doctors_dto/doctor_data.dart';
import 'doctor_service.dart';
part 'selected_doctor_service.g.dart';

@Riverpod(keepAlive: true, dependencies: [DoctorService])
class SelectedDoctorService extends _$SelectedDoctorService {
  @override
  FutureOr<DoctorData?> build() async {
    state = const AsyncValue.loading();
    final doctor = ref.read(doctorServiceProvider.notifier).getSelectedDoctor();
    state = AsyncValue.data(doctor);
    return doctor;
  }
}
