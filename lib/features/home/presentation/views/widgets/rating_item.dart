import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.yellow,
          ),
          SizedBox(
            width: 6,
          ),
          Text('4.8'),
          SizedBox(
            width: 3,
          ),
          Text('(434)')
        ],
      ),
    );
  }
}
