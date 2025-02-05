import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_deitals_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDeitailsView extends StatefulWidget {
  const BookDeitailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDeitailsView> createState() => _BookDeitailsViewState();
}

class _BookDeitailsViewState extends State<BookDeitailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilerBooksCubit>(context).fetchSimilerBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BookDeitailsViewBody(bookModel: widget.bookModel,),
    );
  }
}
