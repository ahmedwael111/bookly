import 'package:booklyapp/core/utils/widgets/coustom_bottom.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: CoustomBottom(
              fontWeight: FontWeight.w900,
              text: '19.99 %',
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              textcolor: Colors.black,
            ),
          ),
          Expanded(
            child: CoustomBottom(
              fontWeight: FontWeight.w600,
              text: 'Free Preview',
              backgroundColor: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              textcolor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
