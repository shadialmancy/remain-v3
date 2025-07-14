import '../../../../core/api/apis.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../../core/helpers/session_manager.dart';
import '../models/all_patient_booking_dto/all_patient_bookings.dart';
import '../models/availability_time_slots_dto/available_time_slots_dto.dart';
import '../models/availability_time_slots_dto/required_doctor_availability.dart';
import '../models/booking_dto/booking_body/booking_body.dart';
import '../models/booking_dto/booking_response_dto.dart';
import '../models/calc_amount_to_pay_response/calc_amount_to_pay_response_dto.dart';
import '../models/calc_book_amount_body.dart';
import '../models/doctors_dto/doctors_dto.dart';
import '../models/specialities_dto/specialities_dto.dart';

abstract class BookingSource {
  Future<SpecialitiesDto> getSpecialities(bool isVideoSession,
      {int? userlocationId});
  Future<DoctorsDto> getDoctors(String specialityId, bool isOnline,
      {int? userlocationId});
  Future<AvailableTimeSlotsDto> getTimesOfSelectedDoctors(
      RequiredDoctorAvailabiltyBody availabiltyBody);
  Future<AllPatientBookingsDTO> getAllPatientBookings(
    String patientId,
    int cancel,
  );

  Future<BookingResponseDto> addBooking(BookingBody bookingBody);

  Future<bool> cancelBooking(String bookingId);
  Future<bool> rescheduleBooking(String bookingId, String newTime);

  Future<CalcAmountToPayResponseDto> calcBookAmountToPay(
      CalcBookAmountBody calcBookAmountBody);
}

class BookingSourceImpl implements BookingSource {
  @override
  Future<SpecialitiesDto> getSpecialities(bool isVideoSession,
      {int? userlocationId}) async {
    try {
      int locationId = await sessionManager.getChosenMedicalCenter();
      if (locationId == 0) {
        locationId = 2;
      }
      logger.i('getSpecialities locationId::: $locationId');
      if (userlocationId != null) {
        locationId = userlocationId;
      }
      final response = await BaseDioClient().dio.get(
        AppConstants.getSpecialitiesUrl,
        queryParameters: {
          AppStrings.locationId: locationId,
          AppStrings.isVideoSession: isVideoSession,
        },
      );
      return SpecialitiesDto.fromJson(response.data);
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<DoctorsDto> getDoctors(String specialityId, bool isOnline,
      {int? userlocationId}) async {
    int locationId = await sessionManager.getChosenMedicalCenter();
    if (locationId == 0) {
      locationId = 2;
    }
    if (userlocationId != null) {
      locationId = userlocationId;
    }
    var data = {
      AppStrings.specID: specialityId,
      AppStrings.locationId: locationId,
      AppStrings.isOnline: isOnline,
    };
    logger.i('getDoctors data::: $data');
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.getDoctorsUrl,
            data: data,
          );
      return DoctorsDto.fromJson(response.data);
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<AvailableTimeSlotsDto> getTimesOfSelectedDoctors(
      RequiredDoctorAvailabiltyBody availabiltyBody) async {
    try {
      logger.i('getAvailabilityTimeSlots data::: ${availabiltyBody.toJson()}');
      final response = await BaseDioClient().dio.post(
            AppConstants.getAvailabilityTimeSlotsUrl,
            data: availabiltyBody.toJson(),
          );
      if (response.data['code'] != 200) {
        return AvailableTimeSlotsDto(
          code: response.data['code'],
          errorMessage: response.data['error_message'],
          data: null,
        );
      }
      return AvailableTimeSlotsDto.fromJson(response.data);
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<AllPatientBookingsDTO> getAllPatientBookings(
      String patientId, int cancel) async {
    int? locationId = await sessionManager.getChosenMedicalCenter();
    final data = {
      AppStrings.patientID: patientId,
      AppStrings.cancel: cancel,
      AppStrings.locationId: locationId.toString(),
    };
    logger.i('getAllPatientBookings data::: $data');
    try {
      final response = await BaseDioClient().dio.get(
            AppConstants.getAllPatientBookingsUrl,
            queryParameters: data,
          );
      if (response.data['code'] != 200) {
        return AllPatientBookingsDTO(
          code: response.data['code'],
          errorMessage: response.data['error_message'],
          data: null,
        );
      }
      return AllPatientBookingsDTO.fromJson(response.data);
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<BookingResponseDto> addBooking(BookingBody bookingBody) async {
    logger.i('addBooking data::: ${bookingBody.toJson()}');
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.addBookingUrl,
            data: bookingBody.toJson(),
          );
      return BookingResponseDto.fromJson(response.data);
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<bool> cancelBooking(String bookingId) async {
    final data = {
      AppStrings.bookingId: bookingId,
    };
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.cancelBookingUrl,
            data: data,
          );
      return response.statusCode == 200;
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<bool> rescheduleBooking(String bookingId, String newTime) async {
    final data = {
      AppStrings.bookingId: bookingId,
      AppStrings.time: newTime,
    };
    logger.w(data);
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.rescheduleBookingUrl,
            data: data,
          );
      return response.statusCode == 200;
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<CalcAmountToPayResponseDto> calcBookAmountToPay(
      CalcBookAmountBody calcBookAmountBody) async {
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.calcAmountToPay,
            data: calcBookAmountBody.toJson(),
          );
      return CalcAmountToPayResponseDto.fromJson(response.data);
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
