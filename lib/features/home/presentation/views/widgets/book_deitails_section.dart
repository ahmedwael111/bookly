import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_actions.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/costom_imageBook_item.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/material.dart';

class BookDeitalisSection extends StatelessWidget {
  const BookDeitalisSection({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CoustomImageBookItem(
              imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
        ),
        const SizedBox(
          height: 23,
        ),
        Text(
          bookModel.volumeInfo.title ?? '',
          style: Styles.textStyle20.copyWith(fontSize: 40),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const RatingItem(
          avrageRating: 0,
          ratingCount: 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
         BookActions(bookModel: bookModel,),
      ],
    );
  }
}
