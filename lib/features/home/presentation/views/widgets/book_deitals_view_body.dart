import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_deitails_section.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/coustm_appBar_deitalis.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/similer_books_section.dart';
import 'package:flutter/material.dart';

class BookDeitailsViewBody extends StatelessWidget {
  const BookDeitailsViewBody({super.key,});
  // final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CoustomBookDetailsAppBar(),
                  SizedBox(
                    height: 35,
                  ),
                  BookDeitalisSection(),
                  Expanded(
                    child: SizedBox(
                      height: 43,
                    ),
                  ),
                  SimilerBooksSection(),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
