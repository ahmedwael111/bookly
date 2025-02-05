import 'package:booklyapp/core/utils/list_books_allData_shimmer.dart';
import 'package:booklyapp/core/utils/widgets/coustom_Progress_indicator.dart';
import 'package:booklyapp/core/utils/widgets/coustom_error_Message.dart';
import 'package:booklyapp/features/home/presentation/manager/Newest_books_cubit/newest_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, indedx) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: BooksListViewItem(
                    bookModel: state.books[indedx],
                  ),
                );
              });
        } else if (state is NewestBooksFailure) {
          return CoustomErrorMessage(errorMessage: state.erroMessage);
        } else {
          return const BookListShimmer();
        }
      },
    );
  }
}
