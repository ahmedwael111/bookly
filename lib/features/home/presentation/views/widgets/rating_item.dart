import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingItem extends StatelessWidget {
  const RatingItem(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.avrageRating,
      required this.ratingCount});
  final MainAxisAlignment mainAxisAlignment;
  final int avrageRating;
  final int ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          avrageRating.toString(),
          style: Styles.textStyle18,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          '(${ratingCount.toString()})',
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
