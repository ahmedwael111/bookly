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
            const SizedBox(
              height: 43,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SimilerBooksListView()
          ],
        ),
      ),
    );
  }
}

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 10),
              child: CoustomImageBookItem(),
            );
          }),
    );
  }
}
