import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/routes/app_router.dart';

import '../../../../core/constants/constants.dart';
import '../provider/fetch_transaction_wallet_provider.dart';
import '../widgets/widgets.dart';

class WalletUi extends ConsumerStatefulWidget {
  const WalletUi({super.key});

  @override
  ConsumerState<WalletUi> createState() => _WalletUiState();
}

class _WalletUiState extends ConsumerState<WalletUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(fetchTransactionWalletServiceProvider),
        data: (transactionWalletEntity) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WalletInfoContainer(),
                gapH32,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.1.sw),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            l10n.previousOperations,
                            style: theme.bodyMedium.copyWith(
                                color: theme.dark2E,
                                fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.router
                                  .push(const PreviousOperationRoute());
                            },
                            child: Text(
                              l10n.showAll,
                              style: theme.bodyMediumSecondary.copyWith(
                                  color: theme.primary,
                                  fontWeight: FontWeight.normal),
                            ),
                          )
                        ],
                      ),
                      gapH8,
                      // you can find the Wallet Empty design in this widgets folder
                      // you can implement it once there is a list
                      transactionWalletEntity?.data?.isEmpty ?? true
                          ? const WalletEmpty()
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                (transactionWalletEntity?.data?.length ?? 0) > 3
                                    ? transactionWalletEntity?.data
                                            ?.sublist(0, 3)
                                            .length ??
                                        0
                                    : transactionWalletEntity?.data?.length ??
                                        0,
                                (index) {
                                  return WalletHistoryInfoContainer(
                                    data: transactionWalletEntity?.data?[index],
                                  );
                                },
                              ),
                            )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
