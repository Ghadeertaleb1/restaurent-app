import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

Text textStyle(double size, Color color, FontWeight weight, String text,
    double height, double letterSpacing) {
  return Text(
    text,
    style: GoogleFonts.sora(
        letterSpacing: letterSpacing,
        fontSize: size,
        color: color,
        fontWeight: weight,
        height: height),
  );
}

// main text style
Text mainTextStyle(
  double size,
  String text,
  Color color,
) {
  return Text(
    text,
    style: GoogleFonts.sora(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w600,
      height: 1.5,
    ),
  );
}

// second text style
TextStyle secondTextStyle(
    double height, FontWeight fontWeight, double fontSize) {
  return GoogleFonts.sora(
      letterSpacing: 0,
      height: 1.5,
      fontWeight: FontWeight.normal,
      fontSize: 14,
      color: AppColors.lighterGreyColor);
}

BoxShadow sharedShadow() {
  return BoxShadow(
    blurRadius: 4,
    offset: const Offset(0, 4),
    color: AppColors.backgroundColor.withOpacity(0.25),
  );
}
