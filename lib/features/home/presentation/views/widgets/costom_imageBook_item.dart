import 'package:flutter/material.dart';

class CoustomImageBookItem extends StatelessWidget {
  const CoustomImageBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(imageUrl))),
      ),
    );
  }
}
