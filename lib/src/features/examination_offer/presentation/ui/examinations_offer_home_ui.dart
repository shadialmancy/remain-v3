import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/examination_offer/presentation/providers/examination_offer_provider.dart';
import 'package:remain/src/features/examination_offer/presentation/providers/search_examination_offer_provider.dart';
import 'package:remain/src/features/examination_offer/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/localization/locale_constants.dart';
import '../../../home/widgets/widgets.dart';
import '../../../offers/data/models/offers_dto/offers_data.dart';
import '../../../offers/domain/entities/entities.dart';

class ExaminationsOfferHomeUi extends ConsumerStatefulWidget {
  const ExaminationsOfferHomeUi({super.key});

  @override
  ConsumerState<ExaminationsOfferHomeUi> createState() =>
      _ExaminationsOfferHomeUiState();
}

class _ExaminationsOfferHomeUiState
    extends ConsumerState<ExaminationsOfferHomeUi> {
  TextEditingController searchController = TextEditingController();

  String _language = '';
  Future<void> getAppLocale() async {
    _language = await getLocale().then((value) {
      return value.languageCode.toUpperCase();
    });
    setState(() {});
  }

  Future<void> getExaminationOffer() async {
    await ref
        .watch(examinationOfferServiceProvider.notifier)
        .getAllOffers(specialtieID: "28", locationsID: '02');
  }

  @override
  void initState() {
    getAppLocale();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        getExaminationOffer();
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final searchExaminationOffer =
        ref.watch(searchExaminationOfferServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(searchExaminationOfferServiceProvider),
        data: (List<OfferData?>? offerList) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw, top: 3.sh),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChooseMedicalCenter(
                  additionalFunction: () {
                    getExaminationOffer();
                  },
                ),
                gapH24,
                CustomSearchTextField(
                  hint: l10n.searchForExaminations,
                  controller: searchController,
                  onChanged: (p0) {
                    searchExaminationOffer.onSearch(
                        value: searchController.text, lang: _language);
                  },
                  filterEnable: const SizedBox(),
                ),
                gapH24,
                Text(
                  l10n.importantExaminations,
                  style: theme.bodyMediumSecondary
                      .copyWith(fontSize: 16, color: theme.dark2E),
                ),
                gapH8,
                AsyncValueWidget(
                    value: ref.watch(examinationOfferServiceProvider),
                    data: (OffersEntity? offersEntity) {
                      return offerList?.isEmpty ?? true
                          ? Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: 3.sh),
                                child: Text(
                                  l10n.noDataAvailableNow,
                                  style: theme.bodyMedium,
                                ),
                              ),
                            )
                          : GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: offersEntity?.data?.length ?? 0,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 0.95,
                                      crossAxisSpacing: 2.sw,
                                      mainAxisSpacing: 2.sw),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                    onTap: () {
                                      context.router.push(
                                          ExaminationsOfferDetailsRoute(
                                              offerData: offerList?[index]));
                                    },
                                    child: ExaminationContainer(
                                      offerData: offerList?[index],
                                      index: index,
                                    ));
                              },
                            );
                    })
              ],
            ),
          );
        });
  }
}
