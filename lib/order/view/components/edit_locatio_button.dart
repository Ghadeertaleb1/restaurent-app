import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/core/shared/shared_style.dart';
import 'package:flutter_svg/svg.dart';

class EditLocationButton extends StatelessWidget {
  final String title;
  final String icon;
  const EditLocationButton({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.lighterGreyColor, width: 1),
          boxShadow: [
            //sharedShadow(),
          ]),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            icon,
            width: 10.99,
            height: 11.01,
          ),
          SizedBox(width: 8),
          Text(
            title,
            // "Edit Address",
            style: secondTextStyle(1.2, FontWeight.normal, 12),
          ),
        ],
      ),
    );
  }
}
