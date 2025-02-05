import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/newest_list_view.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/coustom_appBar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/featured_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: CostoumAppBar(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  'Featcherd Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FeaturedListView(),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: NewestBooksListView(),
          ),
        )
      ],
    );
  }
}
