import 'package:remain/src/features/booking_schedules/data/repositories_impl/booking_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../../data/models/availability_time_slots_dto/required_doctor_availability.dart';
import '../../data/models/booking_dto/booking_body/booking_body.dart';
import '../../data/models/calc_book_amount_body.dart';
import '../entities/all_patient_booking_entity.dart';
import '../entities/available_time_slots_entity.dart';
import '../entities/booking_response_entity.dart';
import '../entities/calc_amount_to_pay_response_entity.dart';
import '../entities/doctors_entity.dart';
import '../entities/specialities_entity.dart';
part 'booking_repository.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class BookingRepository extends _$BookingRepository {
  final BookingRepositoryImpl _bookingRepoImpl = BookingRepositoryImpl();
  @override
  FutureOr<void> build() {}

  Future<SpecialitiesEntity?> getSpecialities(bool isVideoSession,
      {int? userlocationId}) async {
    SpecialitiesEntity? specialitiesEntity;

    try {
      specialitiesEntity = await _bookingRepoImpl
          .getSpecialities(isVideoSession, userlocationId: userlocationId);
      return specialitiesEntity;
    } catch (e, stack) {
      throw CustomError('Failed to login', err: e, stackTrace: stack);
    }
  }

  Future<DoctorsEntity?> getDoctors(String specialityId,
      {int? userlocationId}) async {
    DoctorsEntity? doctorsEntity;
    bool isOnline = false;
    try {
      doctorsEntity = await _bookingRepoImpl.getDoctors(specialityId, isOnline,
          userlocationId: userlocationId);
      return doctorsEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get doctors', err: e, stackTrace: stack);
    }
  }

  Future<AllPatientBookingsEntity?> getAllPatientBookings(
      String patientId, int cancel) async {
    AllPatientBookingsEntity? allPatientBookingsEntity;

    try {
      allPatientBookingsEntity =
          await _bookingRepoImpl.getAllPatientBookings(patientId, cancel);
      return allPatientBookingsEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get all patient bookings',
          err: e, stackTrace: stack);
    }
  }

  Future<AvailableTimeSlotsEntity?> getTimesOfSelectedDoctors(
      RequiredDoctorAvailabiltyBody availabiltyBody) async {
    AvailableTimeSlotsEntity? availableTimeSlotsEntity;

    try {
      availableTimeSlotsEntity =
          await _bookingRepoImpl.getTimesOfSelectedDoctors(availabiltyBody);
      logger
          .i('getAvailabilityTimeSlots from repo::: $availableTimeSlotsEntity');
      return availableTimeSlotsEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get availability time slots',
          err: e, stackTrace: stack);
    }
  }

  ///[bOOKING]/// [cANCEL]/// [rESCHEDULE]///
  Future<BookingResponseEntity> addBooking(BookingBody bookingBody) async {
    try {
      BookingResponseEntity bookingResponseEntity;
      bookingResponseEntity = await _bookingRepoImpl.addBooking(bookingBody);
      return bookingResponseEntity;
    } catch (e, stack) {
      throw CustomError('Failed to book', err: e, stackTrace: stack);
    }
  }

  Future<bool> cancelBooking(String bookingId) async {
    try {
      return await _bookingRepoImpl.cancelBooking(bookingId);
    } catch (e, stack) {
      throw CustomError('Failed to cancel booking', err: e, stackTrace: stack);
    }
  }

  Future<bool> rescheduleBooking(String bookingId, String newTime) async {
    try {
      return await _bookingRepoImpl.rescheduleBooking(bookingId, newTime);
    } catch (e, stack) {
      throw CustomError('Failed to reschedule booking',
          err: e, stackTrace: stack);
    }
  }

  Future<CalcAmountToPayResponseEntity?> calcBookAmountToPay(
      CalcBookAmountBody calcBookAmountBody) async {
    try {
      CalcAmountToPayResponseEntity calcAmountToPayResponseEntity;

      calcAmountToPayResponseEntity =
          await _bookingRepoImpl.calcBookAmountToPay(calcBookAmountBody);
      return calcAmountToPayResponseEntity;
    } catch (e, stack) {
      throw CustomError('Failed to calculate amount to pay',
          err: e, stackTrace: stack);
    }
  }
}
