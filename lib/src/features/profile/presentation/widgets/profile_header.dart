import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localizations.dart';

class ProfileHeader extends ConsumerStatefulWidget {
  const ProfileHeader({super.key, this.onEditTap, this.disableEdit});
  final Function()? onEditTap;
  final bool? disableEdit;

  @override
  ConsumerState<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends ConsumerState<ProfileHeader> {
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
        data: (patientInfo) {
          return Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 15.sw,
                    width: 15.sw,
                    decoration: BoxDecoration(
                        borderRadius: AppSizes.borderRadius8,
                        boxShadow: [
                          BoxShadow(
                              color: theme.fullDark.withValues(alpha: 0.03),
                              blurRadius: 3)
                        ]),
                    child: Icon(
                      Icons.person,
                      color: theme.primary,
                      size: 10.sw,
                    ),
                  ),
                  gapW12,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          lang == AppStrings.en
                              ? patientInfo?.engName ?? ''
                              : patientInfo?.arbName ?? '',
                          style: theme.labelLarge,
                        ),
                        gapH8,
                        Text(
                          "${l10n.medicalFileNumber}: ${patientInfo?.fileNum}",
                          style: theme.labelMedium.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // widget.disableEdit ?? true ? Padding(
                  //   padding:  EdgeInsets.only(bottom: 3.sh),
                  //   child: GestureDetector(
                  //     onTap: widget.onEditTap ?? () {
                  //       context.router.push(const EditProfileRoute());
                  //     },
                  //     child: Icon(
                  //         Icons.mode_edit_outline_outlined,
                  //       color: theme.primary,
                  //     ),
                  //   ),
                  // ) : Container(),
                ],
              ),
            ],
          );
        });
  }
}
