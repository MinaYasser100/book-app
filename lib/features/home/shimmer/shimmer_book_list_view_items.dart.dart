import 'package:flutter/material.dart';
import '../shimmer_widget/shimmer_book_list_view_item.dart';

class ShimmerBookListViewItems extends StatelessWidget {
  const ShimmerBookListViewItems({
    super.key,
    required this.width,
    required this.height,
  });
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ShimmerBookListViewItem(
                    width: width,
                    height: height,
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
              itemCount: 10),
        )
      ],
    );
  }
}
