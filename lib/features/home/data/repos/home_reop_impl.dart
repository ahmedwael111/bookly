import 'package:booklyapp/core/utils/api_servies.dart';
import 'package:booklyapp/core/utils/errors.dart';
import 'package:booklyapp/core/utils/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReopImpl implements HomeRepo {
  final ApiServies apiServies;

  HomeReopImpl(this.apiServies);
  @override
  Future<Either<Failuer, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServies.get(
          endpoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioExeption(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeatcherdBooks() async {
    try {
      var data = await apiServies.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=subject:self development');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioExeption(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchSimilerBooks(
      {required String category}) async {
    try {
      var data = await apiServies.get(
          endpoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:$category');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {}
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioExeption(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
