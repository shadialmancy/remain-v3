import 'package:remain/src/features/booking_schedules/data/models/availability_time_slots_dto/app_time.dart';
import 'package:remain/src/features/booking_schedules/data/models/availability_time_slots_dto/availability.dart';
import 'package:remain/src/features/booking_schedules/data/models/doctors_dto/doctor_data.dart';
import 'package:remain/src/features/booking_schedules/domain/repositories/booking_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../../data/models/availability_time_slots_dto/required_doctor_availability.dart';
import '../../domain/entities/available_time_slots_entity.dart';
import 'doctor_service.dart';

part 'selected_appointment_service.g.dart';

@Riverpod(keepAlive: true, dependencies: [DoctorService, BookingRepository])
class SelectedAppointmentService extends _$SelectedAppointmentService {
  @override
  FutureOr<List<AppTime>?> build() {
    return getTimesOfSelectedDay();
  }

  List<AppTime>? _appTimesOfSelectedDay = [];
  List<AppTime>? getTimesOfSelectedDay() {
    return _appTimesOfSelectedDay;
  }

  void setTimesOfSelectedDay(List<AppTime> appTimes) {
    _appTimesOfSelectedDay = appTimes;
    ref.notifyListeners();
  }

  void clearTimesOfSelectedDay() {
    _appTimesOfSelectedDay = [];
  }

  String? _selectedDate = '';
  String? getSelectedDate() {
    return _selectedDate;
  }

  void setSelectedDate(String? date) {
    _selectedDate = date;
    ref.notifyListeners();
  }

  RequiredDoctorAvailabiltyBody? _availabiltyBody;
  void setAvailabiltyBody() {
    DoctorData? selectedDoctor = DoctorData();
    selectedDoctor =
        ref.read(doctorServiceProvider.notifier).getSelectedDoctor();
    _availabiltyBody = RequiredDoctorAvailabiltyBody(
      doctorID: selectedDoctor?.doctorId.toString(),
      facilityID: selectedDoctor?.facilityId.toString(),
      fromDate: _selectedDate,
      toDAte: _selectedDate,
      serviceType: 'offline',
      isVedioSession: false,
    );
    logger.i('availabiltyBody::: $_availabiltyBody');
    ref.notifyListeners();
  }

  Future<AvailableTimeSlotsEntity?> getTimesOfSelectedDoctors() async {
    AvailableTimeSlotsEntity? availableTimeSlotsEntity;
    setAvailabiltyBody();
    state = const AsyncValue.loading();
    try {
      if (_availabiltyBody == null) {
        throw CustomError('RequiredDoctorAvailabiltyBody is null');
      }
      availableTimeSlotsEntity = await ref
          .read(bookingRepositoryProvider.notifier)
          .getTimesOfSelectedDoctors(_availabiltyBody!);
      if (availableTimeSlotsEntity != null) {
        setTimesOfSelectedDay(
            availableTimeSlotsEntity.data?.availabilities?.first.appTimes ??
                []);
        _selectedAvailability =
            availableTimeSlotsEntity.data?.availabilities?.first;
      }
      logger
          .i('getAvailabilityTimeSlots from repo::: $availableTimeSlotsEntity');
      state = AsyncValue.data(
          availableTimeSlotsEntity?.data?.availabilities?.first.appTimes ?? []);
      return availableTimeSlotsEntity;
    } catch (e, stack) {
      state = const AsyncValue.data([]);
      throw CustomError('Failed to get availability time slots',
          err: e, stackTrace: stack);
    }
  }

  AppTime? _selectedTime;
  AppTime? getSelectedTime() {
    return _selectedTime;
  }

  void setSelectedTime(AppTime? time) {
    _selectedTime = time;
    ref.notifyListeners();
  }

  Availability? _selectedAvailability;

  Availability? getSelectedAvailability() {
    return _selectedAvailability;
  }

  void clear() {
    clearTimesOfSelectedDay();
    setSelectedDate('');
    _availabiltyBody = null;
    _selectedTime = null;
    _selectedAvailability = null;
  }
}
