import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:remain/src/features/booking_schedules/domain/entities/all_patient_booking_entity.dart';
import 'package:remain/src/features/booking_schedules/domain/repositories/booking_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'schedule_service.g.dart';

@Riverpod(keepAlive: true, dependencies: [BookingRepository])
class ScheduleService extends _$ScheduleService {
  @override
  FutureOr<AllPatientBookingsEntity?> build() async {
    state = const AsyncValue.loading();
    final patientData = await ref.read(authUiServiceProvider.future);
    if (patientData != null) {
      final allBookings = await ref
          .read(bookingRepositoryProvider.notifier)
          .getAllPatientBookings(patientData.id.toString(), 0);
      state = AsyncValue.data(allBookings);
      return allBookings;
    }
    return null;
  }
}
