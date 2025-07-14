import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/constants.dart';

class GenderOption extends ConsumerStatefulWidget {
  const GenderOption({super.key, required this.onGenderChange});
  final Function(String) onGenderChange;
  @override
  ConsumerState<GenderOption> createState() => _GenderOptionState();
}

class _GenderOptionState extends ConsumerState<GenderOption> {
  int? isMale;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    final List<String> genderItem = [l10n.male, l10n.female];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.gender,
          style: theme.bodyMedium
              .copyWith(color: theme.dark2E, fontWeight: FontWeight.w500),
        ),
        gapH4,
        Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isMale = 0;
                });
                widget.onGenderChange(genderItem[0].toLowerCase());
              },
              child: Row(
                children: [
                  Radio(
                    visualDensity: const VisualDensity(
                      horizontal: -4,
                      vertical: -4,
                    ),
                    activeColor: theme.primary,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 0,
                    groupValue: isMale,
                    onChanged: (int? value) {
                      setState(() {
                        isMale = 0;
                      });
                      widget.onGenderChange(genderItem[0].toLowerCase());
                    },
                  ),
                  Text(
                    genderItem[0],
                    style: theme.bodyMediumSecondary.copyWith(
                        color: isMale == 0 ? theme.dark2E : theme.grey99),
                  )
                ],
              ),
            ),
            gapW32,
            InkWell(
              onTap: () {
                setState(() {
                  isMale = 1;
                });
                widget.onGenderChange(genderItem[1].toLowerCase());
              },
              child: Row(
                children: [
                  Radio(
                    visualDensity: const VisualDensity(
                      horizontal: -4,
                      vertical: -4,
                    ),
                    activeColor: theme.primary,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 1,
                    groupValue: isMale,
                    onChanged: (int? value) {
                      setState(() {
                        isMale = 1;
                      });
                      widget.onGenderChange(genderItem[1].toLowerCase());
                    },
                  ),
                  Text(
                    genderItem[1],
                    style: theme.bodyMediumSecondary.copyWith(
                        color: isMale == 1 ? theme.dark2E : theme.grey99),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
