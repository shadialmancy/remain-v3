import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/features/booking_schedules/data/models/all_patient_booking_dto/patient_booking_info.dart';
import 'package:remain/src/features/booking_schedules/domain/repositories/booking_repository.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/doctor_service.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/selected_appointment_service.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/selected_doctor_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../schedules_records/presentation/provider/schedule_service.dart';
part 'reschedule_booking_service.g.dart';

@Riverpod(keepAlive: true, dependencies: [
  SelectedAppointmentService,
  BookingRepository,
  DoctorService,
  SelectedAppointmentService,
  ScheduleService
])
class RescheduleBookingService extends _$RescheduleBookingService {
  @override
  FutureOr<PatientBookingInfo?> build() {
    return getBookingInfo();
  }

  PatientBookingInfo? _bookingInfo;
  PatientBookingInfo? getBookingInfo() => _bookingInfo;
  void saveBookingInfo(PatientBookingInfo? bookingInfo) {
    _bookingInfo = bookingInfo;
    state = const AsyncValue.loading();
    logger.d('bookingInfo from provider: $_bookingInfo');
    state = AsyncValue.data(_bookingInfo);
  }

  Future<bool> rescheduleBooking(String? bookingId) async {
    bool status = false;

    try {
      state = const AsyncValue.loading();

      String? newTime = ref
          .read(selectedAppointmentServiceProvider.notifier)
          .getSelectedTime()
          ?.timeSlot;
      logger.d('bookingId: $bookingId, newTime: $newTime');
      if (bookingId != null && newTime != null) {
        status = await ref
            .read(bookingRepositoryProvider.notifier)
            .rescheduleBooking(bookingId, newTime);
      }

      state = const AsyncValue.data(null);
      if (status) {
        ref.read(doctorServiceProvider.notifier).clearSelectedDoctor();
        ref.read(selectedAppointmentServiceProvider.notifier).clear();
        _bookingInfo = null;
        ref.invalidate(selectedDoctorServiceProvider);
      }
      ref.invalidate(scheduleServiceProvider);
      await ref.watch(scheduleServiceProvider.future);
      return status;
    } catch (e) {
      status = false;
      state = const AsyncValue.data(null);
      logger.e('Error while rescheduling booking: $e');
    }
    return false;
  }
}
