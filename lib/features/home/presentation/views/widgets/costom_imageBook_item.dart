import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CoustomImageBookItem extends StatelessWidget {
  const CoustomImageBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            // placeholder: (context, url) => const Center(
            //   child: CircularProgressIndicator(),
            // ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )),
    );
  }
}
