import 'package:book/core/widgets/custom_error_widget.dart';
import 'package:book/features/search/presentation/manage/books_search_cubit/books_search_cubit.dart';
import 'package:book/features/search/presentation/manage/books_search_cubit/books_search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../home/presentation/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksSearchCubit, BooksSearchState>(
        builder: (context, state) {
      if (state is BooksSearchSuccess) {
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
              BookListViewItem(bookModel: state.books[index]),
          itemCount: state.books.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
        );
      } else if (state is BooksSearchFailure) {
        return CustomErrorWidget(errorMessage: state.errorMessage);
      } else {
        return Container();
      }
    });
  }
}
