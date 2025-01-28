import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/coustom_appBar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/featured_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CostoumAppBar(),
          FeaturedListView(),
          SizedBox(
            height: 45,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

