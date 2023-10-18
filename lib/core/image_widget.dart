import 'package:flutter/material.dart';

import '../products/language/constants.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent(
      {super.key, required this.image, this.width = Sizes.size200, this.height = Sizes.size200, this.color});
  final String image;
  final double width;
  final double height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.contain,
      height: height,
      width: width,
      color: color,
    );
  }
}
