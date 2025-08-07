import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/shared.dart';

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
    return Container(
      width: 327,
      height: isDetail ? 202 : 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [sharedShadow()],
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
