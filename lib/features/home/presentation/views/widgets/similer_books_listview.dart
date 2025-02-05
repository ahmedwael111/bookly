import 'package:booklyapp/core/utils/widgets/coustom_Progress_indicator.dart';
import 'package:booklyapp/core/utils/widgets/coustom_error_Message.dart';
import 'package:booklyapp/features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/costom_imageBook_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if (state is SimilerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.width * .25,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CoustomImageBookItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                }),
          );
        } else if (state is SimilerBooksFailure) {
          return CoustomErrorMessage(errorMessage: state.erroMessage);
        } else {
          return const Indicator();
        }
      },
    );
  }
}
