import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/icons.dart';
import 'package:flutter_application_1/constant/images.dart';
import 'package:flutter_application_1/constant/text.dart';
import 'package:flutter_application_1/core/shared/appBar.dart';
import 'package:flutter_application_1/core/shared/shared_style.dart';
import 'package:flutter_application_1/detail/view/components/buy_now_widget.dart';
import 'package:flutter_application_1/detail/view/components/obtion_container.dart';
import 'package:flutter_application_1/detail/view/components/rich_text.dart';
import 'package:flutter_application_1/detail/view/components/size_container.dart';
import 'package:flutter_application_1/home/view/components/banner.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
          child: Column(children: [
            CustomAppBar(
              isDetail: true,
              title: "Detail",
            ),
            SizedBox(
              height: 24,
            ),
            HomeBanner(
              image: ImagesApp.catogary,
              isDetail: true,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                mainTextStyle(20, "Caffe Mocha", AppColors.backgroundColor),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ice/Hot",
                  style: secondTextStyle(1.5, FontWeight.normal, 14),
                ),
                Row(
                  children: List.generate(3, (index) {
                    return ObtionContainer(
                      index: index,
                    );
                  }),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(AppIcons.star),
                SizedBox(
                  width: 4,
                ),
                RichTextWidget(
                    text1: "4.8",
                    text2: "(1000)",
                    textStyle1: GoogleFonts.sora(
                        letterSpacing: 0.2,
                        height: 0,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColors.backgroundColor),
                    textStyle2: secondTextStyle(1.5, FontWeight.normal, 14))
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Divider(
              color: AppColors.normalActiveGreyColor,
            ),
            SizedBox(
              height: 16,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: mainTextStyle(
                    20, TextApp.description, AppColors.backgroundColor)),
            SizedBox(
              height: 8,
            ),
            RichTextWidget(
                text1: TextApp.description2,
                text2: TextApp.readMore,
                textStyle1: secondTextStyle(1.5, FontWeight.normal, 14),
                textStyle2: GoogleFonts.sora(
                  letterSpacing: 0,
                  height: 1.5,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: AppColors.buttonColor,
                )),
            SizedBox(
              height: 24,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: mainTextStyle(20, "Size", AppColors.backgroundColor)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return SizeContainer();
              }),
            ),
          ]),
        ),
        Spacer(),
        BuyNowWidget()
      ],
    )));
  }
}
