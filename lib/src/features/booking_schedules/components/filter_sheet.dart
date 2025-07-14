import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/features/booking_schedules/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../core/constants/constants.dart';

class FilterSheet extends ConsumerStatefulWidget {
  const FilterSheet({super.key});

  @override
  ConsumerState<FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends ConsumerState<FilterSheet> {
  final List<int> _genderSelection = [];
  // int _timeSelection = -1;
  int _isOnline = -1;
  // SpecialtyFilter? _specialtyFilter;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.2.sw, vertical: 2.7.sh),
        //height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH24,
            Text(
              l10n.gender,
              style: theme.titleSmall.copyWith(
                color: theme.dark2E,
                fontWeight: FontWeight.w500,
              ),
            ),
            gapH16,
            Row(
              children: [
                Expanded(
                  child: ChooseCheckboxTile(
                    title: l10n.doctorMale,
                    value: _genderSelection.contains(0),
                    onChanged: (value) {
                      if (_genderSelection.contains(0)) {
                        setState(() {
                          _genderSelection.remove(0);
                        });
                      } else {
                        setState(() {
                          _genderSelection.add(0);
                        });
                      }
                    },
                  ),
                ),
                Expanded(
                  child: ChooseCheckboxTile(
                    title: l10n.doctorFemale,
                    value: _genderSelection.contains(1),
                    onChanged: (value) {
                      if (_genderSelection.contains(1)) {
                        setState(() {
                          _genderSelection.remove(1);
                        });
                      } else {
                        setState(() {
                          _genderSelection.add(1);
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
            gapH32,
            // Text(
            //   l10n.availableTime,
            //   style: theme.titleSmall.copyWith(
            //     color: theme.dark2E,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            // gapH16,
            // Wrap(
            //   runSpacing: 10, // Vertical spacing between rows
            //   children: List.generate(
            //     AppStrings.availableTime(l10n).length,
            //     (index) => SizedBox(
            //       width: MediaQuery.of(context).size.width / 2 -
            //           20, // Half the screen width minus padding
            //       child: ChooseCheckboxTile(
            //         title: AppStrings.availableTime(l10n)[index],
            //         value: _timeSelection == index,
            //         onChanged: (value) {
            //           setState(() {
            //             _timeSelection = index;
            //           });
            //         },
            //       ),
            //     ),
            //   ),
            // ),
            // gapH32,
            Text(
              l10n.virtualClinic,
              style: theme.titleSmall.copyWith(
                color: theme.dark2E,
                fontWeight: FontWeight.w500,
              ),
            ),
            gapH16,
            Row(
              children: [
                Expanded(
                  child: ChooseCheckboxTile(
                    title: l10n.onlineTime,
                    value: _isOnline == 1,
                    onChanged: (value) {
                      setState(() {
                        _isOnline = 1;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ChooseCheckboxTile(
                    title: l10n.timeInClinic,
                    value: _isOnline == 0,
                    onChanged: (value) {
                      setState(() {
                        _isOnline = 0;
                      });
                    },
                  ),
                ),
              ],
            ),
            gapH48,
            gapH24,
            ApplySearchButton(
              onPressed: () {
                // _specialtyFilter = SpecialtyFilter(
                //   gender: _genderSelection,
                //   isOnline: _isOnline == 0 ? false : true
                // );
                // ref.watch(searchSpecialtyServiceProvider.notifier).setSpecialtyFilter(_specialtyFilter);
                context.router.maybePop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
