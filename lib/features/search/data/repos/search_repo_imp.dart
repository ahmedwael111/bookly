 import 'package:booklyapp/core/utils/api_servies.dart';
import 'package:booklyapp/core/utils/errors.dart';
import 'package:booklyapp/core/utils/models/book_model/book_model.dart';
import 'package:booklyapp/features/search/data/repos/search_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp implements SearchRepos {
  final ApiServies apiServies;

  SearchRepoImp(this.apiServies);
  @override
  Future<Either<Failuer, List<BookModel>>> fetchSearchedBooks({required String category}) async {
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