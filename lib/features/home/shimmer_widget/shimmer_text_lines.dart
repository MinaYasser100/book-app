import 'package:flutter/material.dart';

import 'shimmer_line.dart';

class ShimmerTextLines extends StatelessWidget {
  const ShimmerTextLines({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerLine(width: double.infinity),
        SizedBox(height: 12),
        ShimmerLine(width: double.infinity),
        SizedBox(height: 12),
        ShimmerLine(width: 150),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShimmerLine(width: 80),
            ShimmerLine(width: 80),
          ],
        )
      ],
    );
  }
}
