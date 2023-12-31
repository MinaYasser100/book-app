import 'package:book/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

class NewsetBooksInitial extends NewsetBooksState {}

class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;

  const NewsetBooksSuccess(this.books);
}

class NewsetBooksLoading extends NewsetBooksState {}

class NewsetBooksFailure extends NewsetBooksState {
  final String errorMessage;

  const NewsetBooksFailure(this.errorMessage);
}
