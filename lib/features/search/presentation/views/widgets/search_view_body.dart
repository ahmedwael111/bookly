import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/search/presentation/views/widgets/coustom_textField.dart';
import 'package:booklyapp/features/search/presentation/views/widgets/search_result_listView.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            CoutomSearchTextField(),
            SizedBox(
              height: 12,
            ),
            Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 22,
            ),
            Expanded(child: SearchResultListView())
          ],
        ),
      ),
    );
  }
}
