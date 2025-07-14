import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:remain/src/core/helpers/assets_helper.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';

class InsuranceCardImage extends StatefulWidget {
  const InsuranceCardImage({super.key});

  @override
  State<InsuranceCardImage> createState() => _InsuranceCardImageState();
}

class _InsuranceCardImageState extends State<InsuranceCardImage> {
  XFile? image;
  String? pickedImage;
  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      pickedImage = image?.path;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.insuranceCardImage,
          style: theme.bodyMedium
              .copyWith(color: theme.dark2E, fontWeight: FontWeight.w500),
        ),
        gapH4,
        GestureDetector(
          onTap: pickImage,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 3.sh),
            decoration: BoxDecoration(
                color: theme.white,
                borderRadius: AppSizes.borderRadius8,
                border: Border.all(color: theme.greyD8)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AssetsHelper.uploadImageIcon),
                gapH8,
                pickedImage == null
                    ? Text(
                        l10n.uploadPictureOfYourInsuranceCardFromHere,
                        style: theme.labelMedium.copyWith(
                            color: theme.grey8080,
                            fontWeight: FontWeight.normal),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AssetsHelper.medicalRecordIcon),
                          gapW4,
                          Text(
                            pickedImage?.split('/').last ?? '',
                            style: theme.labelMedium.copyWith(
                                color: theme.grey8080,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      )
              ],
            ),
          ),
        )
      ],
    );
  }
}
