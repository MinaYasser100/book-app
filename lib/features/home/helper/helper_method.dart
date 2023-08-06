import '../data/models/book_model/book_model.dart';

String autherMethod(BookModel bookModel) {
  if (bookModel.volumeInfo.authors!.isNotEmpty) {
    return bookModel.volumeInfo.authors![0];
  } else {
    return 'NO Author';
  }
}
