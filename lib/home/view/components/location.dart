import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/shared.dart';
import 'package:google_fonts/google_fonts.dart';

class Location extends StatelessWidget {
  const Location({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      textStyle(14, AppColors.normalActiveGreyColor, FontWeight.w600,
          "Iraq, Baghdad", 1.5, 0),
      const SizedBox(
        width: 4,
      ),
      const Icon(
        Icons.keyboard_arrow_down,
        color: AppColors.normalActiveGreyColor,
      )
    ]);
  }
}
