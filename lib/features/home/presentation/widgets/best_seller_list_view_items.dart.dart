import 'package:book/core/widgets/custom_error_widget.dart';
import 'package:book/features/home/presentation/manage/newset_books_cubit/newset_books_cubit.dart';
import 'package:book/features/home/presentation/manage/newset_books_cubit/newset_books_state.dart';
import 'package:book/features/home/shimmer/shimmer_newset_list_view_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'book_list_view_item.dart';

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>
                  BookListViewItem(bookModel: state.books[index]),
              itemCount: state.books.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
            ),
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const ShimmerNewsetListviewItems();
        }
      },
    );
  }
}
