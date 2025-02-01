import 'package:booklyapp/core/utils/api_servies.dart';
import 'package:booklyapp/core/utils/errors.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

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
      return left(ServerFailuer());
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeatcherdBooks() {
    // TODO: implement fetchFeatcherdBooks
    throw UnimplementedError();
  }
}
