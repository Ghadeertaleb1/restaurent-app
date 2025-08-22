import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/images.dart';
import 'package:flutter_application_1/core/shared/asset_image_widget.dart';
import 'package:flutter_application_1/core/shared/shared_style.dart';
import 'package:flutter_application_1/home/view/components/button_add_item.dart';
import 'package:flutter_application_1/core/shared/item_detailes_text_align.dart';
import 'package:flutter_application_1/home/view/components/rate_widget.dart';

class CatogarysItem extends StatelessWidget {
  const CatogarysItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [sharedShadow()],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 140 / 128, // width / height
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: ImageAssetWidget(
                      fit: BoxFit.cover,
                      imagePath: ImagesApp.catogary,
                    )),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  alignment: Alignment.center,
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
                  child: const RateWidget(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ItemDetailesTextAlign(
            text: customText(
              16,
              AppColors.backgroundColor,
              FontWeight.w600,
              "Cappuccino",
              1.5,
              0,
              TextAlign.center,
            ),
          ),
          const SizedBox(height: 4),
          ItemDetailesTextAlign(
            text: customText(
              12,
              AppColors.lighterGreyColor,
              FontWeight.w600,
              "With Cream",
              1.2,
              0,
              TextAlign.center,
            ),
          ),
          const SizedBox(height: 8),
          const ButtonAddItem(),
        ],
      ),
    );
  }
}
