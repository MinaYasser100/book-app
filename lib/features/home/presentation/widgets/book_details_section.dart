import 'package:book/features/home/data/models/book_model/book_model.dart';
import 'package:book/features/home/helper/helper_method.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';
import 'books_action.dart';
import 'books_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 43.0,
        ),
        Text(
          autherMethod(bookModel),
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
          autherMethod(bookModel),
          textAlign: TextAlign.center,
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        BooksRating(
            mainAxisAlignment: MainAxisAlignment.center,
            rating: bookModel.volumeInfo.averageRating ?? 0,
            count: bookModel.volumeInfo.ratingsCount ?? 0),
        const SizedBox(
          height: 30.0,
        ),
        BooksAction(bookModel: bookModel),
      ],
    );
  }
}
