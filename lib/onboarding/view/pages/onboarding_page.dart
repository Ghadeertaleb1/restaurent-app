import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

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
            SizedBox(
              width: double.infinity,
              height: 500,
              child: Image.asset(
                "images/onboarding.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 452,
                child: Container(
                    color: AppColors.backgroundColor.withOpacity(0.5),
                    height: 360,
                    width: 375,
                    child: Column(
                      children: [
                        Text("Fall in Love with\n Coffee in Blissful\nDelight!",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sora(
                              letterSpacing: 0.5,
                              fontSize: 32,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondaryColor,
                            )),
                        const SizedBox(height: 8),
                        Text(
                            "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sora(
                              letterSpacing: 1,
                              fontSize: 14,
                              height: 1.5,
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryColor,
                            )),
                        Container(
                          height: 56,
                          width: 327,
                          decoration: BoxDecoration(
                              color: AppColors.buttonColor,
                              borderRadius: BorderRadius.circular(16)),
                          margin: const EdgeInsets.only(
                              top: 32, left: 24, right: 24),
                          child: Center(
                              child: Text("Get Started",
                                  style: GoogleFonts.sora(
                                    letterSpacing: 0,
                                    height: 1.5,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.secondaryColor,
                                  ))),
                        )
                      ],
                    )))
          ],
        ),
      )),
    );
  }
}
