// ignore_for_file: avoid_public_notifier_properties
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/disease_model.dart';
part 'disease_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class DiseaseService extends _$DiseaseService {
  @override
  FutureOr<List<DiseaseModel>> build() {
    return diseaseList;
  }

  List<DiseaseModel> diseaseList = [];
  List<DiseaseModel> getDiseaseList() => diseaseList;

  void addDisease(DiseaseModel model) {
    diseaseList.add(model);
    state = AsyncValue.data(diseaseList);
  }

  void removeDisease(DiseaseModel model) {
    diseaseList.remove(model);
    state = AsyncValue.data(diseaseList);
  }
}
