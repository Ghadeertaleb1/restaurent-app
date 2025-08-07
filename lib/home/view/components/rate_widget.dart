import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/shared.dart';

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
        textStyle(9, Colors.white, FontWeight.w600, "4.9", 1.5, 0),
      ],
    );
  }
}
