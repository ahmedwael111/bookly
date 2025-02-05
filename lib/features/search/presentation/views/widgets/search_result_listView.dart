import 'package:booklyapp/core/utils/list_books_allData_shimmer.dart';
import 'package:booklyapp/core/utils/widgets/coustom_error_Message.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_item.dart';
import 'package:booklyapp/features/search/presentation/maneger/searched_books_cubite/searched_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchedBooksCubit, SearchedBooksState>(
      builder: (context, state) {
        if (state is SearchedBooksSuccess) {
          return ListView.builder(
              // physics: const NeverScrollableScrollPhysics(),
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
        } else if (state is SearchedBooksInitial) {
          return const CoustomErrorMessage(
              errorMessage: 'Search for any Books!');
        } else if (state is SearchedBooksFailure) {
          return CoustomErrorMessage(errorMessage: state.erroMessage);
        } else {
          return const BookListShimmer();
        }
      },
    );
  }
}
