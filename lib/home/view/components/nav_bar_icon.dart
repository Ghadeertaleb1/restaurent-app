import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarIcon extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function() onTap;
  final String url;
  const NavBarIcon({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          SvgPicture.asset(
            url,
          )
          // SizedBox(
          //   height: 6,
          // ),
          // if (isSelected)
          //   Container(
          //     height: 5,
          //     width: 10,
          //     decoration: BoxDecoration(
          //       color: AppColors.buttonColor,
          //       borderRadius: BorderRadius.circular(18),
          //     ),
          //   )
        ],
      ),
    );
  }
}
