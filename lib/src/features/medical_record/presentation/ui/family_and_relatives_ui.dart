import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:remain/src/features/medical_record/presentation/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localizations.dart';

class FamilyAndRelativesUi extends ConsumerStatefulWidget {
  const FamilyAndRelativesUi({super.key});

  @override
  ConsumerState<FamilyAndRelativesUi> createState() =>
      _FamilyAndRelativesUiState();
}

class _FamilyAndRelativesUiState extends ConsumerState<FamilyAndRelativesUi> {
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(authUiServiceProvider),
        data: (authEntity) {
          return Padding(
            padding: EdgeInsets.all(5.1.sw),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: authEntity?.patRel?.isEmpty ?? true
                      ? Center(
                          child: Text(
                          l10n.noDataAvailableNow,
                          style: theme.bodyMedium,
                        ))
                      : Column(
                          children: List.generate(
                            authEntity?.patRel?.length ?? 0,
                            (index) {
                              return FamilyAndRelativesContainer(
                                data: authEntity?.patRel?[index],
                                lang: lang,
                              );
                            },
                          ),
                        ),
                ),
                // Align(
                //     alignment: Alignment.bottomCenter,
                //     child: PrimaryButton(
                //         onPressed: () {
                //           context.router.push(const AddFamilyMemberRoute());
                //         },
                //         title: l10n.addFamilyMember))
              ],
            ),
          );
        });
  }
}
