import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentRow extends StatelessWidget {
  const PaymentRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text("Price",
          style: GoogleFonts.sora(
            fontSize: 14,
            color: AppColors.backgroundColor,
            fontWeight: FontWeight.normal,
            height: 1.2,
          )),
      Spacer(),
      Text("\$ 4.00",
          style: GoogleFonts.sora(
            fontSize: 14,
            color: AppColors.backgroundColor,
            fontWeight: FontWeight.normal,
            height: 1.2,
          )),
    ]);
  }
}
