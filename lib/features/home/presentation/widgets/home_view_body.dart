import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view_items.dart.dart';
import 'custom_app_bar.dart';
import 'show_books_list_view_items.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              ShowBooksListViewItems(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50.0,
                      ),
                      child: Text(
                        'Newset Books',
                        style: Styles.textStyle18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListViewItems(),
        ),
      ],
    );
  }
}
