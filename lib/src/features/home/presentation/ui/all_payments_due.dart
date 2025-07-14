import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:remain/l10n/generated/l10n.dart';
import 'package:remain/src/core/themes/themes.dart';
import 'package:remain/src/core/widgets/async_value_widget.dart';
import 'package:remain/src/features/home/providers/user_payments_due_service.dart';
import 'package:remain/src/features/medical_record/presentation/providers/fetch_documents_download_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/routes/app_router.dart';
import '../../../profile/presentation/provider/my_bills_service.dart';
import '../../../profile/presentation/widgets/my_bills_card.dart';
import '../../widgets/widgets.dart';

class AllPaymentsDueUi extends ConsumerStatefulWidget {
  const AllPaymentsDueUi({super.key});

  @override
  ConsumerState<AllPaymentsDueUi> createState() => _AllPaymentsDueState();
}

class _AllPaymentsDueState extends ConsumerState<AllPaymentsDueUi> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final reportRef = ref.read(fetchDocumentsDownloadServiceProvider.notifier);

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.2.screenWidth),
            child: PaymentsDueTabs(
              selectedIndex: selectedTab,
              onTabSelected: (index) {
                setState(() {
                  selectedTab = index;
                });
              },
            ),
          ),
          gapH16,
          if (selectedTab == 0)
            _buildPaymentsDueList(
              l10n: l10n,
              theme: theme,
            )
          else
            _buildPreviousPaymentsList(
              l10n: l10n,
              theme: theme,
              reportRef: reportRef,
            ),
        ],
      ),
    );
  }

  Widget _buildPaymentsDueList(
      {required AppLocalizations l10n, required FlutterFlowTheme theme}) {
    return AsyncValueWidget(
      value: ref.watch(userPaymentsDueServiceProvider),
      data: (userPaymentsDue) {
        if (userPaymentsDue == null || userPaymentsDue.data!.isEmpty) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Center(
              child: Text(
                '${l10n.noPaymentsDueAtTheMoment}!',
                style: theme.labelLarge.copyWith(
                  color: theme.redApple,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        }
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: userPaymentsDue.data?.length ?? 0,
          separatorBuilder: (context, index) => gapH16,
          itemBuilder: (context, index) {
            final paymentDue = userPaymentsDue.data?[index];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
              child: PaymentsDueCard(userPaymentsDue: paymentDue),
            );
          },
        );
      },
    );
  }

  Widget _buildPreviousPaymentsList(
      {AppLocalizations? l10n,
      FlutterFlowTheme? theme,
      required FetchDocumentsDownloadService reportRef}) {
    return AsyncValueWidget(
        value: ref.watch(myBillsServiceProvider),
        data: (myAllBills) {
          return myAllBills?.data?.isEmpty ?? true
              ? Center(
                  child: Text(
                  l10n?.noDataAvailableNow ?? '',
                  style: theme?.bodyMedium,
                ))
              : ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: myAllBills?.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    final bill = myAllBills?.data?[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.4.sw,
                        vertical: 1.6.sh,
                      ),
                      child: MyBillsCard(
                        billData: bill,
                        onView: () async {
                          ProgressDialog pd = ProgressDialog(context: context);
                          pd.show(
                            msg: l10n?.fileIsOpening ?? '',
                            backgroundColor: theme?.whiteColor ?? Colors.white,
                            borderRadius: radius12,
                            msgColor: theme?.primary ?? Colors.blue,
                            progressBgColor: theme?.primary ?? Colors.blue,
                            progressValueColor: theme?.white ?? Colors.white,
                          );
                          await reportRef.getDocumentsToDownload(
                            value: bill?.thId.toString(),
                            spName: bill?.reportSpName,
                            rptID: bill?.rptId,
                          );
                          pd.close();
                          if (reportRef.getDocument() != null) {
                            if (context.mounted) {
                              context.router.push(const PdfPreviewRoute());
                            }
                          }
                        },
                      ),
                    );
                  },
                );
        });
  }
}
