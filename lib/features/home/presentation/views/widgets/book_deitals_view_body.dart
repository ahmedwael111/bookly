import 'package:booklyapp/features/home/presentation/views/widgets/coustm_appBar_deitalis.dart';
import 'package:flutter/material.dart';

class BookDeitailsViewBody extends StatelessWidget {
  const BookDeitailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [CoustomBookDetailsAppBar()],
        ),
      ),
    );
  }
}

