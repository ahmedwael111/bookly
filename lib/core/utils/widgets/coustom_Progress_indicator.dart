import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      color: Colors.orange,
      // backgroundColor: Colors.red,
      strokeWidth: 5,
      strokeAlign: 2,
    ));
  }
}
