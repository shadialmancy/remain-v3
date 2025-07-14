import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/specialities_dto/specialities_data_item.dart';
import 'speciality_service.dart';

part 'search_specialty_provider.g.dart';

@Riverpod(
  keepAlive: true,
  dependencies: [],
)
class SearchSpecialtyService extends _$SearchSpecialtyService {
  @override
  FutureOr<List<SpecialitiesDataItem?>?> build() {
    return onSearch();
  }

  // SpecialtyFilter? _specialtyFilter;
  // setSpecialtyFilter (SpecialtyFilter? value) {
  //   _specialtyFilter = value;
  // }

  List<SpecialitiesDataItem?>? onSearch(
      {String value = "", String lang = 'en'}) {
    final specialityService = ref.watch(specialityServiceProvider).value;
    List<SpecialitiesDataItem?>? result = specialityService?.data
        ?.where(
          (element) => lang == 'en'
              ? element.engName?.toLowerCase().contains(value.toLowerCase()) ??
                  false
              : element.arbName?.contains(value.toLowerCase()) ?? false,
        )
        .toList();

    state = AsyncValue.data(result);
    return result;
  }
}
