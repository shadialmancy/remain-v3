import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class CachedImages extends StatelessWidget {
  const CachedImages({
    super.key,
    required this.img,
    required this.widget,
    this.width,
    this.height,
  });
  final String? img;
  final Widget widget;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: img ?? '',
      imageBuilder: (context, imageProvider) => widget,
      placeholder: (context, url) => const LoadingProgrss(),
      errorWidget: (context, url, error) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: const Icon(Icons.error),
      ),
      width: width,
      height: height,
    );
  }
}
