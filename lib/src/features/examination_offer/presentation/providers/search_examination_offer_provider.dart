import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../offers/data/models/offers_dto/offers_data.dart';
import 'examination_offer_provider.dart';

part 'search_examination_offer_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class SearchExaminationOfferService extends _$SearchExaminationOfferService {
  @override
  FutureOr<List<OfferData?>?> build() {
    return onSearch();
  }

  List<OfferData?>? onSearch({String value = "", String lang = 'en'}) {
    final offerService = ref.watch(examinationOfferServiceProvider).value;
    List<OfferData?>? result = offerService?.data
        ?.where(
          (element) => lang == 'en'
              ? element.programName
                      ?.toLowerCase()
                      .contains(value.toLowerCase()) ??
                  false
              : element.programArbName
                      ?.toLowerCase()
                      .contains(value.toLowerCase()) ??
                  false,
        )
        .toList();
    state = AsyncValue.data(result);
    return result;
  }
}
