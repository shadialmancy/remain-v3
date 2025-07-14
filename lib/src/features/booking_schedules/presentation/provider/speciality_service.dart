// ignore_for_file: provider_dependencies
import 'package:remain/src/features/booking_schedules/domain/entities/specialities_entity.dart';
import 'package:remain/src/features/booking_schedules/domain/repositories/booking_repository.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/doctor_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'speciality_service.g.dart';

@Riverpod(keepAlive: true)
class SpecialityService extends _$SpecialityService {
  @override
  FutureOr<SpecialitiesEntity?> build() async {
    state = const AsyncValue.loading();
    final specialities = await ref
        .read(bookingRepositoryProvider.notifier)
        .getSpecialities(false);
    if (specialities?.data?.isNotEmpty ?? false) {
      setSelectedSpecialityId(
          specialities?.data?.first.specId.toString() ?? '');

      await ref.read(doctorServiceProvider.notifier).getDoctors();
    }
    state = AsyncValue.data(specialities);
    return specialities;
  }

  String? _selectedSpecialityId;

  void setSelectedSpecialityId(String specialityId) {
    _selectedSpecialityId = specialityId;
    ref.notifyListeners();
  }

  String? getSelectedSpecialityId() => _selectedSpecialityId;
}
