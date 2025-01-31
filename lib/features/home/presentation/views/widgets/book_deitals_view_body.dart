import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/core/utils/widgets/coustom_bottom.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_actions.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/costom_imageBook_item.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/coustm_appBar_deitalis.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/material.dart';

class BookDeitailsViewBody extends StatelessWidget {
  const BookDeitailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const CoustomBookDetailsAppBar(),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .2),
              child: const CoustomImageBookItem(),
            ),
            const SizedBox(
              height: 43,
            ),
            const Text(
              'The Jungle Book',
              style: Styles.textStyle30,
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
            const BookActions()
          ],
        ),
      ),
    );
  }
}
