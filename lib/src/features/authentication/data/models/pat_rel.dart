// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'pat_rel.freezed.dart';
part 'pat_rel.g.dart';

@HiveType(typeId: 2, adapterName: 'PatRelAdapter')
@freezed
class PatRel with _$PatRel {
  factory PatRel({
    @HiveField(0) @JsonKey(name: 'PatID') int? patID,
    @HiveField(1) @JsonKey(name: 'ID') int? id,
    @HiveField(2) @JsonKey(name: 'FileNum') int? fileNum,
    @HiveField(3) @JsonKey(name: 'Telephones') String? telephones,
    @HiveField(4) @JsonKey(name: 'IdentityNo') String? identityNo,
    @HiveField(5) @JsonKey(name: 'Sex') String? sex,
    @HiveField(6) @JsonKey(name: 'DOB') String? dob,
    @HiveField(7) @JsonKey(name: 'ArbName') String? arbName,
    @HiveField(8) @JsonKey(name: 'EngName') String? engName,
  }) = _PatRel;

  factory PatRel.fromJson(Map<String, dynamic> json) => _$PatRelFromJson(json);
}
