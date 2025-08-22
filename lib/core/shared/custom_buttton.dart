import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/core/shared/shared_style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const CustomButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        width: 327,
        decoration: BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.only(top: 32, left: 24, right: 24),
        child: Center(
            child: customText(16, AppColors.secondaryColor, FontWeight.w600,
                text, 1.5, 0, TextAlign.center)),
      ),
    );
  }
}
