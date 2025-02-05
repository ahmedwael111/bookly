import 'package:booklyapp/core/utils/routes.dart';
import 'package:booklyapp/core/utils/widgets/coustom_Progress_indicator.dart';
import 'package:booklyapp/core/utils/widgets/coustom_error_Message.dart';
import 'package:booklyapp/features/home/presentation/manager/featutred_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/costom_imageBook_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.width * .6,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRoutes.kBookDetailsView,
                            extra: state.books[index]);
                      },
                      child: CoustomImageBookItem(
                        imageUrl:
                            state.books[index].volumeInfo.imageLinks.thumbnail,
                      ),
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CoustomErrorMessage(errorMessage: state.erroMessage);
        } else {
          return const Indicator();
        }
      },
    );
  }
}
