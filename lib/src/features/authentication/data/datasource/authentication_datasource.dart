import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:remain/src/features/home/data/models/home_services/home_services_dto.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../../core/helpers/session_manager.dart';
import '../../../home/data/models/home_vital_signs_dto/home_vital_signs_dto.dart';
import '../models/patient_user_dto.dart';
import '../models/required_registeration_patient_info/required_registeration_patient_info.dart';

abstract class AuthenticationSource {
  Future<PatientUserDto> loginPatient({String? phoneNumber, String? id});
  Future<PatientUserDto?> registerNewPatient(
      RequiredRegisterationPatientInfo requiredRegisterPatientInfo);

  Future<HomeServicesDto> getUserHomeServices({int? id});
  Future<HomeVitalSignsDto> getUserHomeVitalSigns({int? id});
}

class AuthenticationSourceImpl implements AuthenticationSource {
  @override
  Future<PatientUserDto> loginPatient({String? phoneNumber, String? id}) async {
    String lang = await sessionManager.getLocale();
    var body = {
      AppStrings.patientId: '',
      AppStrings.loginType: 'id',
      AppStrings.loginCode: id,
      AppStrings.loginPhone: phoneNumber,
      AppStrings.fbToken: '',
      AppStrings.typeofDevice: Platform.isAndroid ? 'android' : 'ios',
      AppStrings.lang: lang.toUpperCase(),
    };
    logger.d('loginPatient body: $body');
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.loginApiUrl,
            data: body,
          );
      logger.d('loginPatient response: ${response.data}');
      if (response.statusCode == 200) {
        return PatientUserDto.fromJson(response.data);
      } else {
        throw CustomError(response.statusMessage ?? 'Error in loginPatient');
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<PatientUserDto?> registerNewPatient(
      RequiredRegisterationPatientInfo requiredRegisterPatientInfo) async {
    logger
        .d('registerNewPatient body: ${requiredRegisterPatientInfo.toJson()}');
    try {
      final response = await BaseDioClient().dio.post(
            AppConstants.registerApiUrl,
            data: requiredRegisterPatientInfo.toJson(),
            options: Options(followRedirects: false, headers: {
              HttpHeaders.contentTypeHeader: 'application/json',
            }),
          );
      if (response.statusCode == 200) {
        return PatientUserDto.fromJson(response.data);
      } else {
        Fluttertoast.showToast(
          msg: '',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        throw CustomError(
            response.statusMessage ?? 'Error in registerNewPatient');
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<HomeServicesDto> getUserHomeServices({int? id}) async {
    try {
      final response = await RemainDioClient().dio.get(
            '${AppConstants.getHomeServices}/$id',
          );
      logger.d('getUserHomeServices response: ${response.data}');
      if (response.statusCode == 200) {
        return HomeServicesDto.fromJson(response.data);
      } else {
        throw CustomError(
            response.statusMessage ?? 'Error in getUserHomeServices');
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<HomeVitalSignsDto> getUserHomeVitalSigns({int? id}) async {
    try {
      final response = await RemainDioClient().dio.get(
            '${AppConstants.getHomeVitalSigns}/$id',
          );
      logger.d('getUserHomeVitalSigns response: ${response.data}');
      if (response.statusCode == 200) {
        return HomeVitalSignsDto.fromJson(response.data);
      } else {
        throw CustomError(
            response.statusMessage ?? 'Error in getUserHomeVitalSigns');
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
