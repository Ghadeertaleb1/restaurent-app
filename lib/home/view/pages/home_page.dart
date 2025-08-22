import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/core/shared/shared_style.dart';
import 'package:flutter_application_1/home/view/components/banner.dart';
import 'package:flutter_application_1/home/view/components/bottom_nav_bar.dart';
import 'package:flutter_application_1/home/view/components/catogary_holder.dart';
import 'package:flutter_application_1/home/view/components/custom_tab_bar.dart';
import 'package:flutter_application_1/home/view/components/location.dart';
import 'package:flutter_application_1/home/view/components/main_home_container.dart';
import 'package:flutter_application_1/home/view/components/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: const BottomNavBar(),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: Stack(children: [
                MainHomeContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(
                          12,
                          AppColors.lighterGreyColor,
                          FontWeight.normal,
                          "Location",
                          1.2,
                          1,
                          TextAlign.start),
                      const SizedBox(
                        height: 8,
                      ),
                      const Location(),
                      const CustopmSearchBar(),
                    ],
                  ),
                ),
                const Positioned(
                    top: 290,
                    left: 24,
                    right: 24,
                    child: HomeBanner(
                      isDetail: false,
                      image: "asset/images/Banner.png",
                    ))
              ]),
            ),
            const CustomTabBar(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: const TabBarView(children: [
                CatogarysHolder(),
                CatogarysHolder(),
                CatogarysHolder(),
                CatogarysHolder(),
              ]),
            )
          ]),
        ),
      ),
    ));
  }
}
