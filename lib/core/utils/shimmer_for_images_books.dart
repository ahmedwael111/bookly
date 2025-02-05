import 'package:booklyapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmmerForImagesBooks extends StatelessWidget {
  final Color baseColor = const Color.fromARGB(255, 54, 40, 65);
  final Color highlightColor =
      kPrimaryColor; // kPrimaryColor should be passed from outside

  const ShimmmerForImagesBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics:
          const NeverScrollableScrollPhysics(), // Disable scrolling if inside another scrollable widget
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3 books per row
        childAspectRatio:
            0.65, // Adjust aspect ratio to match book cover proportions
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 3, // Show 6 placeholders
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: baseColor,
          highlightColor: highlightColor,
          child: Container(
            decoration: BoxDecoration(
              color: baseColor,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
      },
    );
  }
}
