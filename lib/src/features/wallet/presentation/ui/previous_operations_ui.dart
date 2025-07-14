import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/home/widgets/custom_search_text_field.dart';
import 'package:remain/src/features/wallet/presentation/provider/search_wallet_provider.dart';

import '../../data/models/patient_payment_transactions_dto/patient_transactions_data.dart';
import '../widgets/widgets.dart';

class PreviousOperationsUi extends ConsumerStatefulWidget {
  const PreviousOperationsUi({super.key});

  @override
  ConsumerState<PreviousOperationsUi> createState() =>
      _PreviousOperationsUiState();
}

class _PreviousOperationsUiState extends ConsumerState<PreviousOperationsUi> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final searchService = ref.read(searchWalletServiceProvider.notifier);
      searchService.onSearch(value: '');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);
    final searchService = ref.watch(searchWalletServiceProvider.notifier);
    return AsyncValueWidget(
      value: ref.watch(searchWalletServiceProvider),
      data: (List<PatientTransactionsData?>? previousOperationList) {
        return SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 4.sh, horizontal: 5.1.sw),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              CustomSearchTextField(
                hint: l10n.searchForAnyOperation,
                controller: searchController,
                onChanged: (value) {
                  searchService.onSearch(value: value);
                },
              ),
              gapH24,
              Column(
                children: List.generate(
                  previousOperationList?.length ?? 0,
                  (index) {
                    // the variable will be changed with the
                    return WalletHistoryInfoContainer(
                      data: previousOperationList?[index],
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
