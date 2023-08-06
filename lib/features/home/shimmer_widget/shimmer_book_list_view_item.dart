import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBookListViewItem extends StatelessWidget {
  const ShimmerBookListViewItem({
    super.key,
    required this.width,
    required this.height,
  });
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Shimmer.fromColors(
          baseColor: Colors.grey[400]!,
          highlightColor: Colors.grey[300]!,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16),
            ),
          )),
    );
  }
}
