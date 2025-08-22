import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/text.dart';
import 'package:flutter_application_1/core/shared/shared_style.dart';

class ButtonAddItem extends StatelessWidget {
  const ButtonAddItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      customText(18, AppColors.backgroundColor, FontWeight.w600,
          TextApp.coffeePrice, 1.5, 0, TextAlign.center),
      Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [sharedShadow()],
        ),
        child: const Icon(
          Icons.add,
          size: 16,
          color: AppColors.white,
        ),
      )
    ]);
  }
}
