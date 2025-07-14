import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/wallet/presentation/provider/recharge_balance_wallet_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/locale_constants.dart';

class AmountSelection extends ConsumerStatefulWidget {
  const AmountSelection({
    super.key,
  });

  @override
  ConsumerState<AmountSelection> createState() => _AmountSelectionState();
}

class _AmountSelectionState extends ConsumerState<AmountSelection> {
  //int? currentIndex;
  int length = 8;
  String? lang;
  Future<void> init() async {
    await getLocale().then((value) {
      setState(() {
        lang = value.languageCode == 'en' ? AppStrings.en : AppStrings.ar;
      });
    });
  }

  @override
  void initState() {
    init();
    // WidgetsBinding.instance.addPostFrameCallback((_){
    //   ref.watch(rechargeBalanceWalletServiceProvider.notifier).setAmount(((1)* 100).toString());
    // });
    // currentIndex = ref
    //     .read(rechargeBalanceWalletServiceProvider.notifier)
    //     .getCurrentIndexSelected();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final rechargeBalanceWalletService =
        ref.watch(rechargeBalanceWalletServiceProvider.notifier);
    int? currentIndex = rechargeBalanceWalletService.getCurrentIndexSelected();
    return AsyncValueWidget(
        value: ref.watch(rechargeBalanceWalletServiceProvider),
        data: (_) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                length,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                        rechargeBalanceWalletService
                            .setCurrentIndexSelected(index);
                        rechargeBalanceWalletService
                            .setAmountController(TextEditingController());
                        rechargeBalanceWalletService
                            .setAmount(((index + 1) * 100).toString());
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          right: lang == AppStrings.ar && index == 0
                              ? 5.1.sw
                              : 2.sw,
                          left: lang == AppStrings.en && index == 0
                              ? 5.1.sw
                              : 2.sw),
                      padding: EdgeInsets.all(2.sw),
                      decoration: BoxDecoration(
                          color: currentIndex == index
                              ? theme.secondaryBorderColor
                              : theme.greyFA,
                          border: Border.all(
                              color: currentIndex == index
                                  ? theme.primary
                                  : theme.greyD8),
                          borderRadius: AppSizes.borderRadius4),
                      child: Text("${(index + 1) * 100} ${l10n.sr}",
                          style: currentIndex == index
                              ? theme.labelMedium.copyWith(
                                  color: theme.primary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12)
                              : theme.labelMedium.copyWith(
                                  color: theme.grey8080,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12)),
                    ),
                  );
                },
              ),
            ),
          );
        });
  }
}
