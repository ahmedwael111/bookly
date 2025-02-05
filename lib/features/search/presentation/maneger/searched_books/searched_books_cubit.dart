import 'package:bloc/bloc.dart';
import 'package:booklyapp/core/utils/models/book_model/book_model.dart';
import 'package:booklyapp/features/search/data/repos/search_repos.dart';
import 'package:equatable/equatable.dart';

part 'searched_books_state.dart';

class SearchedBooksCubit extends Cubit<SearchedBooksState> {
  SearchedBooksCubit(this.searchRepo) : super(SearchedBooksInitial());
   final SearchRepos searchRepo;
  Future<void> fetchSearchedBooks({required String category}) async {
    emit(SearchedBooksLoading());
    var result = await searchRepo.fetchSearchedBooks(category:category );
    result.fold((failure) {
      emit(SearchedBooksFailure(failure.errMessage));
    }, (books) {
      emit(SearchedBooksSuccess(books));
    });
  }
}
