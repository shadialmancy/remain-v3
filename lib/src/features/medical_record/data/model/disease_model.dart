import 'package:freezed_annotation/freezed_annotation.dart';
part 'disease_model.freezed.dart';

part 'disease_model.g.dart';

@freezed
class DiseaseModel with _$DiseaseModel {
  factory DiseaseModel({String? diseaseName, String? yearsOfInjury}) =
      _DiseaseModel;

  factory DiseaseModel.fromJson(Map<String, dynamic> json) =>
      _$DiseaseModelFromJson(json);
}
