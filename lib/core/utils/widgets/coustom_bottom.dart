import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CoustomBottom extends StatelessWidget {
  const CoustomBottom({
    super.key,
    required this.borderRadius,
    required this.textcolor,
    required this.backgroundColor,
    required this.text,
    required this.fontWeight,
  });
  final BorderRadiusGeometry borderRadius;
  final Color textcolor;
  final Color backgroundColor;
  final String text;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            backgroundColor: backgroundColor),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle20.copyWith(
              color: textcolor, fontWeight: fontWeight, fontFamily: ''),
        ),
      ),
    );
  }
}
