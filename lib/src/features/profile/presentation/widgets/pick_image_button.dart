import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:remain/src/core/constants/app_strings.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/assets_helper.dart';

class PickImageButton extends StatefulWidget {
  const PickImageButton({super.key, required this.lang});
  final String? lang;
  @override
  State<PickImageButton> createState() => _PickImageButtonState();
}

class _PickImageButtonState extends State<PickImageButton> {
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
    final (theme, _) = appSettingsRecord(context);

    return GestureDetector(
      onTap: pickImage,
      child: SizedBox(
        height: 15.sw,
        width: 18.sw,
        child: Stack(
          alignment: widget.lang == AppStrings.en.toLowerCase()
              ? Alignment.bottomRight
              : Alignment.bottomLeft,
          children: [
            Align(
              alignment: widget.lang == AppStrings.en.toLowerCase()
                  ? Alignment.bottomLeft
                  : Alignment.bottomRight,
              child: Container(
                height: 15.sw,
                width: 15.sw,
                decoration: BoxDecoration(
                    color: theme.white, borderRadius: AppSizes.borderRadius8),
                child: image == null
                    ? Image.asset(
                        AssetsHelper.doctorFrame,
                        fit: BoxFit.cover,
                      )
                    : Image.file(File(pickedImage ?? '')),
              ),
            ),
            CircleAvatar(
              radius: 4.sw,
              backgroundColor: theme.greyD9D9,
              child: Icon(
                Icons.camera_alt,
                color: theme.dark2E,
                size: 5.sw,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
