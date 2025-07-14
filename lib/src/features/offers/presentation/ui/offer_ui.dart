// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remain/src/features/offers/domain/entities/offers_entity.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../../l10n/generated/l10n.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../booking_schedules/presentation/provider/medical_center_service.dart';
import '../../../home/widgets/widgets.dart';
import '../../widgets/widgets.dart';
import '../provider/offer_provider.dart';

class OfferUi extends ConsumerStatefulWidget {
  const OfferUi({super.key});

  @override
  ConsumerState<OfferUi> createState() => _OfferUiState();
}

class _OfferUiState extends ConsumerState<OfferUi> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref
          .watch(medicalCenterServiceProvider.notifier)
          .addToCenterList(AppLocalizations.of(context));
      // await getAllOffers();
      // ref.watch(medicalCenterServiceProvider.notifier).currentCenterID == 0
      //     ? checkChosenMedicalCenter(context)
      //     : null;
    });
    super.initState();
  }

  Future<void> getAllOffers() async {
    await ref
        .read(offerServiceProvider.notifier)
        .getAllOffers(locationsID: '06', specialtieID: '21');
  }

  @override
  Widget build(BuildContext context) {
    // final specialityRef = ref.read(specialityOfferServiceProvider.notifier);
    // _selectedSpeciality = ref
    //             .read(specialityOfferServiceProvider.notifier)
    //             .getSelectedSpecialityId() ==
    //         null
    //     ? 0
    //     : int.parse(ref
    //             .read(specialityOfferServiceProvider.notifier)
    //             .getSelectedSpecialityId() ??
    // '0');
    final (theme, l10n) = appSettingsRecord(context);
    return RefreshIndicator(
      onRefresh: () async {
        getAllOffers();
        setState(() {});
      },
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 5.3.screenWidth, vertical: 2.4.screenHeight),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(AssetsHelper.rtlLogo),
                  const CartDisplayCounter(),
                ],
              ),
            ),
            gapH24,
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 5.3.screenWidth, vertical: 2.4.screenHeight),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ChooseMedicalCenter(
                            additionalFunction: () {
                              ///  getAllOffers();
                            },
                          ),
                        ),
                        InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () {},
                          child:
                              SvgPicture.asset(AssetsHelper.notificationIcon),
                        ),
                      ],
                    ),
                    // gapH24,
                    // SizedBox(
                    //   height: 5.6.screenHeight,
                    //   child: ListView.builder(
                    //     scrollDirection: Axis.horizontal,
                    //     itemCount: specialtiesList.data?.length,
                    //     itemBuilder: (context, index) {
                    //       logger.i(
                    //           'selectedSpeciality: $_selectedSpeciality');
                    //       final speciality = specialtiesList.data?[index];
                    //       return Padding(
                    //         padding: EdgeInsets.symmetric(
                    //             horizontal: 1.6.screenWidth),
                    //         child: SpecialitiesCard(
                    //           title: _language == 'ar'
                    //               ? speciality?.arbName ?? ''
                    //               : speciality?.engName ?? '',
                    //           isSelected: _selectedSpeciality ==
                    //               speciality?.specId?.toInt(),
                    //           onTap: () async {
                    //             setState(() {
                    //               _selectedSpeciality =
                    //                   speciality?.specId?.toInt() ?? 0;
                    //               specialityRef.setSelectedSpecialityId(
                    //                   speciality?.specId?.toString() ??
                    //                       '');
                    //             });
                    //           },
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
                    // gapH16,
                  ],
                ),
              ),
            ),
            AsyncValueWidget(
                value: ref.watch(offerServiceProvider),
                errorWidget: (p0, p1) {
                  return Center(
                      child: Text(
                    'Error',
                    style: theme.bodyMedium,
                  ));
                },
                data: (OffersEntity? offerEntity) {
                  if (offerEntity?.data?.isEmpty ?? true) {
                    return Center(
                        child: Text(
                      l10n.thereIsNoOfferData,
                      style: theme.bodyMedium,
                    ));
                  }
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: offerEntity?.data?.length ?? 0,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // childAspectRatio: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.3.screenWidth,
                            vertical: 0.9.screenHeight),
                        child: OfferCard(
                          offerData: offerEntity?.data?[index],
                        ),
                      );
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
