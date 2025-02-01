import 'package:booklyapp/core/utils/errors.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeReopImpl implements HomeRepo{
  @override
  Future<Either<Failuer, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeatcherdBooks() {
    // TODO: implement fetchFeatcherdBooks
    throw UnimplementedError();
  }
}