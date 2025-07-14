import 'package:flutter/material.dart';
import 'package:remain/src/core/widgets/cached_images.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DoctorImage extends StatelessWidget {
  const DoctorImage({super.key, required this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    if (image == null) {
      return CachedImages(
        img: '',
        widget: Container(
          width: 18.6.screenWidth,
          height: 8.2.screenHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.09),
                spreadRadius: 0,
                blurRadius: 3,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Icon(
            Icons.person,
            size: 18.6.screenWidth,
            color: Colors.grey,
          ),
        ),
      );
    }
    return CachedImages(
      img: image,
      widget: Container(
        width: 18.6.screenWidth,
        height: 8.2.screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image ?? ''),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.09),
              spreadRadius: 0,
              blurRadius: 3,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Image.network(
          image ?? '',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
