import 'package:book/features/home/shimmer_widget/shimmer_newset_list_view_item.dart';
import 'package:flutter/material.dart';

class ShimmerNewsetListviewItems extends StatelessWidget {
  const ShimmerNewsetListviewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const ShimmerNewsetListViewItem(),
        separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
        itemCount: 10);
  }
}
