import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constants/constants.dart';

class AppRatingBar extends StatelessWidget {
  const AppRatingBar(
      {super.key, required this.rating, required this.numOfStars});
  final num? rating;
  final num? numOfStars;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Row(
      children: [
        RatingBarIndicator(
          rating: numOfStars?.toDouble() ?? 4.0,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          itemCount: 5,
          itemSize: 3.5.sw,
          direction: Axis.horizontal,
        ),
        gapW4,
        Text(
          '(${rating ?? '15'})',
          style: theme.labelSmall.copyWith(
            color: theme.dark2E,
          ),
        ),
      ],
    );
  }
}
