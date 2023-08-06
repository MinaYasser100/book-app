import 'package:book/features/home/data/repos/home_repo.dart';
import 'package:book/features/search/presentation/manage/books_search_cubit/books_search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksSearchCubit extends Cubit<BooksSearchState> {
  BooksSearchCubit(this.homeRpo) : super(BooksSearchInitial());
  final HomeRpo homeRpo;

  Future<void> fetchBooksSearch({required String booksSearch}) async {
    emit(BooksSearchLoading());
    var result = await homeRpo.fetchSearchBooks(booksSearch: booksSearch);
    result.fold((failure) {
      emit(BooksSearchFailure(failure.errorMessage));
    }, (books) {
      emit(BooksSearchSuccess(books));
    });
  }
}
