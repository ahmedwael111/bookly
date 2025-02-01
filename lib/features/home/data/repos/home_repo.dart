// reposetry pattern
import 'package:booklyapp/core/utils/errors.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> fetchFeatcherdBooks();
  Future<Either<Failuer, List<BookModel>>> fetchBestSellerBooks();
}
