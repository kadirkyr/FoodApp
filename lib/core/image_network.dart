import 'package:flutter/material.dart';

import 'constants.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({super.key, required this.image, this.width = Sizes.size8x, this.height = Sizes.size8x});
  final String image;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        image,
        fit: BoxFit.contain,
        height: height,
        width: width,
      ),
    );
  }
}
