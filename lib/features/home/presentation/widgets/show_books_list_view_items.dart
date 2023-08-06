import 'package:book/core/utils/app_router.dart';
import 'package:book/core/widgets/custom_error_widget.dart';
import 'package:book/features/home/presentation/manage/feature_books_cubit/feature_books_cubit.dart';
import 'package:book/features/home/presentation/manage/feature_books_cubit/feature_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../shimmer/shimmer_book_list_view_items.dart.dart';
import 'custom_book_image.dart';

class ShowBooksListViewItems extends StatelessWidget {
  const ShowBooksListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                itemCount: state.books.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(
                    right: 16.0,
                  ),
                  child: InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetails,
                          extra: state.books[index]);
                    },
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                    ),
                  ),
                ),
              ),
            ),
          );
        } else if (state is FeatureBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return ShimmerBookListViewItems(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.30,
          );
        }
      },
    );
  }
}
