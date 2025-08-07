import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeContainer extends StatelessWidget {
  const SizeContainer({
    super.key,
  });

  get index => null;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 16, top: 16),
        width: 96,
        height: 41,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.normalActiveGreyColor),
          color: AppColors.white,
        ),
        child: index == 0
            ? Center(
                child: Text(
                  "S",
                  style: GoogleFonts.sora(
                      letterSpacing: 0,
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.lighterGreyColor),
                ),
              )
            : index == 1
                ? Center(
                    child: Text(
                      "M",
                      style: GoogleFonts.sora(
                          letterSpacing: 0,
                          height: 0,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColors.lighterGreyColor),
                    ),
                  )
                : Center(
                    child: Text(
                      "L",
                      style: GoogleFonts.sora(
                          letterSpacing: 0,
                          height: 0,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColors.lighterGreyColor),
                    ),
                  ));
  }
}
