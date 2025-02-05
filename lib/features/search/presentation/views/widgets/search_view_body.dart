import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/search/presentation/maneger/searched_books_cubite/searched_books_cubit.dart';
import 'package:booklyapp/features/search/presentation/views/widgets/coustom_textField.dart';
import 'package:booklyapp/features/search/presentation/views/widgets/search_result_listView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            CoutomSearchTextField(
              onSubmitted: (p0) {
                BlocProvider.of<SearchedBooksCubit>(context)
                    .fetchSearchedBooks(category: p0);
              },
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
            const SizedBox(
              height: 22,
            ),
            const Expanded(child: SearchResultListView())
          ],
        ),
      ),
    );
  }
}
