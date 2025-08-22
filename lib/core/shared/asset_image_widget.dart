import 'package:flutter/material.dart';

class ImageAssetWidget extends StatelessWidget {
  final String imagePath;
  final BoxFit fit;
  const ImageAssetWidget({
    super.key,
    required this.imagePath,
    required this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: fit,
    );
  }
}
