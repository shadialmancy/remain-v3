import 'package:intl/intl.dart';
import 'package:remain/src/core/helpers/session_manager.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/authentication/data/models/pat_rel.dart';
import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:remain/src/features/booking_schedules/data/models/availability_time_slots_dto/availability.dart';
import 'package:remain/src/features/booking_schedules/data/models/booking_dto/booking_body/insurance.dart';
import 'package:remain/src/features/booking_schedules/data/models/booking_dto/booking_body/patient.dart';
import 'package:remain/src/features/booking_schedules/data/models/doctors_dto/doctor_data.dart';
import 'package:remain/src/features/booking_schedules/domain/repositories/booking_repository.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/doctor_service.dart';
import 'package:remain/src/features/booking_schedules/presentation/provider/selected_appointment_service.dart';
import 'package:remain/src/features/schedules_records/presentation/provider/schedule_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../data/models/availability_time_slots_dto/app_time.dart';
import '../../data/models/booking_dto/booking_body/booking_body.dart';
import '../../data/models/calc_book_amount_body.dart';
import '../../domain/entities/calc_amount_to_pay_response_entity.dart';
import 'medical_center_service.dart';
part 'booking_details_service.g.dart';

@Riverpod(keepAlive: true, dependencies: <Object>[
  DoctorService,
  SelectedAppointmentService,
  SelectedAppointmentService,
  SelectedAppointmentService,
  BookingRepository,
  BookingRepository,
  ScheduleService,
  BookingRepository,
  DoctorService,
  SelectedAppointmentService
])
class BookingDetailsService extends _$BookingDetailsService {
  @override
  FutureOr<void> build() {
    setSelectedAvailability();
    setSelectedDoctor();
    setSelectedTime();
    setSelectedDate();
    setSelectedCenter();
  }

  DoctorData? _selectedDoctor;
  DoctorData? getSelectedDoctor() => _selectedDoctor;
  void setSelectedDoctor() {
    _selectedDoctor =
        ref.read(doctorServiceProvider.notifier).getSelectedDoctor();
    ref.notifyListeners();
  }

  Availability? _selectedAvailability;
  Availability? getSelectedAvailability() => _selectedAvailability;
  void setSelectedAvailability() {
    _selectedAvailability = ref
        .read(selectedAppointmentServiceProvider.notifier)
        .getSelectedAvailability();
    ref.notifyListeners();
  }

  AppTime? _selectedTime;
  AppTime? getSelectedTime() {
    return _selectedTime;
  }

  void setSelectedTime() {
    _selectedTime =
        ref.read(selectedAppointmentServiceProvider.notifier).getSelectedTime();
    ref.notifyListeners();
  }

  String? _selectedDate = '';
  String getSelectedDate() {
    return _selectedDate!;
  }

  void setSelectedDate() {
    _selectedDate =
        ref.read(selectedAppointmentServiceProvider.notifier).getSelectedDate();
    ref.notifyListeners();
  }

  String _selectedCenter = '';
  String getSelectedCenter() {
    return _selectedCenter;
  }

  void setSelectedCenter() {
    _selectedCenter =
        ref.read(medicalCenterServiceProvider.notifier).currentCenter ?? '';
    ref.notifyListeners();
  }

  PatRel? _patientData;
  PatRel? getPatientData() => _patientData;

  void setPatientData(PatRel patientData) {
    _patientData = patientData;
  }

  num _amountToPay = 0;
  num getAmountToPay() => _amountToPay;
  CalcAmountToPayResponseEntity? _calcAmountToPayResponseEntity;
  CalcAmountToPayResponseEntity? getCalcAmountToPayResponseEntity() =>
      _calcAmountToPayResponseEntity;

  Future<num?> calcAmountToPay(String bookingId) async {
    CalcBookAmountBody calcBookAmountBody = CalcBookAmountBody();
    final patientData = await ref.read(authUiServiceProvider.future);
    if (patientData != null) {
      calcBookAmountBody = CalcBookAmountBody(
        doctorId: _selectedDoctor?.doctorId.toString(),
        accountId: patientData.accountId.toString(),
        docSpecId: _selectedDoctor?.specId?.toString(),
        pateintId: patientData.id.toString(),
        transDate: DateFormat('yyyy-MM-dd', AppStrings.en.toLowerCase())
            .format(DateTime.now()),
        payMethod: patientData.isInsurance == true ? 'R' : 'C',
        serviceItemId: _selectedDoctor?.serviceInfo?.serviceId.toString() ?? '',
        serviceCatId: '22',
        bookingId: bookingId,
        admissionId: '',
        consultationTransHdrId: '',
        programId: '',
        inOut: 'O',
        userId: '',
        groupId: '',
        statusFlage: 'A',
        programVersionPatientId: '',
        quantity: '1',
      );
    }
    _calcAmountToPayResponseEntity = await ref
        .watch(bookingRepositoryProvider.notifier)
        .calcBookAmountToPay(calcBookAmountBody);
    _amountToPay = _calcAmountToPayResponseEntity?.data?.amount ?? 0;
    ref.notifyListeners();
    logger.d('Amount to Pay: $_amountToPay');
    return _amountToPay;
  }

  Future<bool> addBooking() async {
    bool isBooked = false;
    num locationId = await sessionManager.getChosenMedicalCenter();
    if (_patientData != null) {
      final bookingBody = BookingBody(
        doctorid: _selectedDoctor?.doctorId.toString(),
        facilityId: _selectedDoctor?.facilityId.toString(),
        serviceId: _selectedDoctor?.serviceInfo?.serviceId.toString(),
        time: '${_selectedTime?.timeSlot}',
        source: '',
        telemedicineUrl: '',
        patient: Patient(
          gender: _patientData?.sex ?? '',
          name: _patientData?.arbName ?? '',
          email: '',
          phone: _patientData?.telephones ?? '',
          dob: _patientData?.dob ?? '',
          patientDocumentId: _patientData?.fileNum.toString(),
          patientId: _patientData?.id.toString(),
          documentIdType: '',
          nationalityId: '',
        ),
        insurance: Insurance(
          payerId: '',
          planId: '',
          cardNumber: '',
          expiryDate: '',
        ),
        locationId: locationId,
      );
      try {
        await ref
            .watch(bookingRepositoryProvider.notifier)
            .addBooking(bookingBody)
            .then((value) async {
          {
            if (value.code == 200) {
              isBooked = true;
              ref.invalidate(scheduleServiceProvider);
              await ref.watch(scheduleServiceProvider.future);
            } else {
              isBooked = false;
              AppToast.errorToast(value.errorMessage ?? '');
            }
          }
        });
        return isBooked;
      } catch (e) {
        isBooked = false;
      }
    }
    return isBooked;
  }

  Future<bool> cancelBooking(String bookingId) async {
    bool isCanceled = false;
    try {
      isCanceled = await ref
          .watch(bookingRepositoryProvider.notifier)
          .cancelBooking(bookingId);
      ref.invalidate(scheduleServiceProvider);

      return isCanceled;
    } catch (e) {
      isCanceled = false;
    }
    return isCanceled;
  }

  void clearBookingDetails() {
    _selectedDoctor = null;
    _selectedAvailability = null;
    _selectedTime = null;
    _selectedDate = '';
    _selectedCenter = '';
    _patientData = null;
    _amountToPay = 0;
    ref.read(doctorServiceProvider.notifier).clearSelectedDoctor();
    ref.read(selectedAppointmentServiceProvider.notifier).clear();

    ref.notifyListeners();
  }
}
