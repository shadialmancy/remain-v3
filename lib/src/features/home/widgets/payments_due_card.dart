import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:remain/src/core/routes/app_router.dart';
import 'package:remain/src/core/widgets/primary_button.dart';
import 'package:remain/src/features/home/providers/user_payments_due_service.dart';
import 'package:remain/src/features/payments/data/models/user_payments_due_dto/payments_due_datum.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/constants.dart';

class PaymentsDueCard extends ConsumerWidget {
  const PaymentsDueCard({super.key, required this.userPaymentsDue});
  final PaymentsDueDatum? userPaymentsDue;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    final payRef = ref.watch(userPaymentsDueServiceProvider.notifier);
    return InkWell(
      onTap: () {
        payRef.setSelectedPaymentDue(userPaymentsDue);
        context.router.push(PaymentsDueDetailsRoute());
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 3.2.screenWidth,
          vertical: 1.5.screenHeight,
        ),
        decoration: BoxDecoration(
          color: theme.primaryBackground,
          borderRadius: BorderRadius.circular(12),
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                MdiIcons.clockTimeFive,
                color: theme.primary,
                size: 16.0,
              ),
              gapW8,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      () {
                        try {
                          DateTime dateTime = DateTime.parse(
                            userPaymentsDue?.transDate ?? '',
                          );

                          String weekday = DateFormat.EEEE().format(dateTime);
                          String day = DateFormat.d().format(dateTime);
                          String month = DateFormat.MMMM().format(dateTime);
                          String year = DateFormat.y().format(dateTime);
                          String hour = DateFormat.j().format(dateTime);

                          return '$weekday , $day $month $year - $hour';
                        } catch (e) {
                          return 'Invalid Date';
                        }
                      }(),
                      style: theme.labelLarge.copyWith(
                        color: theme.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    gapH4,
                    Text(
                      '${userPaymentsDue?.respCenter} - ${userPaymentsDue?.locationNmae}',
                      style: theme.labelSmall.copyWith(
                        color: theme.grey8080,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    gapH4,
                    Text(
                      '${userPaymentsDue?.totalAmount} ${l10n.sarWithoutS}',
                      style: theme.labelMedium.copyWith(
                        color: theme.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              gapW8,
              // Button aligned to bottom
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PrimaryButton(
                    onPressed: () {
                      payRef.setSelectedPaymentDue(userPaymentsDue);
                      context.router.push(PaymentsDueDetailsRoute());
                    },
                    title: l10n.pay,
                    width: 14.6.screenWidth,
                    height: 36,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
