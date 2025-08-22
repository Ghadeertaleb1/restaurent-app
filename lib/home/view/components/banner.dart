import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/shared/shared_style.dart';

class HomeBanner extends StatelessWidget {
  final String image;
  final bool isDetail;
  const HomeBanner({
    super.key,
    required this.isDetail,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 327 / (isDetail ? 202 : 140), // width / height
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [sharedShadow()],
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
