import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/shared.dart';
import 'package:flutter_application_1/detail/view/components/button_widget.dart';
import 'package:flutter_application_1/home/view/components/item_detailes_tect.dart';

class BuyNowWidget extends StatelessWidget {
  const BuyNowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        padding: EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 25),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: AppColors.white, blurRadius: 4, offset: Offset(0, 4))
          ],
          color: AppColors.white,
        ),
        child: Row(children: [
          Column(children: [
            ItemDetailesText(
                textStyle: textStyle(14, AppColors.lighterGreyColor,
                    FontWeight.normal, "Price", 1.2, 0)),
            ItemDetailesText(
                textStyle: textStyle(18, AppColors.buttonColor, FontWeight.w600,
                    "\$1.23", 1.5, 0))
          ]),
          Spacer(),
          Column(children: [
            ButtonWidget(
              height: 56,
              width: 217,
              text: "Buy Now",
              onTap: () {},
            ),
          ])
        ]));
  }
}
