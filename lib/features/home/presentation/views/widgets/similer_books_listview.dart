import 'package:booklyapp/features/home/presentation/views/widgets/costom_imageBook_item.dart';
import 'package:flutter/material.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 10),
              child: CoustomImageBookItem(imageUrl: 'https://www.google.com/imgres?q=image&imgurl=https%3A%2F%2Fgratisography.com%2Fwp-content%2Fuploads%2F2024%2F11%2Fgratisography-augmented-reality-800x525.jpg&imgrefurl=https%3A%2F%2Fgratisography.com%2F&docid=YAe2I9AqIHgndM&tbnid=gmPO6ub_oOcLkM&vet=12ahUKEwjo9Y2k46iLAxXkVqQEHZCQI3UQM3oECBsQAA..i&w=800&h=525&hcb=2&ved=2ahUKEwjo9Y2k46iLAxXkVqQEHZCQI3UQM3oECBsQAA',),
            );
          }),
    );
  }
}
