import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/shared.dart';
import 'package:flutter_application_1/shared/widgets/appBar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.only(top: 20, left: 24, right: 24, bottom: 24),
      child: Column(
        children: [
          CustomAppBar(
            isDetail: false,
            title: "Order",
          ),
          SizedBox(height: 24),
          SizedBox(width: 327, height: 43, child: Placeholder()),
          SizedBox(height: 24),
          Align(
              alignment: Alignment.centerLeft,
              child: mainTextStyle(
                  16, "Delivery Address", AppColors.backgroundColor)),
          SizedBox(height: 16),
          Align(
              alignment: Alignment.centerLeft,
              child: mainTextStyle(
                  14, "Jl. Kpg Sutoyo", AppColors.backgroundColor)),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                style: secondTextStyle(1.2, FontWeight.normal, 12),
              )),
          SizedBox(height: 16),
          InkWell(
            child: Container(
              height: 26,
              width: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16),
                  border:
                      Border.all(color: AppColors.lighterGreyColor, width: 1),
                  boxShadow: [
                    sharedShadow(),
                  ]),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "asset/icons/editSquare.svg",
                    width: 10.99,
                    height: 11.01,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Edit Address",
                    style: secondTextStyle(1.2, FontWeight.normal, 12),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    )));
  }
}
