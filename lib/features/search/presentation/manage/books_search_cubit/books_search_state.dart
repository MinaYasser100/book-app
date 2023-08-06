import 'package:book/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class BooksSearchState extends Equatable {
  const BooksSearchState();
  @override
  List<Object> get props => [];
}

class BooksSearchInitial extends BooksSearchState {}

class BooksSearchLoading extends BooksSearchState {}

class BooksSearchFailure extends BooksSearchState {
  final String errorMessage;

  const BooksSearchFailure(this.errorMessage);
}

class BooksSearchSuccess extends BooksSearchState {
  final List<BookModel> books;

  const BooksSearchSuccess(this.books);
}
