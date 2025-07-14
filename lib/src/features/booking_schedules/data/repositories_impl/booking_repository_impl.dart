import 'package:remain/src/features/booking_schedules/data/models/all_patient_booking_dto/all_patient_bookings.dart';
import 'package:remain/src/features/booking_schedules/data/models/availability_time_slots_dto/available_time_slots_dto.dart';
import 'package:remain/src/features/booking_schedules/data/models/booking_dto/booking_response_dto.dart';
import 'package:remain/src/features/booking_schedules/data/models/calc_amount_to_pay_response/calc_amount_to_pay_response_dto.dart';
import 'package:remain/src/features/booking_schedules/data/models/doctors_dto/doctors_dto.dart';
import 'package:remain/src/features/booking_schedules/data/models/specialities_dto/specialities_dto.dart';
import 'package:remain/src/features/booking_schedules/domain/entities/specialities_entity.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../../domain/entities/all_patient_booking_entity.dart';
import '../../domain/entities/available_time_slots_entity.dart';
import '../../domain/entities/booking_response_entity.dart';
import '../../domain/entities/calc_amount_to_pay_response_entity.dart';
import '../../domain/entities/doctors_entity.dart';
import '../datasource/booking_datasource.dart';
import '../models/availability_time_slots_dto/required_doctor_availability.dart';
import '../models/booking_dto/booking_body/booking_body.dart';
import '../models/calc_book_amount_body.dart';

abstract class BaseBookingRepository {
  Future<SpecialitiesEntity> getSpecialities(bool isVideoSession,
      {int? userlocationId});
  Future<DoctorsEntity> getDoctors(String specialityId, bool isOnline,
      {int? userlocationId});
  Future<AllPatientBookingsEntity> getAllPatientBookings(
    String patientId,
    int cancel,
  );

  Future<AvailableTimeSlotsEntity> getTimesOfSelectedDoctors(
      RequiredDoctorAvailabiltyBody availabiltyBody);
  Future<BookingResponseEntity> addBooking(BookingBody bookingBody);

  Future<bool> cancelBooking(String bookingId);
  Future<bool> rescheduleBooking(String bookingId, String newTime);

  Future<CalcAmountToPayResponseEntity> calcBookAmountToPay(
      CalcBookAmountBody calcBookAmountBody);
}

class BookingRepositoryImpl implements BaseBookingRepository {
  final BookingSourceImpl dataSource = BookingSourceImpl();

  @override
  Future<SpecialitiesEntity> getSpecialities(bool isVideoSession,
      {int? userlocationId}) async {
    try {
      return await dataSource
          .getSpecialities(isVideoSession, userlocationId: userlocationId)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get specialities',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<DoctorsEntity> getDoctors(String specialityId, bool isOnline,
      {int? userlocationId}) async {
    try {
      return await dataSource
          .getDoctors(specialityId, isOnline, userlocationId: userlocationId)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get doctors', err: e, stackTrace: stack);
    }
  }

  @override
  Future<AllPatientBookingsEntity> getAllPatientBookings(
      String patientId, int cancel) async {
    try {
      return await dataSource
          .getAllPatientBookings(patientId, cancel)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get all patient bookings',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<AvailableTimeSlotsEntity> getTimesOfSelectedDoctors(
      RequiredDoctorAvailabiltyBody availabiltyBody) async {
    try {
      return await dataSource
          .getTimesOfSelectedDoctors(availabiltyBody)
          .then((value) {
        logger.f(value.toString());
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get availability time slots',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<BookingResponseEntity> addBooking(BookingBody bookingBody) async {
    try {
      return await dataSource.addBooking(bookingBody).then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to add booking', err: e, stackTrace: stack);
    }
  }

  @override
  Future<bool> cancelBooking(String bookingId) async {
    try {
      return await dataSource.cancelBooking(bookingId);
    } catch (e, stack) {
      throw CustomError('Failed to cancel booking', err: e, stackTrace: stack);
    }
  }

  @override
  Future<bool> rescheduleBooking(String bookingId, String newTime) async {
    try {
      return await dataSource.rescheduleBooking(bookingId, newTime);
    } catch (e, stack) {
      throw CustomError('Failed to reschedule booking',
          err: e, stackTrace: stack);
    }
  }

  @override
  Future<CalcAmountToPayResponseEntity> calcBookAmountToPay(
      CalcBookAmountBody calcBookAmountBody) async {
    try {
      return await dataSource
          .calcBookAmountToPay(calcBookAmountBody)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to calculate amount to pay',
          err: e, stackTrace: stack);
    }
  }
}
