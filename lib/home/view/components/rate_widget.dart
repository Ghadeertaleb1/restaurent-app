import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/core/shared/shared_style.dart';

class RateWidget extends StatelessWidget {
  const RateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment:
      //     MainAxisAlignment.spaceAround,
      children: [
        const Icon(
          Icons.star,
          size: 12,
          color: AppColors.yellowColor,
        ),
        const SizedBox(
          width: 5,
        ),
        customText(
            9, Colors.white, FontWeight.w600, "4.9", 1.5, 0, TextAlign.end),
      ],
    );
  }
}
