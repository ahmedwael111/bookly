import 'package:booklyapp/features/home/presentation/views/widgets/newest_book_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, indedx) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            // child: NewestBooksListViewItem(),
            child: Text('data'),
          );
        });
  }
}
