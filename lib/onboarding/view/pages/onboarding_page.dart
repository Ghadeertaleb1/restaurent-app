import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/images.dart';
import 'package:flutter_application_1/constant/text.dart';
import 'package:flutter_application_1/core/shared/asset_image_widget.dart';
import 'package:flutter_application_1/core/shared/custom_buttton.dart';
import 'package:flutter_application_1/core/shared/shared_style.dart';
import 'package:flutter_application_1/onboarding/controller/on_boarding_bloc.dart';
import 'package:flutter_application_1/onboarding/controller/on_boarding_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingBage extends StatelessWidget {
  const OnBoardingBage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 500,
              child: ImageAssetWidget(
                imagePath: ImagesApp.onboarding,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 452,
                left: 24,
                right: 24,
                child: Container(
                    color: AppColors.backgroundColor.withOpacity(0.5),
                    height: 360,
                    width: 375,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customText(
                            32,
                            AppColors.secondaryColor,
                            FontWeight.w600,
                            TextApp.onBoardingTitle,
                            1.5,
                            0.5,
                            TextAlign.center),
                        const SizedBox(height: 8),
                        customText(
                            14,
                            AppColors.secondaryColor,
                            FontWeight.w400,
                            TextApp.onBoardingSubtitle,
                            1.5,
                            1,
                            TextAlign.center),
                        const SizedBox(height: 32),
                        CustomButton(
                          text: "Get Started",
                          onPressed: () {
                            context
                                .read<OnBoardingBloc>()
                                .add(OnBoardingNextEvent());
                          },
                        )
                      ],
                    )))
          ],
        ),
      )),
    );
  }
}
