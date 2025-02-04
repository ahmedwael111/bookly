import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_actions.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/costom_imageBook_item.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/material.dart';

class BookDeitalisSection extends StatelessWidget {
  const BookDeitalisSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CoustomImageBookItem(imageUrl: 'https://www.google.com/imgres?q=image&imgurl=https%3A%2F%2Fgratisography.com%2Fwp-content%2Fuploads%2F2024%2F11%2Fgratisography-augmented-reality-800x525.jpg&imgrefurl=https%3A%2F%2Fgratisography.com%2F&docid=YAe2I9AqIHgndM&tbnid=gmPO6ub_oOcLkM&vet=12ahUKEwjo9Y2k46iLAxXkVqQEHZCQI3UQM3oECBsQAA..i&w=800&h=525&hcb=2&ved=2ahUKEwjo9Y2k46iLAxXkVqQEHZCQI3UQM3oECBsQAA',),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontSize: 40),
        ),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
          opacity: .7,
          child: Text(
            'Rudyard kepling',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 21,
        ),
        const RatingItem(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 40,
        ),
        const BookActions(),
      ],
    );
  }
}
