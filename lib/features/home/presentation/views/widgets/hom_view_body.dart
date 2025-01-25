import 'package:booklyapp/features/home/presentation/views/widgets/coustom_appBar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CostoumAppBar(), ListViewItem()],
    );
  }
}
