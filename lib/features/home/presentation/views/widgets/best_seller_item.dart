import 'package:booklyapp/core/utils/routes.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/costom_imageBook_item.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetailsView);
      },
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            CoustomImageBookItem(
              imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle24,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle16,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle30.copyWith(fontFamily: 'sfdf'),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .14,
                      ),
                       RatingItem(
                        avrageRating: 0 ,
                        ratingCount: 0,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
