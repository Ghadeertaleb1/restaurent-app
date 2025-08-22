import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/core/shared/shared_style.dart';

class CatogaryContainerTab extends StatelessWidget {
  final bool isSelected;
  final String title;
  const CatogaryContainerTab({
    super.key,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      //width: 87,
      height: 29,
      decoration: isSelected
          ? BoxDecoration(
              color: AppColors.buttonColor,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  color: Color(0xFF000000).withOpacity(0.25),
                )
              ],
            )
          : BoxDecoration(),
      child: customText(
        14,
        isSelected ? Colors.white : AppColors.backgroundColor,
        isSelected ? FontWeight.w600 : FontWeight.normal,
        title,
        1.5,
        0,
        TextAlign.center,
      ),
    );
  }
}
