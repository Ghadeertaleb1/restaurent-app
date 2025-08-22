import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentRow extends StatelessWidget {
  final String title;
  final String price;
  const PaymentRow({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(title,
          style: GoogleFonts.sora(
            fontSize: 14,
            color: AppColors.backgroundColor,
            fontWeight: FontWeight.normal,
            height: 1.2,
          )),
      Spacer(),
      Text(price,
          style: GoogleFonts.sora(
            fontSize: 14,
            color: AppColors.backgroundColor,
            fontWeight: FontWeight.w600,
            height: 1.2,
          )),
    ]);
  }
}
