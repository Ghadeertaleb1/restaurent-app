import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/core/shared/shared_style.dart';
import 'package:flutter_application_1/detail/view/components/button_widget.dart';
import 'package:flutter_application_1/core/shared/item_detailes_text_align.dart';

class BuyNowWidget extends StatelessWidget {
  const BuyNowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: 24,
        ),
        padding: EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 25),
        width: double.infinity,
        height: 118,
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
            ItemDetailesTextAlign(
              text: customText(14, AppColors.lighterGreyColor,
                  FontWeight.normal, "Price", 1.2, 0, TextAlign.center),
            ),
            ItemDetailesTextAlign(
                text: customText(18, AppColors.buttonColor, FontWeight.w600,
                    "\$1.23", 1.5, 0, TextAlign.center)),
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
