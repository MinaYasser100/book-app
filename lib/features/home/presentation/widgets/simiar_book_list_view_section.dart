import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'similer_book_list_view.dart';

class SimiarBookListViewSection extends StatelessWidget {
  const SimiarBookListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilerBooksListView(),
      ],
    );
  }
}