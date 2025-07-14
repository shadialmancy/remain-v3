import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/features/profile/presentation/provider/my_bills_service.dart';
import 'package:remain/src/features/profile/presentation/widgets/my_bill_body.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';

class MyBillsUi extends ConsumerStatefulWidget {
  const MyBillsUi({super.key});
  @override
  ConsumerState<MyBillsUi> createState() => _MyBillsUiState();
}

class _MyBillsUiState extends ConsumerState<MyBillsUi> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return AsyncValueWidget(
        value: ref.watch(myBillsServiceProvider),
        data: (myAllBills) {
          return myAllBills?.data?.isEmpty ?? true
              ? Center(
                  child: Text(
                  l10n.noDataAvailableNow,
                  style: theme.bodyMedium,
                ))
              : MyBillBody(
                  bills: myAllBills,
                );
        });
  }
}
