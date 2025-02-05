import 'package:booklyapp/core/utils/errors.dart';
import 'package:booklyapp/core/utils/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepos {
  Future<Either<Failuer, List<BookModel>>> fetchSearchedBooks(
      {required String category});
}
