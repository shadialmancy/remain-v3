// ignore_for_file: invalid_annotation_target

import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/doctors_dto/doctor_data.dart';
import '../../data/models/doctors_dto/doctors_dto.dart';
part 'doctors_entity.freezed.dart';
part 'doctors_entity.g.dart';

@freezed
class DoctorsEntity with _$DoctorsEntity {
  factory DoctorsEntity({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<DoctorData>? data,
  }) = _DoctorsEntity;

  factory DoctorsEntity.fromJson(Map<String, dynamic> json) =>
      _$DoctorsEntityFromJson(json);

  factory DoctorsEntity.generateFake({int numOfFakeData = 3}) => DoctorsEntity(
        data: List.generate(
          numOfFakeData,
          (index) => DoctorData(
            arbName: Faker().randomGenerator.numberOfLength(20),
            engName: Faker().randomGenerator.numberOfLength(20),
            facilityName: Faker().randomGenerator.numberOfLength(10),
            specialityArbName: Faker().randomGenerator.numberOfLength(10),
            specialityEngName: Faker().randomGenerator.numberOfLength(10),
            stars: 5,
            rates: 0,
          ),
        ),
      );
}

extension DoctorsEntityX on DoctorsEntity {
  DoctorsDto toDto() => DoctorsDto(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
