import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/shared.dart';
import 'package:flutter_application_1/home/view/components/button_add_item.dart';
import 'package:flutter_application_1/home/view/components/item_detailes_tect.dart';
import 'package:flutter_application_1/home/view/components/rate_widget.dart';

class CatogarysItem extends StatelessWidget {
  const CatogarysItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 156,
      height: 238,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [sharedShadow()],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 128,
            width: 140,
            child: Stack(children: [
              Positioned.fill(
                child: Image.asset(
                  "asset/images/catogarytest.png",
                  fit: BoxFit.cover,
                  // width: 140,
                  // height: 128,
                ),
              ),
              Positioned.fill(
                  top: 0,
                  right: 0,
                  left: 89,
                  bottom: 100,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(
                      left: 9,
                    ),
                    width: 51,
                    height: 28,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xff111111).withOpacity(0.6),
                          const Color(0xff313131).withOpacity(0.8),
                        ],
                        stops: const [0.0, 0.3],
                        begin: Alignment.topRight,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          topRight: Radius.circular(12)),
                    ),
                    child: RateWidget(),
                  ))
            ]),
          ),
          const SizedBox(
            height: 8,
          ),
          ItemDetailesText(
            textStyle: textStyle(16, AppColors.backgroundColor, FontWeight.w600,
                "Cappuccino", 1.5, 0),
          ),
          const SizedBox(
            height: 4,
          ),
          ItemDetailesText(
            textStyle: textStyle(12, AppColors.lighterGreyColor,
                FontWeight.w600, "With Cream", 1.2, 0),
          ),
          const SizedBox(
            height: 8,
          ),
          const ButtonAddItem()
        ],
      ),
    );
  }
}
