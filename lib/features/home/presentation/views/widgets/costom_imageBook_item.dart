import 'package:flutter/material.dart';

class CoustomImageBookItem extends StatelessWidget {
  const CoustomImageBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/test1.png'))),
      ),
    );
  }
}
