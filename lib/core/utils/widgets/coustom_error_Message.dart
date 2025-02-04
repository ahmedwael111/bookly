import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CoustomErrorMessage extends StatelessWidget {
  const CoustomErrorMessage({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      errorMessage,
      style: Styles.textStyle16,
    ));
  }
}
