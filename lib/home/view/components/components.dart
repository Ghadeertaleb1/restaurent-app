import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

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
      child: Text(title,
          textAlign: TextAlign.start,
          style: GoogleFonts.sora(
            fontSize: 14,
            height: 1.5,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            color: isSelected ? Colors.white : AppColors.backgroundColor,
          )),
    );
  }
}
