import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';

class CircularButtonWidget extends StatelessWidget {
  // This widget is used to create a circular button with an icon inside.
  // The button is designed to be used in the order page for adding and removing items.

  final IconData icon;
  final void Function() onPressed;
  const CircularButtonWidget({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.lineColor, width: 1),
          // shape: BoxShape.circle,
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(
            icon,
            color: AppColors.lighterGreyColor,
            size: 16,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
