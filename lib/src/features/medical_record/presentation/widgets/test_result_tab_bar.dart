import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';
import '../providers/test_result_tabbar_provider.dart';

class TestResultTabBar extends ConsumerStatefulWidget {
  const TestResultTabBar({super.key});

  @override
  ConsumerState<TestResultTabBar> createState() => _TestResultTabBarState();
}

class _TestResultTabBarState extends ConsumerState<TestResultTabBar> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(testResultTabbarServiceProvider.notifier).currentIndex = 0;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final testResultService =
        ref.watch(testResultTabbarServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(testResultTabbarServiceProvider),
        data: (currentIndex) {
          return Container(
              padding: EdgeInsets.symmetric(horizontal: 2.sw, vertical: 0.5.sh),
              decoration: BoxDecoration(
                color: theme.greyFA,
                border: Border.all(color: theme.whiteF2),
                borderRadius: AppSizes.borderRadius4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        testResultService.onPageChange(0);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 2.sw),
                        decoration: currentIndex == 0
                            ? BoxDecoration(
                                color: theme.primary,
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          theme.blue15.withValues(alpha: 0.20),
                                      blurRadius: 20,
                                      offset: const Offset(4, 4))
                                ],
                                borderRadius: AppSizes.borderRadius4)
                            : null,
                        child: Text(
                          l10n.laboratory,
                          style: currentIndex == 0
                              ? theme.labelMedium.copyWith(
                                  color: theme.primaryBackground,
                                  fontWeight: FontWeight.w600)
                              : theme.labelMedium.copyWith(
                                  color: theme.grey99,
                                  fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        testResultService.onPageChange(1);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 2.sw),
                        decoration: currentIndex == 1
                            ? BoxDecoration(
                                color: theme.primary,
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          theme.blue15.withValues(alpha: 0.20),
                                      blurRadius: 20,
                                      offset: const Offset(4, 4))
                                ],
                                borderRadius: AppSizes.borderRadius4)
                            : null,
                        child: Text(
                          l10n.radiology,
                          style: currentIndex == 1
                              ? theme.labelMedium.copyWith(
                                  color: theme.primaryBackground,
                                  fontWeight: FontWeight.w600)
                              : theme.labelMedium.copyWith(
                                  color: theme.grey99,
                                  fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                ],
              ));
        });
  }
}
