import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/l10n/generated/l10n.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/themes/themes.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/home/providers/user_payments_due_service.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PaymentDueDetailsUI extends ConsumerStatefulWidget {
  const PaymentDueDetailsUI({super.key});

  @override
  ConsumerState<PaymentDueDetailsUI> createState() =>
      _PaymentDueDetailsUIState();
}

class _PaymentDueDetailsUIState extends ConsumerState<PaymentDueDetailsUI> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return AsyncValueWidget(
        value: ref.watch(userPaymentsDueServiceProvider),
        data: (userPayments) {
          final selectedPayment = ref
              .watch(userPaymentsDueServiceProvider.notifier)
              .getSelectedPaymentDue();
          if (selectedPayment == null) {
            return Center(
              child: Text(
                'No payment due selected',
                style: FlutterFlowTheme.of(context).labelMedium,
              ),
            );
          }
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 5.2.screenWidth, vertical: 1.9.screenHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   l10n.bookingDetails,
                  //   style: theme.titleMedium.copyWith(
                  //     color: theme.dark2E,
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                  gapH16,
                  _detailsCard(
                    title: '${l10n.orderNum}ID',
                    value: selectedPayment.orderId.toString(),
                    theme: theme,
                    l10n: l10n,
                  ),
                  gapH8,
                  _detailsCard(
                    title: l10n.doctorName,
                    value: selectedPayment.doctorName ?? '',
                    theme: theme,
                    l10n: l10n,
                  ),
                  gapH8,

                  _detailsCard(
                    title: l10n.patientName,
                    value: selectedPayment.patientName ?? '',
                    theme: theme,
                    l10n: l10n,
                  ),

                  gapH8,
                  _detailsCard(
                    title: l10n.bookingDate,
                    value: selectedPayment.transDate?.split('T')[0] ?? '',
                    theme: theme,
                    l10n: l10n,
                  ),
                  gapH24,
                  Column(
                    children: List.generate(selectedPayment.orders?.length ?? 0,
                        (index) {
                      final order = selectedPayment.orders?[index];
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: theme.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xffD8D8D8),
                            width: 1,
                          ),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Column(
                          children: [
                            _detailsCard(
                              title: l10n.typeOfAnalysis,
                              value: order?.serviceName ?? '',
                              theme: theme,
                              l10n: l10n,
                              isPrice: false,
                            ),
                            gapH8,
                            _detailsCard(
                              title: l10n.price,
                              value: '${order?.totalPrice}',
                              theme: theme,
                              l10n: l10n,
                              isPrice: true,
                            ),
                            gapH8,
                            _detailsCard(
                              title: l10n.quantity,
                              value: order?.quantity.toString() ?? '',
                              theme: theme,
                              l10n: l10n,
                            ),
                            if (index <
                                (selectedPayment.orders?.length ?? 0) - 1)
                              gapH8,
                          ],
                        ),
                      );
                    }),
                  ),
                  gapH8,
                  _detailsCard(
                    title: l10n.paymentMethod,
                    value: selectedPayment.payMethod?.toUpperCase() ?? '',
                    theme: theme,
                    l10n: l10n,
                  ),
                  gapH8,
                  _detailsCard(
                    title: l10n.nationality,
                    value: selectedPayment.isSaudi == 'Yes'
                        ? l10n.saudi
                        : l10n.foreigner,
                    theme: theme,
                    l10n: l10n,
                  ),
                  gapH8,
                  _detailsCard(
                    title: l10n.phoneNumber,
                    value: selectedPayment.telephone ?? '',
                    theme: theme,
                    l10n: l10n,
                  ),
                  //gapH8,
                  // _detailsCard(
                  //   title: l10n.bookingDate,
                  //   value: selectedPayment.transDate?.split('T')[0] ?? '',
                  //   theme: theme,
                  // ),
                  gapH16,
                  _prices(
                    title: l10n.subTotal,
                    val: selectedPayment.totalAmount.toString(),
                    l10n: l10n,
                    theme: theme,
                  ),
                  gapH8,
                  _prices(
                    title: l10n.vat,
                    val: selectedPayment.vatAmount.toString(),
                    l10n: l10n,
                    theme: theme,
                  ),
                  gapH8,
                  _prices(
                    title: l10n.total,
                    val: selectedPayment.totalAmount.toString(),
                    l10n: l10n,
                    theme: theme,
                  ),
                  gapH16,
                  PrimaryButton(
                    onPressed: () {
                      context.router.push(CardPaymentsDueRoute());
                    },
                    title: l10n.continueToPayment,
                  ),
                ],
              ),
            ),
          );
        });
  }
}

Widget _detailsCard(
    {required String title,
    required String value,
    required FlutterFlowTheme theme,
    required AppLocalizations l10n,
    bool? isPrice = false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: theme.labelMedium.copyWith(
          color: theme.grey8080,
          fontWeight: FontWeight.w400,
        ),
      ),
      RichText(
        text: TextSpan(
          text: value,
          style: theme.labelMedium.copyWith(
            color: theme.dark2E,
            fontWeight: FontWeight.w500,
          ),
          children: isPrice == true
              ? [
                  TextSpan(
                    text: ' ${l10n.sarWithoutS}',
                    style: theme.labelMedium.copyWith(
                      color: theme.dark2E,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ]
              : [],
        ),
      ),
    ],
  );
}

Widget _prices(
    {required String title,
    required String val,
    required AppLocalizations l10n,
    required FlutterFlowTheme theme}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: theme.labelMedium.copyWith(
          color: theme.grey8080,
          fontWeight: FontWeight.w400,
        ),
      ),
      RichText(
        text: TextSpan(
          text: val,
          style: theme.titleSmall.copyWith(
            color: theme.dark2E,
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: ' ${l10n.sarWithoutS}',
              style: theme.labelMedium.copyWith(
                color: theme.dark2E,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      )
    ],
  );
}
