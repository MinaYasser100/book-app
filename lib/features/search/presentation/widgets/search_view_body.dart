import 'package:book/core/utils/styles.dart';
import 'package:book/features/search/presentation/manage/books_search_cubit/books_search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_search_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String? textResearch;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(
            onSubmitted: (value) {
              fetchYourSearchMethod(textResearch, value, context);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }

  void fetchYourSearchMethod(
      String? textResearch, String value, BuildContext context) {
    textResearch = value;
    BlocProvider.of<BooksSearchCubit>(context)
        .fetchBooksSearch(booksSearch: textResearch);
  }
}
