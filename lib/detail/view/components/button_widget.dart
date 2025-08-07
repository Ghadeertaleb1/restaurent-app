import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/shared.dart';

class ButtonWidget extends StatelessWidget {
  final void onTap;
  final String text;
  final double width;
  final double height;
  const ButtonWidget({
    super.key,
    this.onTap,
    required this.text,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        decoration: BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.circular(16)),
        width: width,
        height: height,
        child: mainTextStyle(16, text, AppColors.white),
      ),
    );
  }
}
