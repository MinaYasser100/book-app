import 'package:book/core/widgets/custom_error_widget.dart';
import 'package:book/features/home/presentation/manage/similar_books_cubit/similar_books_cubit.dart';
import 'package:book/features/home/presentation/manage/similar_books_cubit/similar_books_state.dart';
import 'package:book/features/home/shimmer/shimmer_book_list_view_items.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: ListView.builder(
            itemCount: state.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(
                right: 10.0,
              ),
              child: CustomBookImage(
                imageUrl:
                    state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
              ),
            ),
          ),
        );
      } else if (state is SimilarBooksFailure) {
        return CustomErrorWidget(errorMessage: state.errorMessage);
      } else {
        return ShimmerBookListViewItems(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.15,
        );
      }
    });
  }
}
