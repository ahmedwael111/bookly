import 'package:booklyapp/core/utils/routes.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/costom_imageBook_item.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetailsView);
      },
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            const CoustomImageBookItem(imageUrl: 'https://www.google.com/imgres?q=image&imgurl=https%3A%2F%2Fgratisography.com%2Fwp-content%2Fuploads%2F2024%2F11%2Fgratisography-augmented-reality-800x525.jpg&imgrefurl=https%3A%2F%2Fgratisography.com%2F&docid=YAe2I9AqIHgndM&tbnid=gmPO6ub_oOcLkM&vet=12ahUKEwjo9Y2k46iLAxXkVqQEHZCQI3UQM3oECBsQAA..i&w=800&h=525&hcb=2&ved=2ahUKEwjo9Y2k46iLAxXkVqQEHZCQI3UQM3oECBsQAA',),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: const Text(
                      'Harry Potter and the Goblet of fire',
                      style: Styles.textStyle24,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle16,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.99 &',
                        style: Styles.textStyle30.copyWith(fontFamily: 'sfdf'),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .14,
                      ),
                      const RatingItem()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
