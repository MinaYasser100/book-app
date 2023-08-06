import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLine extends StatelessWidget {
  const ShimmerLine({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: width,
      child: Shimmer.fromColors(
          baseColor: Colors.grey[400]!,
          highlightColor: Colors.grey[300]!,
          child: Container(
            color: Colors.grey,
          )),
    );
  }
}
