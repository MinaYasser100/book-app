import 'package:flutter/material.dart';
import 'shimmer_book_list_view_item.dart';
import 'shimmer_text_lines.dart';

class ShimmerNewsetListViewItem extends StatelessWidget {
  const ShimmerNewsetListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 120,
      child: Row(
        children: [
          ShimmerBookListViewItem(
            width: 90,
            height: 120,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: ShimmerTextLines(),
          )
        ],
      ),
    );
  }
}
