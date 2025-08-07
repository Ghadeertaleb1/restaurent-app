import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/icons.dart';
import 'package:flutter_application_1/constant/shared.dart';
import 'package:flutter_application_1/home/view/components/item_detailes_tect.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  final bool isDetail;
  final String title;
  const CustomAppBar({
    super.key,
    required this.isDetail,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SvgPicture.asset(AppIcons.arrowBack),
      ItemDetailesText(
        textStyle: textStyle(
            16, AppColors.backgroundColor, FontWeight.w600, title, 1.2, 0),
      ),
      isDetail ? SvgPicture.asset(AppIcons.heart) : Container(),
    ]);
  }
}
